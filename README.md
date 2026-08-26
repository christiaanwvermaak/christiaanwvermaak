# Christiaan "Wimpie" Vermaak

**Software Architect · Johannesburg, South Africa**

I run two complementary practices: **CW Vermaak Consulting** — secure software, identity and multi-tenant SaaS — and **CW Vermaak Informatics** — machine learning and AI.

[cwvermaak.co.za](https://www.cwvermaak.co.za) — *consultancy (software & security)* · [cwvinfo.com](https://cwvinfo.com) — *informatics (ML & AI)* · [weldforge.org](https://weldforge.org) — *product* · [cwvermaak.dev](https://www.cwvermaak.dev) — *dev blog* · [LinkedIn](https://www.linkedin.com/in/cwvermaak/)

> *Heritage in judgement. Modern in method.*

---

## What I do

I architect resilient systems where development, infrastructure, and quality assurance intersect — and, increasingly, where applied intelligence meets them. My work splits cleanly across two practices.

---

## CW Vermaak Consulting *(Pty) Ltd — software & security*

Secure, multi-tenant software for teams whose systems can't afford to be breached, leaked, or brought down. Focus areas: **identity and access management, zero-knowledge and applied cryptography, multi-tenant SaaS architecture, DevOps & platform engineering, and audit-grade QA.**

### Client engagements — full delivery lifecycle

- **Lead Architect** — *Tech Metropolis* (the Safe Space / Krusty / Commentalk app ecosystem)

---

## Code Infinity *(Pty) Ltd — contract*

**Software Engineer & DevOps Engineer** · *Nov 2025 – present · Johannesburg, remote*

Development and DevOps across the client portfolio, in Code Infinity's delivery
teams rather than as a CW Vermaak Consulting engagement. Those client
relationships are Code Infinity's, so they are not listed here.

### Platforms & product IP

#### [WeldForge](https://weldforge.org) — *one identity forge for every application you ship*

A multi-tenant federated identity platform: a single Spring Boot binary that speaks every protocol your applications already know.

- **OIDC issuer** — per-tenant signing keys
- **SAML 2.0** — both SP and IdP roles
- **SCIM 2.0** — inbound and outbound, Users and Groups
- **MFA** — TOTP, WebAuthn, SMS OTP, backup codes
- **Internal PKI** — per-tenant CA, CRL, OCSP, mTLS
- **Audit webhooks** — HMAC-signed, retry queue, dead-letter
- **Scoped API keys + service accounts** for M2M
- **Multi-tenant from the database up** — every query tenant-scoped

Stack: Java 21 · Spring Boot 3.3.5 · PostgreSQL · Kubernetes · Resilience4j · Prometheus. POPIA-aware data residency. Licensed under the Business Source License 1.1, with a documented self-hosting path (Docker Compose or Helm).

#### KeyCrypt — *zero-knowledge secrets, human and machine*

An enterprise password and DevOps-secrets platform built on a triple-key, zero-knowledge encryption model — the server never sees plaintext. Human credentials and machine secrets live in one vault, federated to WeldForge for identity. Browser extension, desktop, mobile, and admin console; database-per-service microservices on Kubernetes.

Stack: Java 21 · Spring Boot 3.3.x · PostgreSQL 18 · Flyway · OIDC (WeldForge) · BDD/TDD with Cucumber.

#### NoteForge — *offline-first, zero-knowledge notes*

A secure note-taking platform where encryption and decryption happen entirely on the client — the server stores only ciphertext. Offline-first sync, zero-knowledge sharing via X25519 key exchange, Argon2id + AES-GCM-256, and one Flutter codebase across web, mobile, and desktop.

Stack: Flutter · Spring Boot (Java 25) · OIDC/PKCE (WeldForge).

#### [IntelliSuite](https://intellisuite.app) — *business software for South African SSMEs*

One platform, one login, and one set of books across the tools a small business actually runs on. Built on a shared backend spine (gateway + account/entitlements service) with WeldForge for identity, the suite is country-pluggable and SARS-aligned, POPIA-aware from the database up.

- **Intelli-Accounting** *(flagship, in development)* — multi-tenant accounting: ZA-VAT, SARS-aligned chart of accounts, one ledger across web / desktop / mobile / POS. MVP-1 spec ratified April 2026.
- **Intelli-Invoicing · Intelli-Payroll · Intelli-POS** — planned sibling apps sharing the same identity, billing, and entitlement spine.

Stack: Java 21/25 · Spring Boot 3.5.x · PostgreSQL · Flyway · OIDC (WeldForge) · BDD/TDD.

#### App-iary — the Buddy Suite *(app-iary.online)*

A consumer/education product line on a single MicroK8s + FluxCD platform with cert-manager, WeldForge identity, and shared Postgres/Mongo/MinIO services. **Write-Buddy** has grown into a four-app early-childhood **Buddy Suite** on one shared backend:

- **Write-Buddy** — fine-motor skills and handwriting (shapes → block letters → cursive → traced words)
- **Maths-Buddy** — number sense, facts, and times-tables
- **Memory-Buddy** — vocabulary and flash-card recall
- **Music-Buddy** — theory, instruments, and graded repertoire

One identity, one family roster, and a shared mastery / spaced-repetition engine across all four — mastery-paced (never age-gated), serving both formally-schooled and home-schooled children. Spring Boot resource servers behind a Spring Cloud Gateway, OIDC-authenticated against WeldForge.

> Additional App-iary properties (etios.io, agile-admin, boland-pvc, carbonah-website, etios-fxcm) run on the same GitOps-managed infrastructure.

#### Wellspring — outreach & visitor management *(pro-bono)*

A non-commercial platform supporting community outreach programmes — blood drives, health days, and similar. Spring Boot backend, Flutter app, Tina4 Python dashboard, with WeldForge as the identity layer. Built TDD + BDD throughout. Wellspring is not for sale; donations to support the work are welcomed.

---

## CW Vermaak Informatics *— machine learning & AI*

Applied intelligence: machine learning, AI, and analytics, grounded in the same engineering rigour as the consultancy — and in a return to applied mathematics.

- **Deep-tech R&D** — co-developing an early-stage venture in **quantum control and machine intelligence** (provisional patent filed).
- **Applied ML & analytics** — a unifying analytics engine underpinning the cross-device tooling below, and applied machine-learning engagements.

> Informatics is the home for all ML/AI and analytics work; the software, identity and SaaS platforms above belong to CW Vermaak Consulting.

---

## Also in development

- **Cross-device tooling** — screen-mirroring Android and iOS devices onto Windows, Linux, and macOS, plus seamless keyboard-and-mouse sharing across machines (macOS / Windows / Linux). *(Systems tooling under Consulting; its analytics/intelligence layer feeds Informatics.)*

## Working across

- **Java / Spring Boot** — product backends
- **PHP / Tina4** — marketing sites and internal portals
- **Python / Tina4 MVC** — internal applications, automation, bots (and the ML/AI toolchain)
- **Flutter** — mobile
- **PostgreSQL · Flyway · Docker · Kubernetes** — every project
- **Keycloak** (client work) and **WeldForge** (own products) for identity
- **Robot Framework BDD** for QA engagements

## Other / utilities

- **whatsapp-bot** — Tina4-Python bot that replaces WhatsApp broadcast lists (now capped at 35/month) via the Meta WhatsApp Cloud API. Subscriber lists, opt-in flows, background worker.
- **db-converter** — small PHP utility for ad-hoc database conversions.

## Currently studying

Returning to **Applied Mathematics** — bringing analytical rigor to security-protocol design and reliability modelling (Consulting), and to the ML/AI and deep-tech work (Informatics).

## Languages

English · Afrikaans

---

*Engage the consultancy at [cwvermaak.co.za](https://www.cwvermaak.co.za), the informatics practice at [cwvinfo.com](https://cwvinfo.com), read my dev notes at [cwvermaak.dev](https://www.cwvermaak.dev), or learn more about [WeldForge](https://weldforge.org).*
