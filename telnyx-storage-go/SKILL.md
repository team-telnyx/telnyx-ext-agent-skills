---
name: telnyx-storage-go
description: >-
  Manage cloud storage buckets and objects using the S3-compatible Telnyx
  Storage API. This skill provides Go SDK examples.
metadata:
  author: telnyx
  product: storage
  language: go
---

# Telnyx Storage - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## Create Presigned Object URL

`POST /storage/buckets/{bucketName}/{objectName}/presigned_url`

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
  response, err := client.Storage.Buckets.NewPresignedURL(
    context.TODO(),
    "",
    telnyx.StorageBucketNewPresignedURLParams{
      BucketName: "",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Content)
}
```

## Get Bucket SSL Certificate

`GET /storage/buckets/{bucketName}/ssl_certificate`

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
  sslCertificate, err := client.Storage.Buckets.SslCertificate.Get(context.TODO(), "")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", sslCertificate.Data)
}
```

## Add SSL Certificate

`PUT /storage/buckets/{bucketName}/ssl_certificate`

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
  sslCertificate, err := client.Storage.Buckets.SslCertificate.New(
    context.TODO(),
    "",
    telnyx.StorageBucketSslCertificateNewParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", sslCertificate.Data)
}
```

## Remove SSL Certificate

`DELETE /storage/buckets/{bucketName}/ssl_certificate`

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
  sslCertificate, err := client.Storage.Buckets.SslCertificate.Delete(context.TODO(), "")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", sslCertificate.Data)
}
```

## Get API Usage

`GET /storage/buckets/{bucketName}/usage/api`

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
  response, err := client.Storage.Buckets.Usage.GetAPIUsage(
    context.TODO(),
    "",
    telnyx.StorageBucketUsageGetAPIUsageParams{
      Filter: telnyx.StorageBucketUsageGetAPIUsageParamsFilter{
        EndTime: time.Now(),
        StartTime: time.Now(),
      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Get Bucket Usage

`GET /storage/buckets/{bucketName}/usage/storage`

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
  response, err := client.Storage.Buckets.Usage.GetBucketUsage(context.TODO(), "")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List Migration Source coverage

`GET /storage/migration_source_coverage`

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
  response, err := client.Storage.ListMigrationSourceCoverage(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List all Migration Sources

`GET /storage/migration_sources`

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
  migrationSources, err := client.Storage.MigrationSources.List(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", migrationSources.Data)
}
```

## Create a Migration Source

`POST /storage/migration_sources`

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
  migrationSource, err := client.Storage.MigrationSources.New(context.TODO(), telnyx.StorageMigrationSourceNewParams{
    MigrationSourceParams: telnyx.MigrationSourceParams{
      BucketName: "bucket_name",
      Provider: telnyx.MigrationSourceParamsProviderAws,
      ProviderAuth: telnyx.MigrationSourceParamsProviderAuth{

      },
    },
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", migrationSource.Data)
}
```

## Get a Migration Source

`GET /storage/migration_sources/{id}`

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
  migrationSource, err := client.Storage.MigrationSources.Get(context.TODO(), "")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", migrationSource.Data)
}
```

## Delete a Migration Source

`DELETE /storage/migration_sources/{id}`

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
  migrationSource, err := client.Storage.MigrationSources.Delete(context.TODO(), "")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", migrationSource.Data)
}
```

## List all Migrations

`GET /storage/migrations`

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
  migrations, err := client.Storage.Migrations.List(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", migrations.Data)
}
```

## Create a Migration

`POST /storage/migrations`

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
  migration, err := client.Storage.Migrations.New(context.TODO(), telnyx.StorageMigrationNewParams{
    MigrationParams: telnyx.MigrationParams{
      SourceID: "source_id",
      TargetBucketName: "target_bucket_name",
      TargetRegion: "target_region",
    },
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", migration.Data)
}
```

## Get a Migration

`GET /storage/migrations/{id}`

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
  migration, err := client.Storage.Migrations.Get(context.TODO(), "")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", migration.Data)
}
```

## Stop a Migration

`POST /storage/migrations/{id}/actions/stop`

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
  response, err := client.Storage.Migrations.Actions.Stop(context.TODO(), "")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```
