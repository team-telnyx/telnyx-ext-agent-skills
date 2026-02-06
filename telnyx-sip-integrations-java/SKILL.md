---
name: telnyx-sip-integrations-java
description: >-
  Manage call recordings, media storage, Dialogflow integration, and external
  connections for SIP trunking. This skill provides Java SDK examples.
metadata:
  author: telnyx
  product: sip-integrations
  language: java
---

# Telnyx Sip Integrations - Java

## Installation

```bash
// Add to pom.xml or build.gradle - see https://github.com/team-telnyx/telnyx-java
```

## List all call recordings

`GET /recordings`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.recordings.RecordingListPage;
import com.telnyx.sdk.models.recordings.RecordingListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RecordingListPage page = client.recordings().list();
    }
}
```

## Retrieve a call recording

`GET /recordings/{recording_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.recordings.RecordingRetrieveParams;
import com.telnyx.sdk.models.recordings.RecordingRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RecordingRetrieveResponse recording = client.recordings().retrieve("recording_id");
    }
}
```

## Delete a call recording

`DELETE /recordings/{recording_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.recordings.RecordingDeleteParams;
import com.telnyx.sdk.models.recordings.RecordingDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RecordingDeleteResponse recording = client.recordings().delete("recording_id");
    }
}
```

## Delete a list of call recordings

`POST /recordings/actions/delete`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.recordings.actions.ActionDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionDeleteParams params = ActionDeleteParams.builder()
            .addId("428c31b6-7af4-4bcb-b7f5-5013ef9657c1")
            .addId("428c31b6-7af4-4bcb-b7f5-5013ef9657c2")
            .build();
        client.recordings().actions().delete(params);
    }
}
```

## List all recording transcriptions

`GET /recording_transcriptions`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.recordingtranscriptions.RecordingTranscriptionListParams;
import com.telnyx.sdk.models.recordingtranscriptions.RecordingTranscriptionListResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RecordingTranscriptionListResponse recordingTranscriptions = client.recordingTranscriptions().list();
    }
}
```

## Retrieve a recording transcription

`GET /recording_transcriptions/{recording_transcription_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.recordingtranscriptions.RecordingTranscriptionRetrieveParams;
import com.telnyx.sdk.models.recordingtranscriptions.RecordingTranscriptionRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RecordingTranscriptionRetrieveResponse recordingTranscription = client.recordingTranscriptions().retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Delete a recording transcription

`DELETE /recording_transcriptions/{recording_transcription_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.recordingtranscriptions.RecordingTranscriptionDeleteParams;
import com.telnyx.sdk.models.recordingtranscriptions.RecordingTranscriptionDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RecordingTranscriptionDeleteResponse recordingTranscription = client.recordingTranscriptions().delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Retrieve a stored credential

`GET /custom_storage_credentials/{connection_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.customstoragecredentials.CustomStorageCredentialRetrieveParams;
import com.telnyx.sdk.models.customstoragecredentials.CustomStorageCredentialRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CustomStorageCredentialRetrieveResponse customStorageCredential = client.customStorageCredentials().retrieve("connection_id");
    }
}
```

## Create a custom storage credential

`POST /custom_storage_credentials/{connection_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.customstoragecredentials.CustomStorageConfiguration;
import com.telnyx.sdk.models.customstoragecredentials.CustomStorageCredentialCreateParams;
import com.telnyx.sdk.models.customstoragecredentials.CustomStorageCredentialCreateResponse;
import com.telnyx.sdk.models.customstoragecredentials.GcsConfigurationData;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CustomStorageCredentialCreateParams params = CustomStorageCredentialCreateParams.builder()
            .connectionId("connection_id")
            .customStorageConfiguration(CustomStorageConfiguration.builder()
                .backend(CustomStorageConfiguration.Backend.GCS)
                .configuration(GcsConfigurationData.builder()
                    .backend(GcsConfigurationData.Backend.GCS)
                    .build())
                .build())
            .build();
        CustomStorageCredentialCreateResponse customStorageCredential = client.customStorageCredentials().create(params);
    }
}
```

## Update a stored credential

`PUT /custom_storage_credentials/{connection_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.customstoragecredentials.CustomStorageConfiguration;
import com.telnyx.sdk.models.customstoragecredentials.CustomStorageCredentialUpdateParams;
import com.telnyx.sdk.models.customstoragecredentials.CustomStorageCredentialUpdateResponse;
import com.telnyx.sdk.models.customstoragecredentials.GcsConfigurationData;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CustomStorageCredentialUpdateParams params = CustomStorageCredentialUpdateParams.builder()
            .connectionId("connection_id")
            .customStorageConfiguration(CustomStorageConfiguration.builder()
                .backend(CustomStorageConfiguration.Backend.GCS)
                .configuration(GcsConfigurationData.builder()
                    .backend(GcsConfigurationData.Backend.GCS)
                    .build())
                .build())
            .build();
        CustomStorageCredentialUpdateResponse customStorageCredential = client.customStorageCredentials().update(params);
    }
}
```

## Delete a stored credential

`DELETE /custom_storage_credentials/{connection_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.customstoragecredentials.CustomStorageCredentialDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        client.customStorageCredentials().delete("connection_id");
    }
}
```

## Retrieve stored Dialogflow Connection

`GET /dialogflow_connections/{connection_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.dialogflowconnections.DialogflowConnectionRetrieveParams;
import com.telnyx.sdk.models.dialogflowconnections.DialogflowConnectionRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        DialogflowConnectionRetrieveResponse dialogflowConnection = client.dialogflowConnections().retrieve("connection_id");
    }
}
```

## Create a Dialogflow Connection

`POST /dialogflow_connections/{connection_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.core.JsonValue;
import com.telnyx.sdk.models.dialogflowconnections.DialogflowConnectionCreateParams;
import com.telnyx.sdk.models.dialogflowconnections.DialogflowConnectionCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        DialogflowConnectionCreateParams params = DialogflowConnectionCreateParams.builder()
            .connectionId("connection_id")
            .serviceAccount(DialogflowConnectionCreateParams.ServiceAccount.builder()
                .putAdditionalProperty("type", JsonValue.from("bar"))
                .putAdditionalProperty("project_id", JsonValue.from("bar"))
                .putAdditionalProperty("private_key_id", JsonValue.from("bar"))
                .putAdditionalProperty("private_key", JsonValue.from("bar"))
                .putAdditionalProperty("client_email", JsonValue.from("bar"))
                .putAdditionalProperty("client_id", JsonValue.from("bar"))
                .putAdditionalProperty("auth_uri", JsonValue.from("bar"))
                .putAdditionalProperty("token_uri", JsonValue.from("bar"))
                .putAdditionalProperty("auth_provider_x509_cert_url", JsonValue.from("bar"))
                .putAdditionalProperty("client_x509_cert_url", JsonValue.from("bar"))
                .build())
            .build();
        DialogflowConnectionCreateResponse dialogflowConnection = client.dialogflowConnections().create(params);
    }
}
```

## Update stored Dialogflow Connection

`PUT /dialogflow_connections/{connection_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.core.JsonValue;
import com.telnyx.sdk.models.dialogflowconnections.DialogflowConnectionUpdateParams;
import com.telnyx.sdk.models.dialogflowconnections.DialogflowConnectionUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        DialogflowConnectionUpdateParams params = DialogflowConnectionUpdateParams.builder()
            .connectionId("connection_id")
            .serviceAccount(DialogflowConnectionUpdateParams.ServiceAccount.builder()
                .putAdditionalProperty("type", JsonValue.from("bar"))
                .putAdditionalProperty("project_id", JsonValue.from("bar"))
                .putAdditionalProperty("private_key_id", JsonValue.from("bar"))
                .putAdditionalProperty("private_key", JsonValue.from("bar"))
                .putAdditionalProperty("client_email", JsonValue.from("bar"))
                .putAdditionalProperty("client_id", JsonValue.from("bar"))
                .putAdditionalProperty("auth_uri", JsonValue.from("bar"))
                .putAdditionalProperty("token_uri", JsonValue.from("bar"))
                .putAdditionalProperty("auth_provider_x509_cert_url", JsonValue.from("bar"))
                .putAdditionalProperty("client_x509_cert_url", JsonValue.from("bar"))
                .build())
            .build();
        DialogflowConnectionUpdateResponse dialogflowConnection = client.dialogflowConnections().update(params);
    }
}
```

## Delete stored Dialogflow Connection

`DELETE /dialogflow_connections/{connection_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.dialogflowconnections.DialogflowConnectionDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        client.dialogflowConnections().delete("connection_id");
    }
}
```

## List all External Connections

`GET /external_connections`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.ExternalConnectionListPage;
import com.telnyx.sdk.models.externalconnections.ExternalConnectionListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ExternalConnectionListPage page = client.externalConnections().list();
    }
}
```

## Creates an External Connection

`POST /external_connections`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.ExternalConnectionCreateParams;
import com.telnyx.sdk.models.externalconnections.ExternalConnectionCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ExternalConnectionCreateParams params = ExternalConnectionCreateParams.builder()
            .externalSipConnection(ExternalConnectionCreateParams.ExternalSipConnection.ZOOM)
            .outbound(ExternalConnectionCreateParams.Outbound.builder().build())
            .build();
        ExternalConnectionCreateResponse externalConnection = client.externalConnections().create(params);
    }
}
```

## Retrieve an External Connection

`GET /external_connections/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.ExternalConnectionRetrieveParams;
import com.telnyx.sdk.models.externalconnections.ExternalConnectionRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ExternalConnectionRetrieveResponse externalConnection = client.externalConnections().retrieve("id");
    }
}
```

## Update an External Connection

`PATCH /external_connections/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.ExternalConnectionUpdateParams;
import com.telnyx.sdk.models.externalconnections.ExternalConnectionUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ExternalConnectionUpdateParams params = ExternalConnectionUpdateParams.builder()
            .id("id")
            .outbound(ExternalConnectionUpdateParams.Outbound.builder()
                .outboundVoiceProfileId("outbound_voice_profile_id")
                .build())
            .build();
        ExternalConnectionUpdateResponse externalConnection = client.externalConnections().update(params);
    }
}
```

## Deletes an External Connection

`DELETE /external_connections/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.ExternalConnectionDeleteParams;
import com.telnyx.sdk.models.externalconnections.ExternalConnectionDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ExternalConnectionDeleteResponse externalConnection = client.externalConnections().delete("id");
    }
}
```

## List all civic addresses and locations

`GET /external_connections/{id}/civic_addresses`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.civicaddresses.CivicAddressListParams;
import com.telnyx.sdk.models.externalconnections.civicaddresses.CivicAddressListResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CivicAddressListResponse civicAddresses = client.externalConnections().civicAddresses().list("id");
    }
}
```

## Retrieve a Civic Address

`GET /external_connections/{id}/civic_addresses/{address_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.civicaddresses.CivicAddressRetrieveParams;
import com.telnyx.sdk.models.externalconnections.civicaddresses.CivicAddressRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CivicAddressRetrieveParams params = CivicAddressRetrieveParams.builder()
            .id("id")
            .addressId("318fb664-d341-44d2-8405-e6bfb9ced6d9")
            .build();
        CivicAddressRetrieveResponse civicAddress = client.externalConnections().civicAddresses().retrieve(params);
    }
}
```

## Update a location's static emergency address

`PATCH /external_connections/{id}/locations/{location_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.ExternalConnectionUpdateLocationParams;
import com.telnyx.sdk.models.externalconnections.ExternalConnectionUpdateLocationResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ExternalConnectionUpdateLocationParams params = ExternalConnectionUpdateLocationParams.builder()
            .id("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .locationId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .staticEmergencyAddressId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .build();
        ExternalConnectionUpdateLocationResponse response = client.externalConnections().updateLocation(params);
    }
}
```

## List all phone numbers

`GET /external_connections/{id}/phone_numbers`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.phonenumbers.PhoneNumberListPage;
import com.telnyx.sdk.models.externalconnections.phonenumbers.PhoneNumberListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PhoneNumberListPage page = client.externalConnections().phoneNumbers().list("id");
    }
}
```

## Retrieve a phone number

`GET /external_connections/{id}/phone_numbers/{phone_number_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.phonenumbers.PhoneNumberRetrieveParams;
import com.telnyx.sdk.models.externalconnections.phonenumbers.PhoneNumberRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PhoneNumberRetrieveParams params = PhoneNumberRetrieveParams.builder()
            .id("id")
            .phoneNumberId("1234567889")
            .build();
        PhoneNumberRetrieveResponse phoneNumber = client.externalConnections().phoneNumbers().retrieve(params);
    }
}
```

## Update a phone number

`PATCH /external_connections/{id}/phone_numbers/{phone_number_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.phonenumbers.PhoneNumberUpdateParams;
import com.telnyx.sdk.models.externalconnections.phonenumbers.PhoneNumberUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PhoneNumberUpdateParams params = PhoneNumberUpdateParams.builder()
            .id("id")
            .phoneNumberId("1234567889")
            .build();
        PhoneNumberUpdateResponse phoneNumber = client.externalConnections().phoneNumbers().update(params);
    }
}
```

## List all Releases

`GET /external_connections/{id}/releases`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.releases.ReleaseListPage;
import com.telnyx.sdk.models.externalconnections.releases.ReleaseListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ReleaseListPage page = client.externalConnections().releases().list("id");
    }
}
```

## Retrieve a Release request

`GET /external_connections/{id}/releases/{release_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.releases.ReleaseRetrieveParams;
import com.telnyx.sdk.models.externalconnections.releases.ReleaseRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ReleaseRetrieveParams params = ReleaseRetrieveParams.builder()
            .id("id")
            .releaseId("7b6a6449-b055-45a6-81f6-f6f0dffa4cc6")
            .build();
        ReleaseRetrieveResponse release = client.externalConnections().releases().retrieve(params);
    }
}
```

## List all Upload requests

`GET /external_connections/{id}/uploads`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.uploads.UploadListPage;
import com.telnyx.sdk.models.externalconnections.uploads.UploadListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        UploadListPage page = client.externalConnections().uploads().list("id");
    }
}
```

## Creates an Upload request

`POST /external_connections/{id}/uploads`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.uploads.UploadCreateParams;
import com.telnyx.sdk.models.externalconnections.uploads.UploadCreateResponse;
import java.util.List;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        UploadCreateParams params = UploadCreateParams.builder()
            .id("id")
            .numberIds(List.of(
              "3920457616934164700",
              "3920457616934164701",
              "3920457616934164702",
              "3920457616934164703"
            ))
            .build();
        UploadCreateResponse upload = client.externalConnections().uploads().create(params);
    }
}
```

## Refresh the status of all Upload requests

`POST /external_connections/{id}/uploads/refresh`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.uploads.UploadRefreshStatusParams;
import com.telnyx.sdk.models.externalconnections.uploads.UploadRefreshStatusResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        UploadRefreshStatusResponse response = client.externalConnections().uploads().refreshStatus("id");
    }
}
```

## Get the count of pending upload requests

`GET /external_connections/{id}/uploads/status`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.uploads.UploadPendingCountParams;
import com.telnyx.sdk.models.externalconnections.uploads.UploadPendingCountResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        UploadPendingCountResponse response = client.externalConnections().uploads().pendingCount("id");
    }
}
```

## Retrieve an Upload request

`GET /external_connections/{id}/uploads/{ticket_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.uploads.UploadRetrieveParams;
import com.telnyx.sdk.models.externalconnections.uploads.UploadRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        UploadRetrieveParams params = UploadRetrieveParams.builder()
            .id("id")
            .ticketId("7b6a6449-b055-45a6-81f6-f6f0dffa4cc6")
            .build();
        UploadRetrieveResponse upload = client.externalConnections().uploads().retrieve(params);
    }
}
```

## Retry an Upload request

`POST /external_connections/{id}/uploads/{ticket_id}/retry`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.uploads.UploadRetryParams;
import com.telnyx.sdk.models.externalconnections.uploads.UploadRetryResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        UploadRetryParams params = UploadRetryParams.builder()
            .id("id")
            .ticketId("7b6a6449-b055-45a6-81f6-f6f0dffa4cc6")
            .build();
        UploadRetryResponse response = client.externalConnections().uploads().retry(params);
    }
}
```

## List all log messages

`GET /external_connections/log_messages`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.logmessages.LogMessageListPage;
import com.telnyx.sdk.models.externalconnections.logmessages.LogMessageListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        LogMessageListPage page = client.externalConnections().logMessages().list();
    }
}
```

## Retrieve a log message

`GET /external_connections/log_messages/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.logmessages.LogMessageRetrieveParams;
import com.telnyx.sdk.models.externalconnections.logmessages.LogMessageRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        LogMessageRetrieveResponse logMessage = client.externalConnections().logMessages().retrieve("id");
    }
}
```

## Dismiss a log message

`DELETE /external_connections/log_messages/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.externalconnections.logmessages.LogMessageDismissParams;
import com.telnyx.sdk.models.externalconnections.logmessages.LogMessageDismissResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        LogMessageDismissResponse response = client.externalConnections().logMessages().dismiss("id");
    }
}
```

## Refresh Operator Connect integration

`POST /operator_connect/actions/refresh`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.operatorconnect.actions.ActionRefreshParams;
import com.telnyx.sdk.models.operatorconnect.actions.ActionRefreshResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionRefreshResponse response = client.operatorConnect().actions().refresh();
    }
}
```

## List uploaded media

`GET /media`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.media.MediaListParams;
import com.telnyx.sdk.models.media.MediaListResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        MediaListResponse media = client.media().list();
    }
}
```

## Upload media

`POST /media`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.media.MediaUploadParams;
import com.telnyx.sdk.models.media.MediaUploadResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        MediaUploadParams params = MediaUploadParams.builder()
            .mediaUrl("http://www.example.com/audio.mp3")
            .build();
        MediaUploadResponse response = client.media().upload(params);
    }
}
```

## Retrieve stored media

`GET /media/{media_name}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.media.MediaRetrieveParams;
import com.telnyx.sdk.models.media.MediaRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        MediaRetrieveResponse media = client.media().retrieve("media_name");
    }
}
```

## Update stored media

`PUT /media/{media_name}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.media.MediaUpdateParams;
import com.telnyx.sdk.models.media.MediaUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        MediaUpdateResponse media = client.media().update("media_name");
    }
}
```

## Deletes stored media

`DELETE /media/{media_name}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.media.MediaDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        client.media().delete("media_name");
    }
}
```

## Download stored media

`GET /media/{media_name}/download`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.core.http.HttpResponse;
import com.telnyx.sdk.models.media.MediaDownloadParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        HttpResponse response = client.media().download("media_name");
    }
}
```
