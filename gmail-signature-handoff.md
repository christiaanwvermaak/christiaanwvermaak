# Handoff — Gmail signature update

**For:** Gemini (Google Workspace / Gmail)
**Subject:** Replace the current Gmail signature for Christiaan "Wimpie" Vermaak
**Prepared:** 6 August 2026

---

## 1. Task

Update the Gmail signature(s) on the account for **Christiaan Wilhelm (Wimpie) Vermaak**.
There are two signatures to create: a **primary** (default for all mail) and a **secondary**
for the machine-learning practice. Then set the send/reply defaults.

Everything you need is in this document. Do not invent titles, companies, phone numbers or
URLs beyond what is written here.

---

## 2. Current signature (to be replaced)

```
Christiaan Wilhelm (Wimpie) Vermaak

Software Architect • DevOps • Quality Assurance

M: +27 82 809 8736

LinkedIn | GitHub

"Quality is not an act, it is a habit." — Aristotle
```

### Why it is changing

1. It attributes him to **no company**. He now runs two registered practices.
2. It links to **none of his own sites**, only third-party profiles.
3. The title order and the Aristotle quote read as *senior QA engineer who also architects*.
   His actual current work is identity/security architecture first, DevOps second, QA third.

---

## 3. Signature A — PRIMARY (default)

Use this for all mail unless the message is about machine learning / AI.

### Plain text

```
Christiaan Wilhelm (Wimpie) Vermaak
Software Architect — Identity, Secure Software & Multi-Tenant SaaS
CW Vermaak Consulting (Pty) Ltd · Johannesburg, South Africa

M: +27 82 809 8736
cwvermaak.co.za | weldforge.org | LinkedIn | GitHub

"Heritage in judgement. Modern in method."
```

### Formatting instructions

| Element | Instruction |
|---|---|
| Line 1 — name | **Bold.** Slightly larger than body text if the editor allows (Gmail: "Large"). |
| Line 2 — title | Normal weight. The dash is an em dash `—`, not a hyphen. |
| Line 3 — company | Normal weight, grey (`#6B7280`) if colour is available. The separator is a middle dot `·`. |
| Blank line | Keep it. Do not collapse the block into one paragraph. |
| `M:` line | Plain text. Do **not** let Gmail auto-link the number; keep it as text. |
| Links line | Four hyperlinks separated by ` \| ` (space-pipe-space). See URL table below. |
| Quote | *Italic*, grey (`#6B7280`), smaller than body text if available. Keep the double quotes. |

### Hyperlink targets

| Anchor text | URL |
|---|---|
| `cwvermaak.co.za` | `https://www.cwvermaak.co.za` |
| `weldforge.org` | `https://weldforge.org` |
| `LinkedIn` | `https://www.linkedin.com/in/cwvermaak/` |
| `GitHub` | `https://github.com/christiaanwvermaak` |

### Notes on wording — do not paraphrase

- **"Identity, Secure Software & Multi-Tenant SaaS"** is the deliberate new positioning. It
  reflects the current portfolio: WeldForge (federated identity platform — OIDC/SAML/SCIM),
  KeyCrypt and NoteForge (zero-knowledge cryptography), IntelliSuite and the App-iary Buddy
  Suite (multi-tenant SaaS).
- **"Heritage in judgement. Modern in method."** is his own line, already used on his LinkedIn
  profile and README. It carries a 30-year career span without pinning him to QA. It replaces
  the Aristotle quote. **Do not substitute a different quotation.**
- **"(Pty) Ltd"** is correct for CW Vermaak Consulting. Do **not** add it to CW Vermaak
  Informatics — that entity is not a (Pty) Ltd.

---

## 4. Signature B — INFORMATICS (secondary)

Use only for machine-learning, AI, analytics and research correspondence.

### Plain text

```
Christiaan Wilhelm (Wimpie) Vermaak
Machine Learning, AI & Applied Research
CW Vermaak Informatics · Johannesburg, South Africa

M: +27 82 809 8736
cwvinfo.com | LinkedIn | GitHub

"Heritage in judgement. Modern in method."
```

Same formatting rules as Signature A.

### Hyperlink targets

| Anchor text | URL |
|---|---|
| `cwvinfo.com` | `https://cwvinfo.com` |
| `LinkedIn` | `https://www.linkedin.com/in/cwvermaak/` |
| `GitHub` | `https://github.com/christiaanwvermaak` |

---

## 5. Alternative line 2 — his choice, not yours

If he tells you he prefers to keep the delivery breadth visible for client mail, swap **only
line 2** of Signature A for:

```
Software Architect — Secure Software · DevOps · Quality Engineering
```

Note "Quality **Engineering**", not "Quality Assurance" — same signal, current vocabulary.
Do not use this variant unless he asks for it.

---

## 6. Gmail settings to apply

1. **Settings → See all settings → General → Signature.**
2. Create signature named `Primary` with Signature A. Create `Informatics` with Signature B.
3. Under **Signature defaults**:
   - *For new emails use:* `Primary`
   - *On reply/forward use:* `Primary`
4. Tick **"Insert signature before quoted text in replies and remove the `--` line that
   precedes it."** This keeps the signature directly under his reply rather than at the bottom
   of a long thread.
5. If the account has a send-as alias tied to the Informatics domain, set that alias's default
   signature to `Informatics`.
6. **Mobile:** the Gmail Android/iOS apps keep a separate, plain-text-only mobile signature.
   Set it to the first three lines of Signature A plus the phone number — no links, no quote.

---

## 7. Constraints — important

- **Do not mention the Tofara / quantum-control venture or the provisional patent** in any
  signature. That work is confidential and shared on a teaser-only basis. A default signature
  goes to every recipient.
- **Do not add client or engagement names** to the signature. Some are under confidentiality;
  the signature stays at the practice level only.
- **Do not add a logo image.** Image signatures break in plain-text clients and get stripped by
  mailing lists. If he later wants one, the source file is `CWVermaak/coza/brand/logo.svg`.
- **Do not add a confidentiality disclaimer** unless he explicitly asks. He has not asked.
- Keep both signatures **under 8 lines**. Length is the most common signature failure.

---

## 8. Verification

After applying, confirm by sending a test message to himself and checking:

- [ ] All four links resolve (no `http://` — all four are HTTPS)
- [ ] The em dash on line 2 renders as `—`, not `â€"` (encoding check)
- [ ] The phone number has **not** been auto-converted into a `tel:` link with odd styling
- [ ] The signature appears **above** the quoted text on a reply
- [ ] It renders correctly in dark mode — grey `#6B7280` is chosen to be legible on both
      light and dark backgrounds; do not change it to a lighter grey

---

## 9. Source of truth

The canonical profile copy this signature is derived from:

- `C:\dev\profile\christiaanwvermaak\README.md`
- `C:\dev\profile\christiaanwvermaak\linkedin.md`

If those files and this handoff ever disagree, **those files win** — they are kept current
against the working repositories in `C:\dev`.
