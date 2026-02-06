---
name: telnyx-account-reports-python
description: >-
  Generate and retrieve usage reports for billing, analytics, and
  reconciliation. This skill provides Python SDK examples.
metadata:
  author: telnyx
  product: account-reports
  language: python
---

# Telnyx Account Reports - Python

## Installation

```bash
pip install telnyx
```

## Get all MDR detailed report requests

`GET /legacy_reporting/batch_detail_records/messaging`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
messagings = client.legacy.reporting.batch_detail_records.messaging.list()
print(messagings.data)
```

## Create a new MDR detailed report request

`POST /legacy_reporting/batch_detail_records/messaging`

```python
import os
from datetime import datetime
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
messaging = client.legacy.reporting.batch_detail_records.messaging.create(
    end_time=datetime.fromisoformat("2024-02-12T23:59:59"),
    start_time=datetime.fromisoformat("2024-02-01T00:00:00"),
)
print(messaging.data)
```

## Get a specific MDR detailed report request

`GET /legacy_reporting/batch_detail_records/messaging/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
messaging = client.legacy.reporting.batch_detail_records.messaging.retrieve(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(messaging.data)
```

## Delete a MDR detailed report request

`DELETE /legacy_reporting/batch_detail_records/messaging/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
messaging = client.legacy.reporting.batch_detail_records.messaging.delete(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(messaging.data)
```

## Get all CDR report requests

`GET /legacy_reporting/batch_detail_records/voice`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
voices = client.legacy.reporting.batch_detail_records.voice.list()
print(voices.data)
```

## Create a new CDR report request

`POST /legacy_reporting/batch_detail_records/voice`

```python
import os
from datetime import datetime
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
voice = client.legacy.reporting.batch_detail_records.voice.create(
    end_time=datetime.fromisoformat("2024-02-12T23:59:59"),
    start_time=datetime.fromisoformat("2024-02-01T00:00:00"),
)
print(voice.data)
```

## Get a specific CDR report request

`GET /legacy_reporting/batch_detail_records/voice/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
voice = client.legacy.reporting.batch_detail_records.voice.retrieve(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(voice.data)
```

## Delete a CDR report request

`DELETE /legacy_reporting/batch_detail_records/voice/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
voice = client.legacy.reporting.batch_detail_records.voice.delete(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(voice.data)
```

## Get available CDR report fields

`GET /legacy_reporting/batch_detail_records/voice/fields`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.legacy.reporting.batch_detail_records.voice.retrieve_fields()
print(response.billing)
```

## List MDR usage reports

`GET /legacy_reporting/usage_reports/messaging`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.legacy.reporting.usage_reports.messaging.list()
page = page.data[0]
print(page.id)
```

## Create a new legacy usage V2 MDR report request

`POST /legacy_reporting/usage_reports/messaging`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
messaging = client.legacy.reporting.usage_reports.messaging.create(
    aggregation_type=0,
)
print(messaging.data)
```

## Get an MDR usage report

`GET /legacy_reporting/usage_reports/messaging/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
messaging = client.legacy.reporting.usage_reports.messaging.retrieve(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(messaging.data)
```

## Delete a V2 legacy usage MDR report request

`DELETE /legacy_reporting/usage_reports/messaging/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
messaging = client.legacy.reporting.usage_reports.messaging.delete(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(messaging.data)
```

## List telco data usage reports

`GET /legacy_reporting/usage_reports/number_lookup`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
number_lookups = client.legacy.reporting.usage_reports.number_lookup.list()
print(number_lookups.data)
```

## Submit telco data usage report

`POST /legacy_reporting/usage_reports/number_lookup`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
number_lookup = client.legacy.reporting.usage_reports.number_lookup.create()
print(number_lookup.data)
```

## Get telco data usage report by ID

`GET /legacy_reporting/usage_reports/number_lookup/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
number_lookup = client.legacy.reporting.usage_reports.number_lookup.retrieve(
    "id",
)
print(number_lookup.data)
```

## Delete telco data usage report

`DELETE /legacy_reporting/usage_reports/number_lookup/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.legacy.reporting.usage_reports.number_lookup.delete(
    "id",
)
```

## Get speech to text usage report

`GET /legacy_reporting/usage_reports/speech_to_text`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.legacy.reporting.usage_reports.retrieve_speech_to_text()
print(response.data)
```

## List CDR usage reports

`GET /legacy_reporting/usage_reports/voice`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.legacy.reporting.usage_reports.voice.list()
page = page.data[0]
print(page.id)
```

## Create a new legacy usage V2 CDR report request

`POST /legacy_reporting/usage_reports/voice`

```python
import os
from datetime import datetime
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
voice = client.legacy.reporting.usage_reports.voice.create(
    end_time=datetime.fromisoformat("2024-02-01T00:00:00"),
    start_time=datetime.fromisoformat("2024-02-01T00:00:00"),
)
print(voice.data)
```

## Get a CDR usage report

`GET /legacy_reporting/usage_reports/voice/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
voice = client.legacy.reporting.usage_reports.voice.retrieve(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(voice.data)
```

## Delete a V2 legacy usage CDR report request

`DELETE /legacy_reporting/usage_reports/voice/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
voice = client.legacy.reporting.usage_reports.voice.delete(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(voice.data)
```

## Fetch all Messaging usage reports

`GET /reports/mdr_usage_reports`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.reports.mdr_usage_reports.list()
page = page.data[0]
print(page.id)
```

## Create MDR Usage Report

`POST /reports/mdr_usage_reports`

```python
import os
from datetime import datetime
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
mdr_usage_report = client.reports.mdr_usage_reports.create(
    aggregation_type="NO_AGGREGATION",
    end_date=datetime.fromisoformat("2020-07-01T00:00:00-06:00"),
    start_date=datetime.fromisoformat("2020-07-01T00:00:00-06:00"),
)
print(mdr_usage_report.data)
```

## Retrieve messaging report

`GET /reports/mdr_usage_reports/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
mdr_usage_report = client.reports.mdr_usage_reports.retrieve(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(mdr_usage_report.data)
```

## Delete MDR Usage Report

`DELETE /reports/mdr_usage_reports/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
mdr_usage_report = client.reports.mdr_usage_reports.delete(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(mdr_usage_report.data)
```

## Generate and fetch MDR Usage Report

`GET /reports/mdr_usage_reports/sync`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.reports.mdr_usage_reports.fetch_sync(
    aggregation_type="PROFILE",
)
print(response.data)
```

## Generates and fetches CDR Usage Reports

`GET /reports/cdr_usage_reports/sync`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.reports.cdr_usage_reports.fetch_sync(
    aggregation_type="NO_AGGREGATION",
    product_breakdown="NO_BREAKDOWN",
)
print(response.data)
```

## Get Telnyx product usage data (BETA)

`GET /usage_reports`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.usage_reports.list(
    dimensions=["string"],
    metrics=["string"],
    product="product",
)
page = page.data[0]
print(page)
```

## Get Usage Reports query options (BETA)

`GET /usage_reports/options`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.usage_reports.get_options()
print(response.data)
```
