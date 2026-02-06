---
name: telnyx-porting-in-python
description: >-
  Port phone numbers into Telnyx. Check portability, create port orders, upload
  LOA documents, and track porting status. This skill provides Python SDK
  examples.
metadata:
  author: telnyx
  product: porting-in
  language: python
---

# Telnyx Porting In - Python

## Installation

```bash
pip install telnyx
```

## List all porting events

`GET /porting/events`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.porting.events.list()
page = page.data[0]
print(page)
```

## Show a porting event

`GET /porting/events/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
event = client.porting.events.retrieve(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(event.data)
```

## Republish a porting event

`POST /porting/events/{id}/republish`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.porting.events.republish(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
```

## Preview the LOA configuration parameters

`POST /porting/loa_configuration_preview`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.porting.loa_configurations.preview_0(
    address={
        "city": "Austin",
        "country_code": "US",
        "state": "TX",
        "street_address": "600 Congress Avenue",
        "zip_code": "78701",
    },
    company_name="Telnyx",
    contact={
        "email": "testing@telnyx.com",
        "phone_number": "+12003270001",
    },
    logo={
        "document_id": "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
    },
    name="My LOA Configuration",
)
print(response)
content = response.read()
print(content)
```

## List LOA configurations

`GET /porting/loa_configurations`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.porting.loa_configurations.list()
page = page.data[0]
print(page.id)
```

## Create a LOA configuration

`POST /porting/loa_configurations`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
loa_configuration = client.porting.loa_configurations.create(
    address={
        "city": "Austin",
        "country_code": "US",
        "state": "TX",
        "street_address": "600 Congress Avenue",
        "zip_code": "78701",
    },
    company_name="Telnyx",
    contact={
        "email": "testing@telnyx.com",
        "phone_number": "+12003270001",
    },
    logo={
        "document_id": "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
    },
    name="My LOA Configuration",
)
print(loa_configuration.data)
```

## Retrieve a LOA configuration

`GET /porting/loa_configurations/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
loa_configuration = client.porting.loa_configurations.retrieve(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(loa_configuration.data)
```

## Update a LOA configuration

`PATCH /porting/loa_configurations/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
loa_configuration = client.porting.loa_configurations.update(
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    address={
        "city": "Austin",
        "country_code": "US",
        "state": "TX",
        "street_address": "600 Congress Avenue",
        "zip_code": "78701",
    },
    company_name="Telnyx",
    contact={
        "email": "testing@telnyx.com",
        "phone_number": "+12003270001",
    },
    logo={
        "document_id": "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
    },
    name="My LOA Configuration",
)
print(loa_configuration.data)
```

## Delete a LOA configuration

`DELETE /porting/loa_configurations/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.porting.loa_configurations.delete(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
```

## Preview a LOA configuration

`GET /porting/loa_configurations/{id}/preview`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.porting.loa_configurations.preview_1(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(response)
content = response.read()
print(content)
```

## List all porting orders

`GET /porting_orders`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.porting_orders.list()
page = page.data[0]
print(page.id)
```

## Create a porting order

`POST /porting_orders`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
porting_order = client.porting_orders.create(
    phone_numbers=["+13035550000", "+13035550001", "+13035550002"],
)
print(porting_order.data)
```

## Retrieve a porting order

`GET /porting_orders/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
porting_order = client.porting_orders.retrieve(
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(porting_order.data)
```

## Edit a porting order

`PATCH /porting_orders/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
porting_order = client.porting_orders.update(
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(porting_order.data)
```

## Delete a porting order

`DELETE /porting_orders/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.porting_orders.delete(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
```

## Activate every number in a porting order asynchronously.

`POST /porting_orders/{id}/actions/activate`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.porting_orders.actions.activate(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(response.data)
```

## Cancel a porting order

`POST /porting_orders/{id}/actions/cancel`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.porting_orders.actions.cancel(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(response.data)
```

## Submit a porting order.

`POST /porting_orders/{id}/actions/confirm`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.porting_orders.actions.confirm(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(response.data)
```

## Share a porting order

`POST /porting_orders/{id}/actions/share`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.porting_orders.actions.share(
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(response.data)
```

## List all porting activation jobs

`GET /porting_orders/{id}/activation_jobs`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.porting_orders.activation_jobs.list(
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
page = page.data[0]
print(page.id)
```

## Retrieve a porting activation job

`GET /porting_orders/{id}/activation_jobs/{activationJobId}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
activation_job = client.porting_orders.activation_jobs.retrieve(
    activation_job_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(activation_job.data)
```

## Update a porting activation job

`PATCH /porting_orders/{id}/activation_jobs/{activationJobId}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
activation_job = client.porting_orders.activation_jobs.update(
    activation_job_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(activation_job.data)
```

## List additional documents

`GET /porting_orders/{id}/additional_documents`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.porting_orders.additional_documents.list(
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
page = page.data[0]
print(page.id)
```

## Create a list of additional documents

`POST /porting_orders/{id}/additional_documents`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
additional_document = client.porting_orders.additional_documents.create(
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(additional_document.data)
```

## Delete an additional document

`DELETE /porting_orders/{id}/additional_documents/{additional_document_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.porting_orders.additional_documents.delete(
    additional_document_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
```

## List allowed FOC dates

`GET /porting_orders/{id}/allowed_foc_windows`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.porting_orders.retrieve_allowed_foc_windows(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(response.data)
```

## List all comments of a porting order

`GET /porting_orders/{id}/comments`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.porting_orders.comments.list(
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
page = page.data[0]
print(page.id)
```

## Create a comment for a porting order

`POST /porting_orders/{id}/comments`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
comment = client.porting_orders.comments.create(
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(comment.data)
```

## Download a porting order loa template

`GET /porting_orders/{id}/loa_template`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.porting_orders.retrieve_loa_template(
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(response)
content = response.read()
print(content)
```

## List porting order requirements

`GET /porting_orders/{id}/requirements`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.porting_orders.retrieve_requirements(
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
page = page.data[0]
print(page.field_type)
```

## Retrieve the associated V1 sub_request_id and port_request_id

`GET /porting_orders/{id}/sub_request`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.porting_orders.retrieve_sub_request(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(response.data)
```

## List verification codes

`GET /porting_orders/{id}/verification_codes`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.porting_orders.verification_codes.list(
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
page = page.data[0]
print(page.id)
```

## Send the verification codes

`POST /porting_orders/{id}/verification_codes/send`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.porting_orders.verification_codes.send(
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
```

## Verify the verification code for a list of phone numbers

`POST /porting_orders/{id}/verification_codes/verify`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.porting_orders.verification_codes.verify(
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(response.data)
```

## List action requirements for a porting order

`GET /porting_orders/{porting_order_id}/action_requirements`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.porting_orders.action_requirements.list(
    porting_order_id="porting_order_id",
)
page = page.data[0]
print(page.id)
```

## Initiate an action requirement

`POST /porting_orders/{porting_order_id}/action_requirements/{id}/initiate`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.porting_orders.action_requirements.initiate(
    id="id",
    porting_order_id="porting_order_id",
    params={
        "first_name": "John",
        "last_name": "Doe",
    },
)
print(response.data)
```

## List all associated phone numbers

`GET /porting_orders/{porting_order_id}/associated_phone_numbers`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.porting_orders.associated_phone_numbers.list(
    porting_order_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
page = page.data[0]
print(page.id)
```

## Create an associated phone number

`POST /porting_orders/{porting_order_id}/associated_phone_numbers`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
associated_phone_number = client.porting_orders.associated_phone_numbers.create(
    porting_order_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    action="keep",
    phone_number_range={},
)
print(associated_phone_number.data)
```

## Delete an associated phone number

`DELETE /porting_orders/{porting_order_id}/associated_phone_numbers/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
associated_phone_number = client.porting_orders.associated_phone_numbers.delete(
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    porting_order_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(associated_phone_number.data)
```

## List all phone number blocks

`GET /porting_orders/{porting_order_id}/phone_number_blocks`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.porting_orders.phone_number_blocks.list(
    porting_order_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
page = page.data[0]
print(page.id)
```

## Create a phone number block

`POST /porting_orders/{porting_order_id}/phone_number_blocks`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
phone_number_block = client.porting_orders.phone_number_blocks.create(
    porting_order_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    activation_ranges=[{
        "end_at": "+4930244999910",
        "start_at": "+4930244999901",
    }],
    phone_number_range={
        "end_at": "+4930244999910",
        "start_at": "+4930244999901",
    },
)
print(phone_number_block.data)
```

## Delete a phone number block

`DELETE /porting_orders/{porting_order_id}/phone_number_blocks/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
phone_number_block = client.porting_orders.phone_number_blocks.delete(
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    porting_order_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(phone_number_block.data)
```

## List all phone number extensions

`GET /porting_orders/{porting_order_id}/phone_number_extensions`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.porting_orders.phone_number_extensions.list(
    porting_order_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
page = page.data[0]
print(page.id)
```

## Create a phone number extension

`POST /porting_orders/{porting_order_id}/phone_number_extensions`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
phone_number_extension = client.porting_orders.phone_number_extensions.create(
    porting_order_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    activation_ranges=[{
        "end_at": 10,
        "start_at": 1,
    }],
    extension_range={
        "end_at": 10,
        "start_at": 1,
    },
    porting_phone_number_id="f24151b6-3389-41d3-8747-7dd8c681e5e2",
)
print(phone_number_extension.data)
```

## Delete a phone number extension

`DELETE /porting_orders/{porting_order_id}/phone_number_extensions/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
phone_number_extension = client.porting_orders.phone_number_extensions.delete(
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    porting_order_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(phone_number_extension.data)
```

## List all exception types

`GET /porting_orders/exception_types`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.porting_orders.retrieve_exception_types()
print(response.data)
```

## List all phone number configurations

`GET /porting_orders/phone_number_configurations`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.porting_orders.phone_number_configurations.list()
page = page.data[0]
print(page.id)
```

## Create a list of phone number configurations

`POST /porting_orders/phone_number_configurations`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
phone_number_configuration = client.porting_orders.phone_number_configurations.create()
print(phone_number_configuration.data)
```

## List all porting phone numbers

`GET /porting/phone_numbers`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.porting_phone_numbers.list()
page = page.data[0]
print(page.porting_order_id)
```

## List porting related reports

`GET /porting/reports`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.porting.reports.list()
page = page.data[0]
print(page.id)
```

## Create a porting related report

`POST /porting/reports`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
report = client.porting.reports.create(
    params={
        "filters": {}
    },
    report_type="export_porting_orders_csv",
)
print(report.data)
```

## Retrieve a report

`GET /porting/reports/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
report = client.porting.reports.retrieve(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(report.data)
```

## List available carriers in the UK

`GET /porting/uk_carriers`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.porting.list_uk_carriers()
print(response.data)
```

## Run a portability check

`POST /portability_checks`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.portability_checks.run()
print(response.data)
```
