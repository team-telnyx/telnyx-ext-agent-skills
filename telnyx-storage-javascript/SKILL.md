---
name: telnyx-storage-javascript
description: >-
  Manage cloud storage buckets and objects using the S3-compatible Telnyx
  Storage API. This skill provides JavaScript SDK examples.
metadata:
  author: telnyx
  product: storage
  language: javascript
---

# Telnyx Storage - JavaScript

## Installation

```bash
npm install telnyx
```

## Create Presigned Object URL

`POST /storage/buckets/{bucketName}/{objectName}/presigned_url`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.storage.buckets.createPresignedURL('', { bucketName: '' });

console.log(response.content);
```

## Get Bucket SSL Certificate

`GET /storage/buckets/{bucketName}/ssl_certificate`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const sslCertificate = await client.storage.buckets.sslCertificate.retrieve('');

console.log(sslCertificate.data);
```

## Add SSL Certificate

`PUT /storage/buckets/{bucketName}/ssl_certificate`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const sslCertificate = await client.storage.buckets.sslCertificate.create('');

console.log(sslCertificate.data);
```

## Remove SSL Certificate

`DELETE /storage/buckets/{bucketName}/ssl_certificate`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const sslCertificate = await client.storage.buckets.sslCertificate.delete('');

console.log(sslCertificate.data);
```

## Get API Usage

`GET /storage/buckets/{bucketName}/usage/api`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.storage.buckets.usage.getAPIUsage('', {
  filter: { end_time: '2019-12-27T18:11:19.117Z', start_time: '2019-12-27T18:11:19.117Z' },
});

console.log(response.data);
```

## Get Bucket Usage

`GET /storage/buckets/{bucketName}/usage/storage`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.storage.buckets.usage.getBucketUsage('');

console.log(response.data);
```

## List Migration Source coverage

`GET /storage/migration_source_coverage`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.storage.listMigrationSourceCoverage();

console.log(response.data);
```

## List all Migration Sources

`GET /storage/migration_sources`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const migrationSources = await client.storage.migrationSources.list();

console.log(migrationSources.data);
```

## Create a Migration Source

`POST /storage/migration_sources`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const migrationSource = await client.storage.migrationSources.create({
  bucket_name: 'bucket_name',
  provider: 'aws',
  provider_auth: {},
});

console.log(migrationSource.data);
```

## Get a Migration Source

`GET /storage/migration_sources/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const migrationSource = await client.storage.migrationSources.retrieve('');

console.log(migrationSource.data);
```

## Delete a Migration Source

`DELETE /storage/migration_sources/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const migrationSource = await client.storage.migrationSources.delete('');

console.log(migrationSource.data);
```

## List all Migrations

`GET /storage/migrations`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const migrations = await client.storage.migrations.list();

console.log(migrations.data);
```

## Create a Migration

`POST /storage/migrations`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const migration = await client.storage.migrations.create({
  source_id: 'source_id',
  target_bucket_name: 'target_bucket_name',
  target_region: 'target_region',
});

console.log(migration.data);
```

## Get a Migration

`GET /storage/migrations/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const migration = await client.storage.migrations.retrieve('');

console.log(migration.data);
```

## Stop a Migration

`POST /storage/migrations/{id}/actions/stop`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.storage.migrations.actions.stop('');

console.log(response.data);
```
