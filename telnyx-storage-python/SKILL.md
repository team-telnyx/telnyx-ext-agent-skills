---
name: telnyx-storage-python
description: >-
  Manage cloud storage buckets and objects using the S3-compatible Telnyx
  Storage API. This skill provides Python SDK examples.
metadata:
  author: telnyx
  product: storage
  language: python
---

# Telnyx Storage - Python

## Installation

```bash
pip install telnyx
```

## Create Presigned Object URL

`POST /storage/buckets/{bucketName}/{objectName}/presigned_url`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.storage.buckets.create_presigned_url(
    object_name="",
    bucket_name="",
)
print(response.content)
```

## Get Bucket SSL Certificate

`GET /storage/buckets/{bucketName}/ssl_certificate`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
ssl_certificate = client.storage.buckets.ssl_certificate.retrieve(
    "",
)
print(ssl_certificate.data)
```

## Add SSL Certificate

`PUT /storage/buckets/{bucketName}/ssl_certificate`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
ssl_certificate = client.storage.buckets.ssl_certificate.create(
    bucket_name="",
)
print(ssl_certificate.data)
```

## Remove SSL Certificate

`DELETE /storage/buckets/{bucketName}/ssl_certificate`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
ssl_certificate = client.storage.buckets.ssl_certificate.delete(
    "",
)
print(ssl_certificate.data)
```

## Get API Usage

`GET /storage/buckets/{bucketName}/usage/api`

```python
import os
from datetime import datetime
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.storage.buckets.usage.get_api_usage(
    bucket_name="",
    filter={
        "end_time": datetime.fromisoformat("2019-12-27T18:11:19.117"),
        "start_time": datetime.fromisoformat("2019-12-27T18:11:19.117"),
    },
)
print(response.data)
```

## Get Bucket Usage

`GET /storage/buckets/{bucketName}/usage/storage`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.storage.buckets.usage.get_bucket_usage(
    "",
)
print(response.data)
```

## List Migration Source coverage

`GET /storage/migration_source_coverage`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.storage.list_migration_source_coverage()
print(response.data)
```

## List all Migration Sources

`GET /storage/migration_sources`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
migration_sources = client.storage.migration_sources.list()
print(migration_sources.data)
```

## Create a Migration Source

`POST /storage/migration_sources`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
migration_source = client.storage.migration_sources.create(
    bucket_name="bucket_name",
    provider="aws",
    provider_auth={},
)
print(migration_source.data)
```

## Get a Migration Source

`GET /storage/migration_sources/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
migration_source = client.storage.migration_sources.retrieve(
    "",
)
print(migration_source.data)
```

## Delete a Migration Source

`DELETE /storage/migration_sources/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
migration_source = client.storage.migration_sources.delete(
    "",
)
print(migration_source.data)
```

## List all Migrations

`GET /storage/migrations`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
migrations = client.storage.migrations.list()
print(migrations.data)
```

## Create a Migration

`POST /storage/migrations`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
migration = client.storage.migrations.create(
    source_id="source_id",
    target_bucket_name="target_bucket_name",
    target_region="target_region",
)
print(migration.data)
```

## Get a Migration

`GET /storage/migrations/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
migration = client.storage.migrations.retrieve(
    "",
)
print(migration.data)
```

## Stop a Migration

`POST /storage/migrations/{id}/actions/stop`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.storage.migrations.actions.stop(
    "",
)
print(response.data)
```
