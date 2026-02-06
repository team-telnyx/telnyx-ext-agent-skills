---
name: telnyx-webrtc-go
description: >-
  Manage WebRTC credentials and mobile push notification settings. Use when
  building browser-based or mobile softphone applications. This skill provides
  Go SDK examples.
metadata:
  author: telnyx
  product: webrtc
  language: go
---

# Telnyx Webrtc - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## List mobile push credentials

`GET /mobile_push_credentials`

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
  page, err := client.MobilePushCredentials.List(context.TODO(), telnyx.MobilePushCredentialListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Creates a new mobile push credential

`POST /mobile_push_credentials`

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
  pushCredentialResponse, err := client.MobilePushCredentials.New(context.TODO(), telnyx.MobilePushCredentialNewParams{
    OfIos: &telnyx.MobilePushCredentialNewParamsCreateMobilePushCredentialRequestIos{
      Alias: "LucyIosCredential",
      Certificate: "-----BEGIN CERTIFICATE----- MIIGVDCCBTKCAQEAsNlRJVZn9ZvXcECQm65czs... -----END CERTIFICATE-----",
      PrivateKey: "-----BEGIN RSA PRIVATE KEY----- MIIEpQIBAAKCAQEAsNlRJVZn9ZvXcECQm65czs... -----END RSA PRIVATE KEY-----",
    },
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", pushCredentialResponse.Data)
}
```

## Retrieves a mobile push credential

`GET /mobile_push_credentials/{push_credential_id}`

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
  pushCredentialResponse, err := client.MobilePushCredentials.Get(context.TODO(), "0ccc7b76-4df3-4bca-a05a-3da1ecc389f0")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", pushCredentialResponse.Data)
}
```

## Deletes a mobile push credential

`DELETE /mobile_push_credentials/{push_credential_id}`

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
  err := client.MobilePushCredentials.Delete(context.TODO(), "0ccc7b76-4df3-4bca-a05a-3da1ecc389f0")
  if err != nil {
    panic(err.Error())
  }
}
```

## List all credentials

`GET /telephony_credentials`

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
  page, err := client.TelephonyCredentials.List(context.TODO(), telnyx.TelephonyCredentialListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a credential

`POST /telephony_credentials`

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
  telephonyCredential, err := client.TelephonyCredentials.New(context.TODO(), telnyx.TelephonyCredentialNewParams{
    ConnectionID: "1234567890",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", telephonyCredential.Data)
}
```

## Get a credential

`GET /telephony_credentials/{id}`

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
  telephonyCredential, err := client.TelephonyCredentials.Get(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", telephonyCredential.Data)
}
```

## Update a credential

`PATCH /telephony_credentials/{id}`

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
  telephonyCredential, err := client.TelephonyCredentials.Update(
    context.TODO(),
    "id",
    telnyx.TelephonyCredentialUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", telephonyCredential.Data)
}
```

## Delete a credential

`DELETE /telephony_credentials/{id}`

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
  telephonyCredential, err := client.TelephonyCredentials.Delete(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", telephonyCredential.Data)
}
```

## Create an Access Token.

`POST /telephony_credentials/{id}/token`

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
  response, err := client.TelephonyCredentials.NewToken(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response)
}
```
