---
name: telnyx-numbers-compliance-go
description: >-
  Manage regulatory requirements, number bundles, supporting documents, and
  verified numbers for compliance. This skill provides Go SDK examples.
metadata:
  author: telnyx
  product: numbers-compliance
  language: go
---

# Telnyx Numbers Compliance - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## Retrieve Bundles

`GET /bundle_pricing/billing_bundles`

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
  page, err := client.BundlePricing.BillingBundles.List(context.TODO(), telnyx.BundlePricingBillingBundleListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Get Bundle By Id

`GET /bundle_pricing/billing_bundles/{bundle_id}`

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
  billingBundle, err := client.BundlePricing.BillingBundles.Get(
    context.TODO(),
    "8661948c-a386-4385-837f-af00f40f111a",
    telnyx.BundlePricingBillingBundleGetParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", billingBundle.Data)
}
```

## Get User Bundles

`GET /bundle_pricing/user_bundles`

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
  page, err := client.BundlePricing.UserBundles.List(context.TODO(), telnyx.BundlePricingUserBundleListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create User Bundles

`POST /bundle_pricing/user_bundles/bulk`

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
  userBundle, err := client.BundlePricing.UserBundles.New(context.TODO(), telnyx.BundlePricingUserBundleNewParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", userBundle.Data)
}
```

## Get Unused User Bundles

`GET /bundle_pricing/user_bundles/unused`

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
  response, err := client.BundlePricing.UserBundles.ListUnused(context.TODO(), telnyx.BundlePricingUserBundleListUnusedParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Get User Bundle by Id

`GET /bundle_pricing/user_bundles/{user_bundle_id}`

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
  userBundle, err := client.BundlePricing.UserBundles.Get(
    context.TODO(),
    "ca1d2263-d1f1-43ac-ba53-248e7a4bb26a",
    telnyx.BundlePricingUserBundleGetParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", userBundle.Data)
}
```

## Deactivate User Bundle

`DELETE /bundle_pricing/user_bundles/{user_bundle_id}`

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
  response, err := client.BundlePricing.UserBundles.Deactivate(
    context.TODO(),
    "ca1d2263-d1f1-43ac-ba53-248e7a4bb26a",
    telnyx.BundlePricingUserBundleDeactivateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Get User Bundle Resources

`GET /bundle_pricing/user_bundles/{user_bundle_id}/resources`

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
  response, err := client.BundlePricing.UserBundles.ListResources(
    context.TODO(),
    "ca1d2263-d1f1-43ac-ba53-248e7a4bb26a",
    telnyx.BundlePricingUserBundleListResourcesParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List all document links

`GET /document_links`

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
  page, err := client.DocumentLinks.List(context.TODO(), telnyx.DocumentLinkListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## List all documents

`GET /documents`

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
  page, err := client.Documents.List(context.TODO(), telnyx.DocumentListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Upload a document

`POST /documents`

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
  response, err := client.Documents.UploadJson(context.TODO(), telnyx.DocumentUploadJsonParams{
    Document: telnyx.DocumentUploadJsonParamsDocument{

    },
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Retrieve a document

`GET /documents/{id}`

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
  document, err := client.Documents.Get(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", document.Data)
}
```

## Update a document

`PATCH /documents/{id}`

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
  document, err := client.Documents.Update(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.DocumentUpdateParams{
      DocServiceDocument: telnyx.DocServiceDocumentParam{

      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", document.Data)
}
```

## Delete a document

`DELETE /documents/{id}`

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
  document, err := client.Documents.Delete(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", document.Data)
}
```

## Download a document

`GET /documents/{id}/download`

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
  response, err := client.Documents.Download(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response)
}
```

## Generate a temporary download link for a document

`GET /documents/{id}/download_link`

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
  response, err := client.Documents.GenerateDownloadLink(context.TODO(), "550e8400-e29b-41d4-a716-446655440000")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List all requirements

`GET /requirements`

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
  page, err := client.Requirements.List(context.TODO(), telnyx.RequirementListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Retrieve a document requirement

`GET /requirements/{id}`

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
  requirement, err := client.Requirements.Get(context.TODO(), "a9dad8d5-fdbd-49d7-aa23-39bb08a5ebaa")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", requirement.Data)
}
```

## List all requirement types

`GET /requirement_types`

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
  requirementTypes, err := client.RequirementTypes.List(context.TODO(), telnyx.RequirementTypeListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", requirementTypes.Data)
}
```

## Retrieve a requirement types

`GET /requirement_types/{id}`

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
  requirementType, err := client.RequirementTypes.Get(context.TODO(), "a38c217a-8019-48f8-bff6-0fdd9939075b")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", requirementType.Data)
}
```

## Retrieve regulatory requirements

`GET /regulatory_requirements`

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
  regulatoryRequirement, err := client.RegulatoryRequirements.Get(context.TODO(), telnyx.RegulatoryRequirementGetParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", regulatoryRequirement.Data)
}
```

## List requirement groups

`GET /requirement_groups`

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
  requirementGroups, err := client.RequirementGroups.List(context.TODO(), telnyx.RequirementGroupListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", requirementGroups)
}
```

## Create a new requirement group

`POST /requirement_groups`

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
  requirementGroup, err := client.RequirementGroups.New(context.TODO(), telnyx.RequirementGroupNewParams{
    Action: telnyx.RequirementGroupNewParamsActionOrdering,
    CountryCode: "US",
    PhoneNumberType: telnyx.RequirementGroupNewParamsPhoneNumberTypeLocal,
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", requirementGroup.ID)
}
```

## Get a single requirement group by ID

`GET /requirement_groups/{id}`

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
  requirementGroup, err := client.RequirementGroups.Get(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", requirementGroup.ID)
}
```

## Update requirement values in requirement group

`PATCH /requirement_groups/{id}`

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
  requirementGroup, err := client.RequirementGroups.Update(
    context.TODO(),
    "id",
    telnyx.RequirementGroupUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", requirementGroup.ID)
}
```

## Delete a requirement group by ID

`DELETE /requirement_groups/{id}`

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
  requirementGroup, err := client.RequirementGroups.Delete(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", requirementGroup.ID)
}
```

## Submit a Requirement Group for Approval

`POST /requirement_groups/{id}/submit_for_approval`

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
  requirementGroup, err := client.RequirementGroups.SubmitForApproval(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", requirementGroup.ID)
}
```

## List all Verified Numbers

`GET /verified_numbers`

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
  page, err := client.VerifiedNumbers.List(context.TODO(), telnyx.VerifiedNumberListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Request phone number verification

`POST /verified_numbers`

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
  verifiedNumber, err := client.VerifiedNumbers.New(context.TODO(), telnyx.VerifiedNumberNewParams{
    PhoneNumber: "+15551234567",
    VerificationMethod: telnyx.VerifiedNumberNewParamsVerificationMethodSMS,
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", verifiedNumber.PhoneNumber)
}
```

## Retrieve a verified number

`GET /verified_numbers/{phone_number}`

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
  verifiedNumberDataWrapper, err := client.VerifiedNumbers.Get(context.TODO(), "+15551234567")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", verifiedNumberDataWrapper.Data)
}
```

## Delete a verified number

`DELETE /verified_numbers/{phone_number}`

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
  verifiedNumberDataWrapper, err := client.VerifiedNumbers.Delete(context.TODO(), "+15551234567")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", verifiedNumberDataWrapper.Data)
}
```

## Submit verification code

`POST /verified_numbers/{phone_number}/actions/verify`

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
  verifiedNumberDataWrapper, err := client.VerifiedNumbers.Actions.SubmitVerificationCode(
    context.TODO(),
    "+15551234567",
    telnyx.VerifiedNumberActionSubmitVerificationCodeParams{
      VerificationCode: "123456",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", verifiedNumberDataWrapper.Data)
}
```
