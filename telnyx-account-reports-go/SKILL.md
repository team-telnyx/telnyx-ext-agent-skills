---
name: telnyx-account-reports-go
description: >-
  Generate and retrieve usage reports for billing, analytics, and
  reconciliation. This skill provides Go SDK examples.
metadata:
  author: telnyx
  product: account-reports
  language: go
---

# Telnyx Account Reports - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## Get all MDR detailed report requests

`GET /legacy_reporting/batch_detail_records/messaging`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  messagings, err := client.Legacy.Reporting.BatchDetailRecords.Messaging.List(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", messagings.Data)
}
```

## Create a new MDR detailed report request

`POST /legacy_reporting/batch_detail_records/messaging`

```go
package main

import (
  "context"
  "fmt"
  "time"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  messaging, err := client.Legacy.Reporting.BatchDetailRecords.Messaging.New(context.TODO(), telnyx.LegacyReportingBatchDetailRecordMessagingNewParams{
    EndTime: time.Now(),
    StartTime: time.Now(),
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", messaging.Data)
}
```

## Get a specific MDR detailed report request

`GET /legacy_reporting/batch_detail_records/messaging/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  messaging, err := client.Legacy.Reporting.BatchDetailRecords.Messaging.Get(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", messaging.Data)
}
```

## Delete a MDR detailed report request

`DELETE /legacy_reporting/batch_detail_records/messaging/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  messaging, err := client.Legacy.Reporting.BatchDetailRecords.Messaging.Delete(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", messaging.Data)
}
```

## Get all CDR report requests

`GET /legacy_reporting/batch_detail_records/voice`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  voices, err := client.Legacy.Reporting.BatchDetailRecords.Voice.List(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", voices.Data)
}
```

## Create a new CDR report request

`POST /legacy_reporting/batch_detail_records/voice`

```go
package main

import (
  "context"
  "fmt"
  "time"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  voice, err := client.Legacy.Reporting.BatchDetailRecords.Voice.New(context.TODO(), telnyx.LegacyReportingBatchDetailRecordVoiceNewParams{
    EndTime: time.Now(),
    StartTime: time.Now(),
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", voice.Data)
}
```

## Get a specific CDR report request

`GET /legacy_reporting/batch_detail_records/voice/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  voice, err := client.Legacy.Reporting.BatchDetailRecords.Voice.Get(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", voice.Data)
}
```

## Delete a CDR report request

`DELETE /legacy_reporting/batch_detail_records/voice/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  voice, err := client.Legacy.Reporting.BatchDetailRecords.Voice.Delete(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", voice.Data)
}
```

## Get available CDR report fields

`GET /legacy_reporting/batch_detail_records/voice/fields`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Legacy.Reporting.BatchDetailRecords.Voice.GetFields(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Billing)
}
```

## List MDR usage reports

`GET /legacy_reporting/usage_reports/messaging`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.Legacy.Reporting.UsageReports.Messaging.List(context.TODO(), telnyx.LegacyReportingUsageReportMessagingListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a new legacy usage V2 MDR report request

`POST /legacy_reporting/usage_reports/messaging`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  messaging, err := client.Legacy.Reporting.UsageReports.Messaging.New(context.TODO(), telnyx.LegacyReportingUsageReportMessagingNewParams{
    AggregationType: 0,
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", messaging.Data)
}
```

## Get an MDR usage report

`GET /legacy_reporting/usage_reports/messaging/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  messaging, err := client.Legacy.Reporting.UsageReports.Messaging.Get(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", messaging.Data)
}
```

## Delete a V2 legacy usage MDR report request

`DELETE /legacy_reporting/usage_reports/messaging/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  messaging, err := client.Legacy.Reporting.UsageReports.Messaging.Delete(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", messaging.Data)
}
```

## List telco data usage reports

`GET /legacy_reporting/usage_reports/number_lookup`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  numberLookups, err := client.Legacy.Reporting.UsageReports.NumberLookup.List(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", numberLookups.Data)
}
```

## Submit telco data usage report

`POST /legacy_reporting/usage_reports/number_lookup`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  numberLookup, err := client.Legacy.Reporting.UsageReports.NumberLookup.New(context.TODO(), telnyx.LegacyReportingUsageReportNumberLookupNewParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", numberLookup.Data)
}
```

## Get telco data usage report by ID

`GET /legacy_reporting/usage_reports/number_lookup/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  numberLookup, err := client.Legacy.Reporting.UsageReports.NumberLookup.Get(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", numberLookup.Data)
}
```

## Delete telco data usage report

`DELETE /legacy_reporting/usage_reports/number_lookup/{id}`

```go
package main

import (
  "context"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  err := client.Legacy.Reporting.UsageReports.NumberLookup.Delete(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
}
```

## Get speech to text usage report

`GET /legacy_reporting/usage_reports/speech_to_text`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Legacy.Reporting.UsageReports.GetSpeechToText(context.TODO(), telnyx.LegacyReportingUsageReportGetSpeechToTextParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List CDR usage reports

`GET /legacy_reporting/usage_reports/voice`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.Legacy.Reporting.UsageReports.Voice.List(context.TODO(), telnyx.LegacyReportingUsageReportVoiceListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a new legacy usage V2 CDR report request

`POST /legacy_reporting/usage_reports/voice`

```go
package main

import (
  "context"
  "fmt"
  "time"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  voice, err := client.Legacy.Reporting.UsageReports.Voice.New(context.TODO(), telnyx.LegacyReportingUsageReportVoiceNewParams{
    EndTime: time.Now(),
    StartTime: time.Now(),
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", voice.Data)
}
```

## Get a CDR usage report

`GET /legacy_reporting/usage_reports/voice/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  voice, err := client.Legacy.Reporting.UsageReports.Voice.Get(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", voice.Data)
}
```

## Delete a V2 legacy usage CDR report request

`DELETE /legacy_reporting/usage_reports/voice/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  voice, err := client.Legacy.Reporting.UsageReports.Voice.Delete(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", voice.Data)
}
```

## Fetch all Messaging usage reports

`GET /reports/mdr_usage_reports`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.Reports.MdrUsageReports.List(context.TODO(), telnyx.ReportMdrUsageReportListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create MDR Usage Report

`POST /reports/mdr_usage_reports`

```go
package main

import (
  "context"
  "fmt"
  "time"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  mdrUsageReport, err := client.Reports.MdrUsageReports.New(context.TODO(), telnyx.ReportMdrUsageReportNewParams{
    AggregationType: telnyx.ReportMdrUsageReportNewParamsAggregationTypeNoAggregation,
    EndDate: time.Now(),
    StartDate: time.Now(),
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", mdrUsageReport.Data)
}
```

## Retrieve messaging report

`GET /reports/mdr_usage_reports/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  mdrUsageReport, err := client.Reports.MdrUsageReports.Get(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", mdrUsageReport.Data)
}
```

## Delete MDR Usage Report

`DELETE /reports/mdr_usage_reports/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  mdrUsageReport, err := client.Reports.MdrUsageReports.Delete(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", mdrUsageReport.Data)
}
```

## Generate and fetch MDR Usage Report

`GET /reports/mdr_usage_reports/sync`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Reports.MdrUsageReports.FetchSync(context.TODO(), telnyx.ReportMdrUsageReportFetchSyncParams{
    AggregationType: telnyx.ReportMdrUsageReportFetchSyncParamsAggregationTypeProfile,
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Generates and fetches CDR Usage Reports

`GET /reports/cdr_usage_reports/sync`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Reports.CdrUsageReports.FetchSync(context.TODO(), telnyx.ReportCdrUsageReportFetchSyncParams{
    AggregationType: telnyx.ReportCdrUsageReportFetchSyncParamsAggregationTypeNoAggregation,
    ProductBreakdown: telnyx.ReportCdrUsageReportFetchSyncParamsProductBreakdownNoBreakdown,
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Get Telnyx product usage data (BETA)

`GET /usage_reports`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.UsageReports.List(context.TODO(), telnyx.UsageReportListParams{
    Dimensions: []string{"string"},
    Metrics: []string{"string"},
    Product: "product",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Get Usage Reports query options (BETA)

`GET /usage_reports/options`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.UsageReports.GetOptions(context.TODO(), telnyx.UsageReportGetOptionsParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```
