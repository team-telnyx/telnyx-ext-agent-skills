---
name: telnyx-oauth-go
description: >-
  Implement OAuth 2.0 authentication flows for Telnyx API access. This skill
  provides Go SDK examples.
metadata:
  author: telnyx
  product: oauth
  language: go
---

# Telnyx Oauth - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## Authorization server metadata

`GET /.well-known/oauth-authorization-server`

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
  response, err := client.WellKnown.GetAuthorizationServerMetadata(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.AuthorizationEndpoint)
}
```

## Protected resource metadata

`GET /.well-known/oauth-protected-resource`

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
  response, err := client.WellKnown.GetProtectedResourceMetadata(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.AuthorizationServers)
}
```

## OAuth authorization endpoint

`GET /oauth/authorize`

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
  err := client.OAuth.GetAuthorize(context.TODO(), telnyx.OAuthGetAuthorizeParams{
    ClientID: "client_id",
    RedirectUri: "https://example.com",
    ResponseType: telnyx.OAuthGetAuthorizeParamsResponseTypeCode,
  })
  if err != nil {
    panic(err.Error())
  }
}
```

## List OAuth clients

`GET /oauth/clients`

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
  page, err := client.OAuthClients.List(context.TODO(), telnyx.OAuthClientListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create OAuth client

`POST /oauth/clients`

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
  oauthClient, err := client.OAuthClients.New(context.TODO(), telnyx.OAuthClientNewParams{
    AllowedGrantTypes: []string{"client_credentials"},
    AllowedScopes: []string{"admin"},
    ClientType: telnyx.OAuthClientNewParamsClientTypePublic,
    Name: "My OAuth client",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", oauthClient.Data)
}
```

## Get OAuth client

`GET /oauth/clients/{id}`

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
  oauthClient, err := client.OAuthClients.Get(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", oauthClient.Data)
}
```

## Update OAuth client

`PUT /oauth/clients/{id}`

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
  oauthClient, err := client.OAuthClients.Update(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.OAuthClientUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", oauthClient.Data)
}
```

## Delete OAuth client

`DELETE /oauth/clients/{id}`

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
  err := client.OAuthClients.Delete(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
}
```

## Get OAuth consent token

`GET /oauth/consent/{consent_token}`

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
  oauth, err := client.OAuth.Get(context.TODO(), "consent_token")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", oauth.Data)
}
```

## List OAuth grants

`GET /oauth/grants`

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
  page, err := client.OAuthGrants.List(context.TODO(), telnyx.OAuthGrantListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Get OAuth grant

`GET /oauth/grants/{id}`

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
  oauthGrant, err := client.OAuthGrants.Get(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", oauthGrant.Data)
}
```

## Revoke OAuth grant

`DELETE /oauth/grants/{id}`

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
  oauthGrant, err := client.OAuthGrants.Delete(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", oauthGrant.Data)
}
```

## Token introspection

`POST /oauth/introspect`

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
    option.WithClientID("My Client ID"),
    option.WithClientSecret("My Client Secret"),
  )
  response, err := client.OAuth.Introspect(context.TODO(), telnyx.OAuthIntrospectParams{
    Token: "token",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.ClientID)
}
```

## JSON Web Key Set

`GET /oauth/jwks`

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
  response, err := client.OAuth.GetJwks(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Keys)
}
```

## Dynamic client registration

`POST /oauth/register`

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
  response, err := client.OAuth.Register(context.TODO(), telnyx.OAuthRegisterParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.ClientID)
}
```

## OAuth token endpoint

`POST /oauth/token`

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
    option.WithClientID("My Client ID"),
    option.WithClientSecret("My Client Secret"),
  )
  response, err := client.OAuth.Token(context.TODO(), telnyx.OAuthTokenParams{
    GrantType: telnyx.OAuthTokenParamsGrantTypeClientCredentials,
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.AccessToken)
}
```
