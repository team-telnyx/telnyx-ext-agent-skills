---
name: telnyx-fax-go
description: >-
  Send and receive faxes programmatically. Manage fax applications and media.
  This skill provides Go SDK examples.
metadata:
  author: telnyx
  product: fax
  language: go
---

# Telnyx Fax - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## List all Fax Applications

`GET /fax_applications`

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
  page, err := client.FaxApplications.List(context.TODO(), telnyx.FaxApplicationListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Creates a Fax Application

`POST /fax_applications`

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
  faxApplication, err := client.FaxApplications.New(context.TODO(), telnyx.FaxApplicationNewParams{
    ApplicationName: "fax-router",
    WebhookEventURL: "https://example.com",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", faxApplication.Data)
}
```

## Retrieve a Fax Application

`GET /fax_applications/{id}`

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
  faxApplication, err := client.FaxApplications.Get(context.TODO(), "1293384261075731499")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", faxApplication.Data)
}
```

## Update a Fax Application

`PATCH /fax_applications/{id}`

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
  faxApplication, err := client.FaxApplications.Update(
    context.TODO(),
    "1293384261075731499",
    telnyx.FaxApplicationUpdateParams{
      ApplicationName: "fax-router",
      WebhookEventURL: "https://example.com",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", faxApplication.Data)
}
```

## Deletes a Fax Application

`DELETE /fax_applications/{id}`

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
  faxApplication, err := client.FaxApplications.Delete(context.TODO(), "1293384261075731499")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", faxApplication.Data)
}
```

## View a list of faxes

`GET /faxes`

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
  page, err := client.Faxes.List(context.TODO(), telnyx.FaxListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Send a fax

`POST /faxes`

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
  fax, err := client.Faxes.New(context.TODO(), telnyx.FaxNewParams{
    ConnectionID: "234423",
    From: "+13125790015",
    To: "+13127367276",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", fax.Data)
}
```

## View a fax

`GET /faxes/{id}`

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
  fax, err := client.Faxes.Get(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", fax.Data)
}
```

## Delete a fax

`DELETE /faxes/{id}`

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
  err := client.Faxes.Delete(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
}
```

## Cancel a fax

`POST /faxes/{id}/actions/cancel`

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
  response, err := client.Faxes.Actions.Cancel(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Result)
}
```

## Refresh a fax

`POST /faxes/{id}/actions/refresh`

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
  response, err := client.Faxes.Actions.Refresh(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Result)
}
```
