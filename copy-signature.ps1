<#
.SYNOPSIS
    Copies a Gmail signature to the clipboard as real rich text (CF_HTML).

.DESCRIPTION
    Gmail's signature editor pastes formatted content only if the clipboard carries the
    CF_HTML format. Set-Clipboard writes plain text, so pasting from it shows raw tags.
    This script wraps the HTML in a correct CF_HTML header (with byte offsets) and also
    puts a plain-text fallback on the clipboard for plain-text targets.

    Clipboard access needs an STA thread, so run this with Windows PowerShell:
        powershell.exe -STA -ExecutionPolicy Bypass -File copy-signature.ps1 -Which primary

.PARAMETER Which
    primary      = CW Vermaak Consulting signature (default)
    informatics  = CW Vermaak Informatics signature
#>
[CmdletBinding()]
param(
    [ValidateSet('primary', 'informatics')]
    [string]$Which = 'primary'
)

$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.Windows.Forms

$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$htmlPath = Join-Path $here "signature-$Which.html"
if (-not (Test-Path -LiteralPath $htmlPath)) { throw "Not found: $htmlPath" }

$fragment = (Get-Content -LiteralPath $htmlPath -Raw).Trim()

# The HTML files are deliberately pure ASCII (entities for the em dash, quotes and
# middle dot) because WinForms does not reliably round-trip non-ASCII through CF_HTML.
if ($fragment -match '[^\x00-\x7F]') {
    Write-Warning 'HTML contains non-ASCII characters; these may be mangled on paste. Use entities instead.'
}

$header = "Version:0.9`r`nStartHTML:{0:D10}`r`nEndHTML:{1:D10}`r`nStartFragment:{2:D10}`r`nEndFragment:{3:D10}`r`n"
$open   = "<html><body>`r`n<!--StartFragment-->"
$close  = "<!--EndFragment-->`r`n</body></html>"

$utf8 = [System.Text.Encoding]::UTF8
$headerLen     = $utf8.GetByteCount(($header -f 0, 0, 0, 0))
$startHtml     = $headerLen
$startFragment = $headerLen + $utf8.GetByteCount($open)
$endFragment   = $startFragment + $utf8.GetByteCount($fragment)
$endHtml       = $endFragment + $utf8.GetByteCount($close)

$cfHtml = ($header -f $startHtml, $endHtml, $startFragment, $endFragment) + $open + $fragment + $close

# Plain-text fallback: break only on block ends, strip inline tags, collapse entities.
$plain = $fragment -replace '(?s)</div>', "`n" -replace '(?s)<[^>]+>', ''
$plain = $plain -replace '&#8212;', [char]0x2014 -replace '&#8220;', [char]0x201C `
                        -replace '&#8221;', [char]0x201D -replace '&#183;', [char]0x00B7 `
                        -replace '&nbsp;', ' ' -replace '&amp;', '&'
$plain = ($plain -split "`n" | ForEach-Object { $_.Trim() } | Where-Object { $_ }) -join "`r`n"

$data = New-Object System.Windows.Forms.DataObject
$data.SetData([System.Windows.Forms.DataFormats]::Html, $cfHtml)
$data.SetData([System.Windows.Forms.DataFormats]::UnicodeText, $plain)
[System.Windows.Forms.Clipboard]::SetDataObject($data, $true)

Write-Host "Copied '$Which' signature to the clipboard as rich text (CF_HTML)."
Write-Host 'Paste into Gmail: Settings > See all settings > General > Signature, then Ctrl+V.'
