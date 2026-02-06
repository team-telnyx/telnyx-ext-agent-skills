---
name: telnyx-storage-java
description: >-
  Manage cloud storage buckets and objects using the S3-compatible Telnyx
  Storage API. This skill provides Java SDK examples.
metadata:
  author: telnyx
  product: storage
  language: java
---

# Telnyx Storage - Java

## Installation

```bash
// Add to pom.xml or build.gradle - see https://github.com/team-telnyx/telnyx-java
```

## Create Presigned Object URL

`POST /storage/buckets/{bucketName}/{objectName}/presigned_url`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.storage.buckets.BucketCreatePresignedUrlParams;
import com.telnyx.sdk.models.storage.buckets.BucketCreatePresignedUrlResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        BucketCreatePresignedUrlParams params = BucketCreatePresignedUrlParams.builder()
            .bucketName("")
            .objectName("")
            .build();
        BucketCreatePresignedUrlResponse response = client.storage().buckets().createPresignedUrl(params);
    }
}
```

## Get Bucket SSL Certificate

`GET /storage/buckets/{bucketName}/ssl_certificate`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.storage.buckets.sslcertificate.SslCertificateRetrieveParams;
import com.telnyx.sdk.models.storage.buckets.sslcertificate.SslCertificateRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SslCertificateRetrieveResponse sslCertificate = client.storage().buckets().sslCertificate().retrieve("");
    }
}
```

## Add SSL Certificate

`PUT /storage/buckets/{bucketName}/ssl_certificate`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.storage.buckets.sslcertificate.SslCertificateCreateParams;
import com.telnyx.sdk.models.storage.buckets.sslcertificate.SslCertificateCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SslCertificateCreateResponse sslCertificate = client.storage().buckets().sslCertificate().create("");
    }
}
```

## Remove SSL Certificate

`DELETE /storage/buckets/{bucketName}/ssl_certificate`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.storage.buckets.sslcertificate.SslCertificateDeleteParams;
import com.telnyx.sdk.models.storage.buckets.sslcertificate.SslCertificateDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SslCertificateDeleteResponse sslCertificate = client.storage().buckets().sslCertificate().delete("");
    }
}
```

## Get API Usage

`GET /storage/buckets/{bucketName}/usage/api`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.storage.buckets.usage.UsageGetApiUsageParams;
import com.telnyx.sdk.models.storage.buckets.usage.UsageGetApiUsageResponse;
import java.time.OffsetDateTime;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        UsageGetApiUsageParams params = UsageGetApiUsageParams.builder()
            .bucketName("")
            .filter(UsageGetApiUsageParams.Filter.builder()
                .endTime(OffsetDateTime.parse("2019-12-27T18:11:19.117Z"))
                .startTime(OffsetDateTime.parse("2019-12-27T18:11:19.117Z"))
                .build())
            .build();
        UsageGetApiUsageResponse response = client.storage().buckets().usage().getApiUsage(params);
    }
}
```

## Get Bucket Usage

`GET /storage/buckets/{bucketName}/usage/storage`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.storage.buckets.usage.UsageGetBucketUsageParams;
import com.telnyx.sdk.models.storage.buckets.usage.UsageGetBucketUsageResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        UsageGetBucketUsageResponse response = client.storage().buckets().usage().getBucketUsage("");
    }
}
```

## List Migration Source coverage

`GET /storage/migration_source_coverage`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.storage.StorageListMigrationSourceCoverageParams;
import com.telnyx.sdk.models.storage.StorageListMigrationSourceCoverageResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        StorageListMigrationSourceCoverageResponse response = client.storage().listMigrationSourceCoverage();
    }
}
```

## List all Migration Sources

`GET /storage/migration_sources`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.storage.migrationsources.MigrationSourceListParams;
import com.telnyx.sdk.models.storage.migrationsources.MigrationSourceListResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        MigrationSourceListResponse migrationSources = client.storage().migrationSources().list();
    }
}
```

## Create a Migration Source

`POST /storage/migration_sources`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.storage.migrationsources.MigrationSourceCreateParams;
import com.telnyx.sdk.models.storage.migrationsources.MigrationSourceCreateResponse;
import com.telnyx.sdk.models.storage.migrationsources.MigrationSourceParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        MigrationSourceParams params = MigrationSourceParams.builder()
            .bucketName("bucket_name")
            .provider(MigrationSourceParams.Provider.AWS)
            .providerAuth(MigrationSourceParams.ProviderAuth.builder().build())
            .build();
        MigrationSourceCreateResponse migrationSource = client.storage().migrationSources().create(params);
    }
}
```

## Get a Migration Source

`GET /storage/migration_sources/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.storage.migrationsources.MigrationSourceRetrieveParams;
import com.telnyx.sdk.models.storage.migrationsources.MigrationSourceRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        MigrationSourceRetrieveResponse migrationSource = client.storage().migrationSources().retrieve("");
    }
}
```

## Delete a Migration Source

`DELETE /storage/migration_sources/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.storage.migrationsources.MigrationSourceDeleteParams;
import com.telnyx.sdk.models.storage.migrationsources.MigrationSourceDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        MigrationSourceDeleteResponse migrationSource = client.storage().migrationSources().delete("");
    }
}
```

## List all Migrations

`GET /storage/migrations`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.storage.migrations.MigrationListParams;
import com.telnyx.sdk.models.storage.migrations.MigrationListResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        MigrationListResponse migrations = client.storage().migrations().list();
    }
}
```

## Create a Migration

`POST /storage/migrations`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.storage.migrations.MigrationCreateParams;
import com.telnyx.sdk.models.storage.migrations.MigrationCreateResponse;
import com.telnyx.sdk.models.storage.migrations.MigrationParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        MigrationParams params = MigrationParams.builder()
            .sourceId("source_id")
            .targetBucketName("target_bucket_name")
            .targetRegion("target_region")
            .build();
        MigrationCreateResponse migration = client.storage().migrations().create(params);
    }
}
```

## Get a Migration

`GET /storage/migrations/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.storage.migrations.MigrationRetrieveParams;
import com.telnyx.sdk.models.storage.migrations.MigrationRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        MigrationRetrieveResponse migration = client.storage().migrations().retrieve("");
    }
}
```

## Stop a Migration

`POST /storage/migrations/{id}/actions/stop`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.storage.migrations.actions.ActionStopParams;
import com.telnyx.sdk.models.storage.migrations.actions.ActionStopResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionStopResponse response = client.storage().migrations().actions().stop("");
    }
}
```
