---
name: telnyx-texml-java
description: >-
  Build voice applications using TeXML markup language (TwiML-compatible).
  Manage applications, calls, conferences, recordings, queues, and streams. This
  skill provides Java SDK examples.
metadata:
  author: telnyx
  product: texml
  language: java
---

# Telnyx Texml - Java

## Installation

```bash
// Add to pom.xml or build.gradle - see https://github.com/team-telnyx/telnyx-java
```

## List all TeXML Applications

`GET /texml_applications`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texmlapplications.TexmlApplicationListPage;
import com.telnyx.sdk.models.texmlapplications.TexmlApplicationListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        TexmlApplicationListPage page = client.texmlApplications().list();
    }
}
```

## Creates a TeXML Application

`POST /texml_applications`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texmlapplications.TexmlApplicationCreateParams;
import com.telnyx.sdk.models.texmlapplications.TexmlApplicationCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        TexmlApplicationCreateParams params = TexmlApplicationCreateParams.builder()
            .friendlyName("call-router")
            .voiceUrl("https://example.com")
            .build();
        TexmlApplicationCreateResponse texmlApplication = client.texmlApplications().create(params);
    }
}
```

## Retrieve a TeXML Application

`GET /texml_applications/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texmlapplications.TexmlApplicationRetrieveParams;
import com.telnyx.sdk.models.texmlapplications.TexmlApplicationRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        TexmlApplicationRetrieveResponse texmlApplication = client.texmlApplications().retrieve("1293384261075731499");
    }
}
```

## Update a TeXML Application

`PATCH /texml_applications/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texmlapplications.TexmlApplicationUpdateParams;
import com.telnyx.sdk.models.texmlapplications.TexmlApplicationUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        TexmlApplicationUpdateParams params = TexmlApplicationUpdateParams.builder()
            .id("1293384261075731499")
            .friendlyName("call-router")
            .voiceUrl("https://example.com")
            .build();
        TexmlApplicationUpdateResponse texmlApplication = client.texmlApplications().update(params);
    }
}
```

## Deletes a TeXML Application

`DELETE /texml_applications/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texmlapplications.TexmlApplicationDeleteParams;
import com.telnyx.sdk.models.texmlapplications.TexmlApplicationDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        TexmlApplicationDeleteResponse texmlApplication = client.texmlApplications().delete("1293384261075731499");
    }
}
```

## Fetch multiple call resources

`GET /texml/Accounts/{account_sid}/Calls`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.calls.CallRetrieveCallsParams;
import com.telnyx.sdk.models.texml.accounts.calls.CallRetrieveCallsResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CallRetrieveCallsResponse response = client.texml().accounts().calls().retrieveCalls("account_sid");
    }
}
```

## Initiate an outbound call

`POST /texml/Accounts/{account_sid}/Calls`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.calls.CallCallsParams;
import com.telnyx.sdk.models.texml.accounts.calls.CallCallsResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CallCallsParams params = CallCallsParams.builder()
            .accountSid("account_sid")
            .applicationSid("example-app-sid")
            .from("+13120001234")
            .to("+13121230000")
            .build();
        CallCallsResponse response = client.texml().accounts().calls().calls(params);
    }
}
```

## Fetch a call

`GET /texml/Accounts/{account_sid}/Calls/{call_sid}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.calls.CallRetrieveParams;
import com.telnyx.sdk.models.texml.accounts.calls.CallRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CallRetrieveParams params = CallRetrieveParams.builder()
            .accountSid("account_sid")
            .callSid("call_sid")
            .build();
        CallRetrieveResponse call = client.texml().accounts().calls().retrieve(params);
    }
}
```

## Update call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.calls.CallUpdateParams;
import com.telnyx.sdk.models.texml.accounts.calls.CallUpdateResponse;
import com.telnyx.sdk.models.texml.accounts.calls.UpdateCall;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CallUpdateParams params = CallUpdateParams.builder()
            .accountSid("account_sid")
            .callSid("call_sid")
            .updateCall(UpdateCall.builder().build())
            .build();
        CallUpdateResponse call = client.texml().accounts().calls().update(params);
    }
}
```

## List conference participants

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.conferences.participants.ParticipantRetrieveParticipantsParams;
import com.telnyx.sdk.models.texml.accounts.conferences.participants.ParticipantRetrieveParticipantsResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ParticipantRetrieveParticipantsParams params = ParticipantRetrieveParticipantsParams.builder()
            .accountSid("account_sid")
            .conferenceSid("conference_sid")
            .build();
        ParticipantRetrieveParticipantsResponse response = client.texml().accounts().conferences().participants().retrieveParticipants(params);
    }
}
```

## Dial a new conference participant

`POST /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.conferences.participants.ParticipantParticipantsParams;
import com.telnyx.sdk.models.texml.accounts.conferences.participants.ParticipantParticipantsResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ParticipantParticipantsParams params = ParticipantParticipantsParams.builder()
            .accountSid("account_sid")
            .conferenceSid("conference_sid")
            .build();
        ParticipantParticipantsResponse response = client.texml().accounts().conferences().participants().participants(params);
    }
}
```

## Get conference participant resource

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants/{call_sid_or_participant_label}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.conferences.participants.ParticipantRetrieveParams;
import com.telnyx.sdk.models.texml.accounts.conferences.participants.ParticipantRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ParticipantRetrieveParams params = ParticipantRetrieveParams.builder()
            .accountSid("account_sid")
            .conferenceSid("conference_sid")
            .callSidOrParticipantLabel("call_sid_or_participant_label")
            .build();
        ParticipantRetrieveResponse participant = client.texml().accounts().conferences().participants().retrieve(params);
    }
}
```

## Update a conference participant

`POST /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants/{call_sid_or_participant_label}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.conferences.participants.ParticipantUpdateParams;
import com.telnyx.sdk.models.texml.accounts.conferences.participants.ParticipantUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ParticipantUpdateParams params = ParticipantUpdateParams.builder()
            .accountSid("account_sid")
            .conferenceSid("conference_sid")
            .callSidOrParticipantLabel("call_sid_or_participant_label")
            .build();
        ParticipantUpdateResponse participant = client.texml().accounts().conferences().participants().update(params);
    }
}
```

## Delete a conference participant

`DELETE /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants/{call_sid_or_participant_label}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.conferences.participants.ParticipantDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ParticipantDeleteParams params = ParticipantDeleteParams.builder()
            .accountSid("account_sid")
            .conferenceSid("conference_sid")
            .callSidOrParticipantLabel("call_sid_or_participant_label")
            .build();
        client.texml().accounts().conferences().participants().delete(params);
    }
}
```

## List conference resources

`GET /texml/Accounts/{account_sid}/Conferences`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.conferences.ConferenceRetrieveConferencesParams;
import com.telnyx.sdk.models.texml.accounts.conferences.ConferenceRetrieveConferencesResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ConferenceRetrieveConferencesResponse response = client.texml().accounts().conferences().retrieveConferences("account_sid");
    }
}
```

## Fetch a conference resource

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.conferences.ConferenceRetrieveParams;
import com.telnyx.sdk.models.texml.accounts.conferences.ConferenceRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ConferenceRetrieveParams params = ConferenceRetrieveParams.builder()
            .accountSid("account_sid")
            .conferenceSid("conference_sid")
            .build();
        ConferenceRetrieveResponse conference = client.texml().accounts().conferences().retrieve(params);
    }
}
```

## Update a conference resource

`POST /texml/Accounts/{account_sid}/Conferences/{conference_sid}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.conferences.ConferenceUpdateParams;
import com.telnyx.sdk.models.texml.accounts.conferences.ConferenceUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ConferenceUpdateParams params = ConferenceUpdateParams.builder()
            .accountSid("account_sid")
            .conferenceSid("conference_sid")
            .build();
        ConferenceUpdateResponse conference = client.texml().accounts().conferences().update(params);
    }
}
```

## List queue resources

`GET /texml/Accounts/{account_sid}/Queues`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.queues.QueueListPage;
import com.telnyx.sdk.models.texml.accounts.queues.QueueListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        QueueListPage page = client.texml().accounts().queues().list("account_sid");
    }
}
```

## Create a new queue

`POST /texml/Accounts/{account_sid}/Queues`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.queues.QueueCreateParams;
import com.telnyx.sdk.models.texml.accounts.queues.QueueCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        QueueCreateResponse queue = client.texml().accounts().queues().create("account_sid");
    }
}
```

## Fetch a queue resource

`GET /texml/Accounts/{account_sid}/Queues/{queue_sid}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.queues.QueueRetrieveParams;
import com.telnyx.sdk.models.texml.accounts.queues.QueueRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        QueueRetrieveParams params = QueueRetrieveParams.builder()
            .accountSid("account_sid")
            .queueSid("queue_sid")
            .build();
        QueueRetrieveResponse queue = client.texml().accounts().queues().retrieve(params);
    }
}
```

## Update a queue resource

`POST /texml/Accounts/{account_sid}/Queues/{queue_sid}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.queues.QueueUpdateParams;
import com.telnyx.sdk.models.texml.accounts.queues.QueueUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        QueueUpdateParams params = QueueUpdateParams.builder()
            .accountSid("account_sid")
            .queueSid("queue_sid")
            .build();
        QueueUpdateResponse queue = client.texml().accounts().queues().update(params);
    }
}
```

## Delete a queue resource

`DELETE /texml/Accounts/{account_sid}/Queues/{queue_sid}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.queues.QueueDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        QueueDeleteParams params = QueueDeleteParams.builder()
            .accountSid("account_sid")
            .queueSid("queue_sid")
            .build();
        client.texml().accounts().queues().delete(params);
    }
}
```

## Fetch multiple recording resources

`GET /texml/Accounts/{account_sid}/Recordings.json`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.AccountRetrieveRecordingsJsonParams;
import com.telnyx.sdk.models.texml.accounts.AccountRetrieveRecordingsJsonResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AccountRetrieveRecordingsJsonResponse response = client.texml().accounts().retrieveRecordingsJson("account_sid");
    }
}
```

## Fetch recording resource

`GET /texml/Accounts/{account_sid}/Recordings/{recording_sid}.json`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.TexmlGetCallRecordingResponseBody;
import com.telnyx.sdk.models.texml.accounts.recordings.json.JsonRetrieveRecordingSidJsonParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        JsonRetrieveRecordingSidJsonParams params = JsonRetrieveRecordingSidJsonParams.builder()
            .accountSid("account_sid")
            .recordingSid("6a09cdc3-8948-47f0-aa62-74ac943d6c58")
            .build();
        TexmlGetCallRecordingResponseBody texmlGetCallRecordingResponseBody = client.texml().accounts().recordings().json().retrieveRecordingSidJson(params);
    }
}
```

## Delete recording resource

`DELETE /texml/Accounts/{account_sid}/Recordings/{recording_sid}.json`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.recordings.json.JsonDeleteRecordingSidJsonParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        JsonDeleteRecordingSidJsonParams params = JsonDeleteRecordingSidJsonParams.builder()
            .accountSid("account_sid")
            .recordingSid("6a09cdc3-8948-47f0-aa62-74ac943d6c58")
            .build();
        client.texml().accounts().recordings().json().deleteRecordingSidJson(params);
    }
}
```

## Fetch recordings for a call

`GET /texml/Accounts/{account_sid}/Calls/{call_sid}/Recordings.json`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.calls.recordingsjson.RecordingsJsonRetrieveRecordingsJsonParams;
import com.telnyx.sdk.models.texml.accounts.calls.recordingsjson.RecordingsJsonRetrieveRecordingsJsonResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RecordingsJsonRetrieveRecordingsJsonParams params = RecordingsJsonRetrieveRecordingsJsonParams.builder()
            .accountSid("account_sid")
            .callSid("call_sid")
            .build();
        RecordingsJsonRetrieveRecordingsJsonResponse response = client.texml().accounts().calls().recordingsJson().retrieveRecordingsJson(params);
    }
}
```

## Request recording for a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Recordings.json`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.calls.recordingsjson.RecordingsJsonRecordingsJsonParams;
import com.telnyx.sdk.models.texml.accounts.calls.recordingsjson.RecordingsJsonRecordingsJsonResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RecordingsJsonRecordingsJsonParams params = RecordingsJsonRecordingsJsonParams.builder()
            .accountSid("account_sid")
            .callSid("call_sid")
            .build();
        RecordingsJsonRecordingsJsonResponse response = client.texml().accounts().calls().recordingsJson().recordingsJson(params);
    }
}
```

## Update recording on a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Recordings/{recording_sid}.json`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.calls.recordings.RecordingRecordingSidJsonParams;
import com.telnyx.sdk.models.texml.accounts.calls.recordings.RecordingRecordingSidJsonResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RecordingRecordingSidJsonParams params = RecordingRecordingSidJsonParams.builder()
            .accountSid("account_sid")
            .callSid("call_sid")
            .recordingSid("6a09cdc3-8948-47f0-aa62-74ac943d6c58")
            .build();
        RecordingRecordingSidJsonResponse response = client.texml().accounts().calls().recordings().recordingSidJson(params);
    }
}
```

## List conference recordings

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Recordings`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.conferences.ConferenceRetrieveRecordingsParams;
import com.telnyx.sdk.models.texml.accounts.conferences.ConferenceRetrieveRecordingsResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ConferenceRetrieveRecordingsParams params = ConferenceRetrieveRecordingsParams.builder()
            .accountSid("account_sid")
            .conferenceSid("conference_sid")
            .build();
        ConferenceRetrieveRecordingsResponse response = client.texml().accounts().conferences().retrieveRecordings(params);
    }
}
```

## Fetch recordings for a conference

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Recordings.json`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.conferences.ConferenceRetrieveRecordingsJsonParams;
import com.telnyx.sdk.models.texml.accounts.conferences.ConferenceRetrieveRecordingsJsonResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ConferenceRetrieveRecordingsJsonParams params = ConferenceRetrieveRecordingsJsonParams.builder()
            .accountSid("account_sid")
            .conferenceSid("conference_sid")
            .build();
        ConferenceRetrieveRecordingsJsonResponse response = client.texml().accounts().conferences().retrieveRecordingsJson(params);
    }
}
```

## Create a TeXML secret

`POST /texml/secrets`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.TexmlSecretsParams;
import com.telnyx.sdk.models.texml.TexmlSecretsResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        TexmlSecretsParams params = TexmlSecretsParams.builder()
            .name("My Secret Name")
            .value("My Secret Value")
            .build();
        TexmlSecretsResponse response = client.texml().secrets(params);
    }
}
```

## Request siprec session for a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Siprec.json`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.calls.CallSiprecJsonParams;
import com.telnyx.sdk.models.texml.accounts.calls.CallSiprecJsonResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CallSiprecJsonParams params = CallSiprecJsonParams.builder()
            .accountSid("account_sid")
            .callSid("call_sid")
            .build();
        CallSiprecJsonResponse response = client.texml().accounts().calls().siprecJson(params);
    }
}
```

## Updates siprec session for a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Siprec/{siprec_sid}.json`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.calls.siprec.SiprecSiprecSidJsonParams;
import com.telnyx.sdk.models.texml.accounts.calls.siprec.SiprecSiprecSidJsonResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SiprecSiprecSidJsonParams params = SiprecSiprecSidJsonParams.builder()
            .accountSid("account_sid")
            .callSid("call_sid")
            .siprecSid("siprec_sid")
            .build();
        SiprecSiprecSidJsonResponse response = client.texml().accounts().calls().siprec().siprecSidJson(params);
    }
}
```

## Start streaming media from a call.

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Streams.json`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.calls.CallStreamsJsonParams;
import com.telnyx.sdk.models.texml.accounts.calls.CallStreamsJsonResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CallStreamsJsonParams params = CallStreamsJsonParams.builder()
            .accountSid("account_sid")
            .callSid("call_sid")
            .build();
        CallStreamsJsonResponse response = client.texml().accounts().calls().streamsJson(params);
    }
}
```

## Update streaming on a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Streams/{streaming_sid}.json`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.calls.streams.StreamStreamingSidJsonParams;
import com.telnyx.sdk.models.texml.accounts.calls.streams.StreamStreamingSidJsonResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        StreamStreamingSidJsonParams params = StreamStreamingSidJsonParams.builder()
            .accountSid("account_sid")
            .callSid("call_sid")
            .streamingSid("6a09cdc3-8948-47f0-aa62-74ac943d6c58")
            .build();
        StreamStreamingSidJsonResponse response = client.texml().accounts().calls().streams().streamingSidJson(params);
    }
}
```

## List recording transcriptions

`GET /texml/Accounts/{account_sid}/Transcriptions.json`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.AccountRetrieveTranscriptionsJsonParams;
import com.telnyx.sdk.models.texml.accounts.AccountRetrieveTranscriptionsJsonResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AccountRetrieveTranscriptionsJsonResponse response = client.texml().accounts().retrieveTranscriptionsJson("account_sid");
    }
}
```

## Fetch a recording transcription resource

`GET /texml/Accounts/{account_sid}/Transcriptions/{recording_transcription_sid}.json`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.transcriptions.json.JsonRetrieveRecordingTranscriptionSidJsonParams;
import com.telnyx.sdk.models.texml.accounts.transcriptions.json.JsonRetrieveRecordingTranscriptionSidJsonResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        JsonRetrieveRecordingTranscriptionSidJsonParams params = JsonRetrieveRecordingTranscriptionSidJsonParams.builder()
            .accountSid("account_sid")
            .recordingTranscriptionSid("6a09cdc3-8948-47f0-aa62-74ac943d6c58")
            .build();
        JsonRetrieveRecordingTranscriptionSidJsonResponse response = client.texml().accounts().transcriptions().json().retrieveRecordingTranscriptionSidJson(params);
    }
}
```

## Delete a recording transcription

`DELETE /texml/Accounts/{account_sid}/Transcriptions/{recording_transcription_sid}.json`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.texml.accounts.transcriptions.json.JsonDeleteRecordingTranscriptionSidJsonParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        JsonDeleteRecordingTranscriptionSidJsonParams params = JsonDeleteRecordingTranscriptionSidJsonParams.builder()
            .accountSid("account_sid")
            .recordingTranscriptionSid("6a09cdc3-8948-47f0-aa62-74ac943d6c58")
            .build();
        client.texml().accounts().transcriptions().json().deleteRecordingTranscriptionSidJson(params);
    }
}
```
