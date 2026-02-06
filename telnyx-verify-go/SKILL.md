---
name: telnyx-verify-go
description: >-
  Look up phone number information (carrier, type, caller name) and verify users
  via SMS/voice OTP. Use for phone verification and data enrichment. This skill
  provides Go SDK examples.
metadata:
  author: telnyx
  product: verify
  language: go
---

# Telnyx Verify - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## Lookup phone number data

`GET /number_lookup/{phone_number}`

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
  numberLookup, err := client.NumberLookup.Get(
    context.TODO(),
    "+18665552368",
    telnyx.NumberLookupGetParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", numberLookup.Data)
}
```

## Trigger Call verification

`POST /verifications/call`

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
  createVerificationResponse, err := client.Verifications.TriggerCall(context.TODO(), telnyx.VerificationTriggerCallParams{
    PhoneNumber: "+13035551234",
    VerifyProfileID: "12ade33a-21c0-473b-b055-b3c836e1c292",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", createVerificationResponse.Data)
}
```

## Trigger Flash call verification

`POST /verifications/flashcall`

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
  createVerificationResponse, err := client.Verifications.TriggerFlashcall(context.TODO(), telnyx.VerificationTriggerFlashcallParams{
    PhoneNumber: "+13035551234",
    VerifyProfileID: "12ade33a-21c0-473b-b055-b3c836e1c292",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", createVerificationResponse.Data)
}
```

## Trigger SMS verification

`POST /verifications/sms`

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
  createVerificationResponse, err := client.Verifications.TriggerSMS(context.TODO(), telnyx.VerificationTriggerSMSParams{
    PhoneNumber: "+13035551234",
    VerifyProfileID: "12ade33a-21c0-473b-b055-b3c836e1c292",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", createVerificationResponse.Data)
}
```

## Retrieve verification

`GET /verifications/{verification_id}`

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
  verification, err := client.Verifications.Get(context.TODO(), "12ade33a-21c0-473b-b055-b3c836e1c292")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", verification.Data)
}
```

## Verify verification code by ID

`POST /verifications/{verification_id}/actions/verify`

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
  verifyVerificationCodeResponse, err := client.Verifications.Actions.Verify(
    context.TODO(),
    "12ade33a-21c0-473b-b055-b3c836e1c292",
    telnyx.VerificationActionVerifyParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", verifyVerificationCodeResponse.Data)
}
```

## List verifications by phone number

`GET /verifications/by_phone_number/{phone_number}`

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
  byPhoneNumbers, err := client.Verifications.ByPhoneNumber.List(context.TODO(), "+13035551234")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", byPhoneNumbers.Data)
}
```

## Verify verification code by phone number

`POST /verifications/by_phone_number/{phone_number}/actions/verify`

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
  verifyVerificationCodeResponse, err := client.Verifications.ByPhoneNumber.Actions.Verify(
    context.TODO(),
    "+13035551234",
    telnyx.VerificationByPhoneNumberActionVerifyParams{
      Code: "17686",
      VerifyProfileID: "12ade33a-21c0-473b-b055-b3c836e1c292",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", verifyVerificationCodeResponse.Data)
}
```

## List all Verify profiles

`GET /verify_profiles`

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
  page, err := client.VerifyProfiles.List(context.TODO(), telnyx.VerifyProfileListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a Verify profile

`POST /verify_profiles`

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
  verifyProfileData, err := client.VerifyProfiles.New(context.TODO(), telnyx.VerifyProfileNewParams{
    Name: "Test Profile",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", verifyProfileData.Data)
}
```

## Retrieve Verify profile

`GET /verify_profiles/{verify_profile_id}`

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
  verifyProfileData, err := client.VerifyProfiles.Get(context.TODO(), "12ade33a-21c0-473b-b055-b3c836e1c292")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", verifyProfileData.Data)
}
```

## Update Verify profile

`PATCH /verify_profiles/{verify_profile_id}`

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
  verifyProfileData, err := client.VerifyProfiles.Update(
    context.TODO(),
    "12ade33a-21c0-473b-b055-b3c836e1c292",
    telnyx.VerifyProfileUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", verifyProfileData.Data)
}
```

## Delete Verify profile

`DELETE /verify_profiles/{verify_profile_id}`

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
  verifyProfileData, err := client.VerifyProfiles.Delete(context.TODO(), "12ade33a-21c0-473b-b055-b3c836e1c292")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", verifyProfileData.Data)
}
```

## Retrieve Verify profile message templates

`GET /verify_profiles/templates`

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
  response, err := client.VerifyProfiles.GetTemplates(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Create message template

`POST /verify_profiles/templates`

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
  messageTemplate, err := client.VerifyProfiles.NewTemplate(context.TODO(), telnyx.VerifyProfileNewTemplateParams{
    Text: "Your {{app_name}} verification code is: {{code}}.",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", messageTemplate.Data)
}
```

## Update message template

`PATCH /verify_profiles/templates/{template_id}`

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
  messageTemplate, err := client.VerifyProfiles.UpdateTemplate(
    context.TODO(),
    "12ade33a-21c0-473b-b055-b3c836e1c292",
    telnyx.VerifyProfileUpdateTemplateParams{
      Text: "Your {{app_name}} verification code is: {{code}}.",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", messageTemplate.Data)
}
```
