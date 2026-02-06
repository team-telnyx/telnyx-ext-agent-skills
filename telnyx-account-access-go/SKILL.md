---
name: telnyx-account-access-go
description: >-
  Configure account addresses, authentication providers, IP access controls,
  billing groups, and integration secrets. This skill provides Go SDK examples.
metadata:
  author: telnyx
  product: account-access
  language: go
---

# Telnyx Account Access - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## List all addresses

`GET /addresses`

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
  page, err := client.Addresses.List(context.TODO(), telnyx.AddressListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Creates an address

`POST /addresses`

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
  address, err := client.Addresses.New(context.TODO(), telnyx.AddressNewParams{
    BusinessName: "Toy-O'Kon",
    CountryCode: "US",
    FirstName: "Alfred",
    LastName: "Foster",
    Locality: "Austin",
    StreetAddress: "600 Congress Avenue",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", address.Data)
}
```

## Retrieve an address

`GET /addresses/{id}`

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
  address, err := client.Addresses.Get(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", address.Data)
}
```

## Deletes an address

`DELETE /addresses/{id}`

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
  address, err := client.Addresses.Delete(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", address.Data)
}
```

## Accepts this address suggestion as a new emergency address for Operator Connect and finishes the uploads of the numbers associated with it to Microsoft.

`POST /addresses/{id}/actions/accept_suggestions`

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
  response, err := client.Addresses.Actions.AcceptSuggestions(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.AddressActionAcceptSuggestionsParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Validate an address

`POST /addresses/actions/validate`

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
  response, err := client.Addresses.Actions.Validate(context.TODO(), telnyx.AddressActionValidateParams{
    CountryCode: "US",
    PostalCode: "78701",
    StreetAddress: "600 Congress Avenue",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List all SSO authentication providers

`GET /authentication_providers`

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
  page, err := client.AuthenticationProviders.List(context.TODO(), telnyx.AuthenticationProviderListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Creates an authentication provider

`POST /authentication_providers`

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
  authenticationProvider, err := client.AuthenticationProviders.New(context.TODO(), telnyx.AuthenticationProviderNewParams{
    Name: "Okta",
    Settings: telnyx.SettingsParam{
      IdpCertFingerprint: "13:38:C7:BB:C9:FF:4A:70:38:3A:E3:D9:5C:CD:DB:2E:50:1E:80:A7",
      IdpEntityID: "https://myorg.myidp.com/saml/metadata",
      IdpSSOTargetURL: "https://myorg.myidp.com/trust/saml2/http-post/sso",
    },
    ShortName: "myorg",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", authenticationProvider.Data)
}
```

## Retrieve an authentication provider

`GET /authentication_providers/{id}`

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
  authenticationProvider, err := client.AuthenticationProviders.Get(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", authenticationProvider.Data)
}
```

## Update an authentication provider

`PATCH /authentication_providers/{id}`

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
  authenticationProvider, err := client.AuthenticationProviders.Update(
    context.TODO(),
    "id",
    telnyx.AuthenticationProviderUpdateParams{
      Active: telnyx.Bool(true),
      Name: telnyx.String("Okta"),
      Settings: telnyx.SettingsParam{
        IdpEntityID: "https://myorg.myidp.com/saml/metadata",
        IdpSSOTargetURL: "https://myorg.myidp.com/trust/saml2/http-post/sso",
        IdpCertFingerprint: "13:38:C7:BB:C9:FF:4A:70:38:3A:E3:D9:5C:CD:DB:2E:50:1E:80:A7",
        IdpCertFingerprintAlgorithm: telnyx.SettingsIdpCertFingerprintAlgorithmSha1,
      },
      ShortName: telnyx.String("myorg"),
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", authenticationProvider.Data)
}
```

## Deletes an authentication provider

`DELETE /authentication_providers/{id}`

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
  authenticationProvider, err := client.AuthenticationProviders.Delete(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", authenticationProvider.Data)
}
```

## List all billing groups

`GET /billing_groups`

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
  page, err := client.BillingGroups.List(context.TODO(), telnyx.BillingGroupListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a billing group

`POST /billing_groups`

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
  billingGroup, err := client.BillingGroups.New(context.TODO(), telnyx.BillingGroupNewParams{
    Name: telnyx.String("string"),
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", billingGroup.Data)
}
```

## Get a billing group

`GET /billing_groups/{id}`

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
  billingGroup, err := client.BillingGroups.Get(context.TODO(), "f5586561-8ff0-4291-a0ac-84fe544797bd")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", billingGroup.Data)
}
```

## Update a billing group

`PATCH /billing_groups/{id}`

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
  billingGroup, err := client.BillingGroups.Update(
    context.TODO(),
    "f5586561-8ff0-4291-a0ac-84fe544797bd",
    telnyx.BillingGroupUpdateParams{
      Name: telnyx.String("string"),
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", billingGroup.Data)
}
```

## Delete a billing group

`DELETE /billing_groups/{id}`

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
  billingGroup, err := client.BillingGroups.Delete(context.TODO(), "f5586561-8ff0-4291-a0ac-84fe544797bd")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", billingGroup.Data)
}
```

## List integration secrets

`GET /integration_secrets`

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
  page, err := client.IntegrationSecrets.List(context.TODO(), telnyx.IntegrationSecretListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a secret

`POST /integration_secrets`

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
  integrationSecret, err := client.IntegrationSecrets.New(context.TODO(), telnyx.IntegrationSecretNewParams{
    Identifier: "my_secret",
    Type: telnyx.IntegrationSecretNewParamsTypeBearer,
    Token: telnyx.String("my_secret_value"),
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", integrationSecret.Data)
}
```

## Delete an integration secret

`DELETE /integration_secrets/{id}`

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
  err := client.IntegrationSecrets.Delete(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
}
```

## List all Access IP Addresses

`GET /access_ip_address`

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
  page, err := client.AccessIPAddress.List(context.TODO(), telnyx.AccessIPAddressListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create new Access IP Address

`POST /access_ip_address`

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
  accessIPAddressResponse, err := client.AccessIPAddress.New(context.TODO(), telnyx.AccessIPAddressNewParams{
    IPAddress: "ip_address",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", accessIPAddressResponse.ID)
}
```

## Retrieve an access IP address

`GET /access_ip_address/{access_ip_address_id}`

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
  accessIPAddressResponse, err := client.AccessIPAddress.Get(context.TODO(), "access_ip_address_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", accessIPAddressResponse.ID)
}
```

## Delete access IP address

`DELETE /access_ip_address/{access_ip_address_id}`

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
  accessIPAddressResponse, err := client.AccessIPAddress.Delete(context.TODO(), "access_ip_address_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", accessIPAddressResponse.ID)
}
```

## List all Access IP Ranges

`GET /access_ip_ranges`

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
  page, err := client.AccessIPRanges.List(context.TODO(), telnyx.AccessIPRangeListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create new Access IP Range

`POST /access_ip_ranges`

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
  accessIPRange, err := client.AccessIPRanges.New(context.TODO(), telnyx.AccessIPRangeNewParams{
    CidrBlock: "cidr_block",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", accessIPRange.ID)
}
```

## Delete access IP ranges

`DELETE /access_ip_ranges/{access_ip_range_id}`

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
  accessIPRange, err := client.AccessIPRanges.Delete(context.TODO(), "access_ip_range_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", accessIPRange.ID)
}
```
