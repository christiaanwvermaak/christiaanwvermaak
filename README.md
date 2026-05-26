# Christiaan "Wimpie" Vermaak

**Software Architect · Founder, CW Vermaak Informatics**
Johannesburg, South Africa

[cwvermaak.dev](https://www.cwvermaak.dev) — *personal & dev blog* · [cwvinfo.com](https://cwvinfo.com) — *consultancy* · [weldforge.org](https://weldforge.org) — *product* · [LinkedIn](https://www.linkedin.com/in/cwvermaak/)

---

## What I do

I architect resilient systems where development, infrastructure, and quality assurance intersect. My focus areas are identity and access management, multi-tenant SaaS architecture, and the audit discipline that keeps both honest.

I run **CW Vermaak Informatics**, and across the practice I work the full delivery lifecycle:

- **Lead Architect** — *Safe Space (TechMetropolis)*
- **DevOps Engineer** — *Hertex*
- **Developer** — *Ubuntu Finance & Mumba Money* (cross-border remittance to Malawi and Zimbabwe)
- **QA Engineer** — *Sleek Accounting*

> *Heritage in judgement. Modern in method.*

## Building

### [WeldForge](https://weldforge.org) — *one identity forge for every application you ship*

A multi-tenant federated identity platform: a single Spring Boot binary that speaks every protocol your applications already know.

- **OIDC issuer** — per-tenant signing keys
- **SAML 2.0** — both SP and IdP roles
- **SCIM 2.0** — inbound and outbound, Users and Groups
- **MFA** — TOTP, WebAuthn, SMS OTP, backup codes
- **Internal PKI** — per-tenant CA, CRL, OCSP, mTLS
- **Audit webhooks** — HMAC-signed, retry queue, dead-letter
- **Scoped API keys + service accounts** for M2M
- **Multi-tenant from the database up** — every query tenant-scoped

Stack: Java 21 · Spring Boot 3.3.5 · PostgreSQL · GKE · Resilience4j · Prometheus.
POPIA-aware data residency. Source-available.

### Wellspring — outreach & visitor management *(pro-bono)*

A non-commercial platform supporting community outreach programmes — blood drives, health days, and similar. Spring Boot backend, Flutter app, Tina4 Python dashboard, with WeldForge as the identity layer. Built TDD + BDD throughout.

Wellspring is not for sale. If you'd like to support the work, donations are welcomed.

### App-iary — *online.app-iary*

The product line under which I ship consumer and education software, hosted on a single MicroK8s + FluxCD platform with cert-manager, Keycloak, and shared Postgres/Mongo/MinIO services.

- **Write-Buddy** — a Flutter application that helps preschoolers develop fine-motor skills and learn to write, progressing from geometric shapes through block letters to cursive and traced words. Spring Boot resource-server backend, OIDC-authenticated against WeldForge.
- Additional App-iary properties (etios.io, agile-admin, boland-pvc, carbonah-website, etios-fxcm) run on the same GitOps-managed infrastructure.

### In development

- **Intelli-Accounting** — multi-tenant SaaS accounting platform for South African SSMEs. Country-pluggable (ZA-VAT, SARS-aligned CoA), one ledger across web/desktop/mobile/POS, OIDC RP against WeldForge. MVP-1 spec ratified April 2026.

### [CW Vermaak Informatics](https://cwvinfo.com)

Consultancy site and entry point — services, approach, industries delivered.

## Working across

- **Java / Spring Boot** — product backends
- **PHP / Tina4** — marketing sites and internal portals
- **Python / Tina4 MVC** — internal applications, automation, bots
- **Flutter** — mobile
- **PostgreSQL · Flyway · Docker · Kubernetes** — every project
- **Keycloak** (client work) and **WeldForge** (own products) for identity
- **Robot Framework BDD** for QA engagements

## Other / utilities

- **whatsapp-bot** — Tina4-Python bot that replaces WhatsApp broadcast lists (now capped at 35/month) via the Meta WhatsApp Cloud API. Subscriber lists, opt-in flows, background worker.
- **db-converter** — small PHP utility for ad-hoc database conversions.

## Currently studying

Returning to **Applied Mathematics** — bringing analytical rigor to security-protocol design and reliability modelling.

## Languages

English · Afrikaans

---

*Read my dev notes at [cwvermaak.dev](https://www.cwvermaak.dev), engage the consultancy at [cwvinfo.com](https://cwvinfo.com), or learn more about [WeldForge](https://weldforge.org).*
