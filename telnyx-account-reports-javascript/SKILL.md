---
name: telnyx-account-reports-javascript
description: >-
  Generate and retrieve usage reports for billing, analytics, and
  reconciliation. This skill provides JavaScript SDK examples.
metadata:
  author: telnyx
  product: account-reports
  language: javascript
---

# Telnyx Account Reports - JavaScript

## Installation

```bash
npm install telnyx
```

## Get all MDR detailed report requests

`GET /legacy_reporting/batch_detail_records/messaging`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const messagings = await client.legacy.reporting.batchDetailRecords.messaging.list();

console.log(messagings.data);
```

## Create a new MDR detailed report request

`POST /legacy_reporting/batch_detail_records/messaging`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const messaging = await client.legacy.reporting.batchDetailRecords.messaging.create({
  end_time: '2024-02-12T23:59:59Z',
  start_time: '2024-02-01T00:00:00Z',
});

console.log(messaging.data);
```

## Get a specific MDR detailed report request

`GET /legacy_reporting/batch_detail_records/messaging/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const messaging = await client.legacy.reporting.batchDetailRecords.messaging.retrieve(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(messaging.data);
```

## Delete a MDR detailed report request

`DELETE /legacy_reporting/batch_detail_records/messaging/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const messaging = await client.legacy.reporting.batchDetailRecords.messaging.delete(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(messaging.data);
```

## Get all CDR report requests

`GET /legacy_reporting/batch_detail_records/voice`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const voices = await client.legacy.reporting.batchDetailRecords.voice.list();

console.log(voices.data);
```

## Create a new CDR report request

`POST /legacy_reporting/batch_detail_records/voice`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const voice = await client.legacy.reporting.batchDetailRecords.voice.create({
  end_time: '2024-02-12T23:59:59Z',
  start_time: '2024-02-01T00:00:00Z',
});

console.log(voice.data);
```

## Get a specific CDR report request

`GET /legacy_reporting/batch_detail_records/voice/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const voice = await client.legacy.reporting.batchDetailRecords.voice.retrieve(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(voice.data);
```

## Delete a CDR report request

`DELETE /legacy_reporting/batch_detail_records/voice/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const voice = await client.legacy.reporting.batchDetailRecords.voice.delete(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(voice.data);
```

## Get available CDR report fields

`GET /legacy_reporting/batch_detail_records/voice/fields`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.legacy.reporting.batchDetailRecords.voice.retrieveFields();

console.log(response.Billing);
```

## List MDR usage reports

`GET /legacy_reporting/usage_reports/messaging`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const mdrUsageReportResponseLegacy of client.legacy.reporting.usageReports.messaging.list()) {
  console.log(mdrUsageReportResponseLegacy.id);
}
```

## Create a new legacy usage V2 MDR report request

`POST /legacy_reporting/usage_reports/messaging`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const messaging = await client.legacy.reporting.usageReports.messaging.create({
  aggregation_type: 0,
});

console.log(messaging.data);
```

## Get an MDR usage report

`GET /legacy_reporting/usage_reports/messaging/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const messaging = await client.legacy.reporting.usageReports.messaging.retrieve(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(messaging.data);
```

## Delete a V2 legacy usage MDR report request

`DELETE /legacy_reporting/usage_reports/messaging/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const messaging = await client.legacy.reporting.usageReports.messaging.delete(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(messaging.data);
```

## List telco data usage reports

`GET /legacy_reporting/usage_reports/number_lookup`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const numberLookups = await client.legacy.reporting.usageReports.numberLookup.list();

console.log(numberLookups.data);
```

## Submit telco data usage report

`POST /legacy_reporting/usage_reports/number_lookup`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const numberLookup = await client.legacy.reporting.usageReports.numberLookup.create();

console.log(numberLookup.data);
```

## Get telco data usage report by ID

`GET /legacy_reporting/usage_reports/number_lookup/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const numberLookup = await client.legacy.reporting.usageReports.numberLookup.retrieve('id');

console.log(numberLookup.data);
```

## Delete telco data usage report

`DELETE /legacy_reporting/usage_reports/number_lookup/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.legacy.reporting.usageReports.numberLookup.delete('id');
```

## Get speech to text usage report

`GET /legacy_reporting/usage_reports/speech_to_text`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.legacy.reporting.usageReports.retrieveSpeechToText();

console.log(response.data);
```

## List CDR usage reports

`GET /legacy_reporting/usage_reports/voice`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const cdrUsageReportResponseLegacy of client.legacy.reporting.usageReports.voice.list()) {
  console.log(cdrUsageReportResponseLegacy.id);
}
```

## Create a new legacy usage V2 CDR report request

`POST /legacy_reporting/usage_reports/voice`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const voice = await client.legacy.reporting.usageReports.voice.create({
  end_time: '2024-02-01T00:00:00Z',
  start_time: '2024-02-01T00:00:00Z',
});

console.log(voice.data);
```

## Get a CDR usage report

`GET /legacy_reporting/usage_reports/voice/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const voice = await client.legacy.reporting.usageReports.voice.retrieve(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(voice.data);
```

## Delete a V2 legacy usage CDR report request

`DELETE /legacy_reporting/usage_reports/voice/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const voice = await client.legacy.reporting.usageReports.voice.delete(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(voice.data);
```

## Fetch all Messaging usage reports

`GET /reports/mdr_usage_reports`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const mdrUsageReport of client.reports.mdrUsageReports.list()) {
  console.log(mdrUsageReport.id);
}
```

## Create MDR Usage Report

`POST /reports/mdr_usage_reports`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const mdrUsageReport = await client.reports.mdrUsageReports.create({
  aggregation_type: 'NO_AGGREGATION',
  end_date: '2020-07-01T00:00:00-06:00',
  start_date: '2020-07-01T00:00:00-06:00',
});

console.log(mdrUsageReport.data);
```

## Retrieve messaging report

`GET /reports/mdr_usage_reports/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const mdrUsageReport = await client.reports.mdrUsageReports.retrieve(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(mdrUsageReport.data);
```

## Delete MDR Usage Report

`DELETE /reports/mdr_usage_reports/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const mdrUsageReport = await client.reports.mdrUsageReports.delete(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(mdrUsageReport.data);
```

## Generate and fetch MDR Usage Report

`GET /reports/mdr_usage_reports/sync`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.reports.mdrUsageReports.fetchSync({ aggregation_type: 'PROFILE' });

console.log(response.data);
```

## Generates and fetches CDR Usage Reports

`GET /reports/cdr_usage_reports/sync`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.reports.cdrUsageReports.fetchSync({
  aggregation_type: 'NO_AGGREGATION',
  product_breakdown: 'NO_BREAKDOWN',
});

console.log(response.data);
```

## Get Telnyx product usage data (BETA)

`GET /usage_reports`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const usageReportListResponse of client.usageReports.list({
  dimensions: ['string'],
  metrics: ['string'],
  product: 'product',
})) {
  console.log(usageReportListResponse);
}
```

## Get Usage Reports query options (BETA)

`GET /usage_reports/options`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.usageReports.getOptions();

console.log(response.data);
```
