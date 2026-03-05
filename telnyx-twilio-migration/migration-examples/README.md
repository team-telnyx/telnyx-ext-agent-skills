# Migration Examples

This directory contains example migrations from Twilio to Telnyx for 15 real-world applications.

**Location:** `~/migration-examples/` (outside this repo due to size)

## Structure

```
~/migration-examples/
├── python-flask/
│   ├── sms2fa-flask/
│   │   ├── sms2fa-flask-twilio/     # Original from TwilioDevEd
│   │   ├── sms2fa-flask-telnyx/     # Migrated version
│   │   └── README.md                # Side-by-side comparison
│   ├── clicktocall-flask/
│   ├── ivr-phone-tree-python/
│   ├── authy2fa-flask/
│   └── airtng-masked-numbers-flask/
├── nodejs/
│   ├── ivr-phone-tree-node/
│   ├── browser-calls-node/
│   └── ivr-recording-node/
├── ruby/
│   ├── account-verification-rails/
│   └── anonymous-communications-rails/
├── java/
│   └── account-security-quickstart-spring/
└── django/
    ├── automated-survey-django/
    ├── call-tracking-django/
    ├── appointment-reminders-django/
    └── ivr-recording-django/
```

## Quick Access

Each app includes:
- **Original:** Cloned from https://github.com/TwilioDevEd/{repo-name}
- **Migrated:** Copied from ~/twilio-test-repos/{repo-name} after blind testing
- **README:** Side-by-side code comparisons and migration notes

## Status

| App | Language | Product | Status |
|-----|----------|---------|--------|
| sms2fa-flask | Python | SMS/2FA | ✅ Complete |
| clicktocall-flask | Python | Voice | ✅ Complete |
| ivr-phone-tree-python | Python | Voice/IVR | ✅ Complete |
| authy2fa-flask | Python | Verify/2FA | ✅ Complete |
| airtng-masked-numbers-flask | Python | Voice/SMS | ✅ Complete |
| ivr-phone-tree-node | Node.js | Voice/IVR | ✅ Complete |
| browser-calls-node | Node.js | WebRTC | ✅ Complete |
| ivr-recording-node | Node.js | Voice/Recording | ✅ Complete |
| account-verification-rails | Ruby | Verify/2FA | ✅ Complete |
| anonymous-communications-rails | Ruby | Voice/SMS | ✅ Complete |
| account-security-quickstart-spring | Java | Verify/Security | ✅ Complete |
| automated-survey-django | Python/Django | Voice/Survey | ✅ Complete |
| call-tracking-django | Python/Django | Voice/SMS | ✅ Complete |
| appointment-reminders-django | Python/Django | SMS | ✅ Complete |
| ivr-recording-django | Python/Django | Voice/Recording | ✅ Complete |

## Size Warning

Total size: ~1.8GB (includes full git histories of Twilio repos)

## To View

Navigate to the directory on the host:
```bash
cd ~/migration-examples/
```
