---
name: telnyx-voice-conferencing-java
description: >-
  Create and manage conference calls, queues, and multi-party sessions. Use when
  building call centers or conferencing applications. This skill provides Java
  SDK examples.
metadata:
  author: telnyx
  product: voice-conferencing
  language: java
---

# Telnyx Voice Conferencing - Java

## Installation

```bash
// Add to pom.xml or build.gradle - see https://github.com/team-telnyx/telnyx-java
```

## Enqueue call

`POST /calls/{call_control_id}/actions/enqueue`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.calls.actions.ActionEnqueueParams;
import com.telnyx.sdk.models.calls.actions.ActionEnqueueResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionEnqueueParams params = ActionEnqueueParams.builder()
            .callControlId("call_control_id")
            .queueName("support")
            .build();
        ActionEnqueueResponse response = client.calls().actions().enqueue(params);
    }
}
```

## Remove call from a queue

`POST /calls/{call_control_id}/actions/leave_queue`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.calls.actions.ActionLeaveQueueParams;
import com.telnyx.sdk.models.calls.actions.ActionLeaveQueueResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionLeaveQueueResponse response = client.calls().actions().leaveQueue("call_control_id");
    }
}
```

## List conferences

`GET /conferences`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.conferences.ConferenceListPage;
import com.telnyx.sdk.models.conferences.ConferenceListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ConferenceListPage page = client.conferences().list();
    }
}
```

## Create conference

`POST /conferences`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.conferences.ConferenceCreateParams;
import com.telnyx.sdk.models.conferences.ConferenceCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ConferenceCreateParams params = ConferenceCreateParams.builder()
            .callControlId("v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg")
            .name("Business")
            .build();
        ConferenceCreateResponse conference = client.conferences().create(params);
    }
}
```

## Retrieve a conference

`GET /conferences/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.conferences.ConferenceRetrieveParams;
import com.telnyx.sdk.models.conferences.ConferenceRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ConferenceRetrieveResponse conference = client.conferences().retrieve("id");
    }
}
```

## Hold conference participants

`POST /conferences/{id}/actions/hold`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.conferences.actions.ActionHoldParams;
import com.telnyx.sdk.models.conferences.actions.ActionHoldResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionHoldResponse response = client.conferences().actions().hold("id");
    }
}
```

## Join a conference

`POST /conferences/{id}/actions/join`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.conferences.actions.ActionJoinParams;
import com.telnyx.sdk.models.conferences.actions.ActionJoinResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionJoinParams params = ActionJoinParams.builder()
            .id("id")
            .callControlId("v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg")
            .build();
        ActionJoinResponse response = client.conferences().actions().join(params);
    }
}
```

## Leave a conference

`POST /conferences/{id}/actions/leave`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.conferences.actions.ActionLeaveParams;
import com.telnyx.sdk.models.conferences.actions.ActionLeaveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionLeaveParams params = ActionLeaveParams.builder()
            .id("id")
            .callControlId("c46e06d7-b78f-4b13-96b6-c576af9640ff")
            .build();
        ActionLeaveResponse response = client.conferences().actions().leave(params);
    }
}
```

## Mute conference participants

`POST /conferences/{id}/actions/mute`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.conferences.actions.ActionMuteParams;
import com.telnyx.sdk.models.conferences.actions.ActionMuteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionMuteResponse response = client.conferences().actions().mute("id");
    }
}
```

## Play audio to conference participants

`POST /conferences/{id}/actions/play`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.conferences.actions.ActionPlayParams;
import com.telnyx.sdk.models.conferences.actions.ActionPlayResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionPlayResponse response = client.conferences().actions().play("id");
    }
}
```

## Conference recording pause

`POST /conferences/{id}/actions/record_pause`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.conferences.actions.ActionRecordPauseParams;
import com.telnyx.sdk.models.conferences.actions.ActionRecordPauseResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionRecordPauseResponse response = client.conferences().actions().recordPause("id");
    }
}
```

## Conference recording resume

`POST /conferences/{id}/actions/record_resume`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.conferences.actions.ActionRecordResumeParams;
import com.telnyx.sdk.models.conferences.actions.ActionRecordResumeResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionRecordResumeResponse response = client.conferences().actions().recordResume("id");
    }
}
```

## Conference recording start

`POST /conferences/{id}/actions/record_start`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.conferences.actions.ActionRecordStartParams;
import com.telnyx.sdk.models.conferences.actions.ActionRecordStartResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionRecordStartParams params = ActionRecordStartParams.builder()
            .id("id")
            .format(ActionRecordStartParams.Format.WAV)
            .build();
        ActionRecordStartResponse response = client.conferences().actions().recordStart(params);
    }
}
```

## Conference recording stop

`POST /conferences/{id}/actions/record_stop`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.conferences.actions.ActionRecordStopParams;
import com.telnyx.sdk.models.conferences.actions.ActionRecordStopResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionRecordStopResponse response = client.conferences().actions().recordStop("id");
    }
}
```

## Speak text to conference participants

`POST /conferences/{id}/actions/speak`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.conferences.actions.ActionSpeakParams;
import com.telnyx.sdk.models.conferences.actions.ActionSpeakResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionSpeakParams params = ActionSpeakParams.builder()
            .id("id")
            .payload("Say this to participants")
            .voice("female")
            .build();
        ActionSpeakResponse response = client.conferences().actions().speak(params);
    }
}
```

## Stop audio being played on the conference

`POST /conferences/{id}/actions/stop`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.conferences.actions.ActionStopParams;
import com.telnyx.sdk.models.conferences.actions.ActionStopResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionStopResponse response = client.conferences().actions().stop("id");
    }
}
```

## Unhold conference participants

`POST /conferences/{id}/actions/unhold`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.conferences.actions.ActionUnholdParams;
import com.telnyx.sdk.models.conferences.actions.ActionUnholdResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionUnholdParams params = ActionUnholdParams.builder()
            .id("id")
            .addCallControlId("v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg")
            .build();
        ActionUnholdResponse response = client.conferences().actions().unhold(params);
    }
}
```

## Unmute conference participants

`POST /conferences/{id}/actions/unmute`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.conferences.actions.ActionUnmuteParams;
import com.telnyx.sdk.models.conferences.actions.ActionUnmuteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionUnmuteResponse response = client.conferences().actions().unmute("id");
    }
}
```

## Update conference participant

`POST /conferences/{id}/actions/update`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.conferences.actions.ActionUpdateParams;
import com.telnyx.sdk.models.conferences.actions.ActionUpdateResponse;
import com.telnyx.sdk.models.conferences.actions.UpdateConference;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionUpdateParams params = ActionUpdateParams.builder()
            .id("id")
            .updateConference(UpdateConference.builder()
                .callControlId("v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg")
                .supervisorRole(UpdateConference.SupervisorRole.WHISPER)
                .build())
            .build();
        ActionUpdateResponse action = client.conferences().actions().update(params);
    }
}
```

## List conference participants

`GET /conferences/{conference_id}/participants`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.conferences.ConferenceListParticipantsPage;
import com.telnyx.sdk.models.conferences.ConferenceListParticipantsParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ConferenceListParticipantsPage page = client.conferences().listParticipants("conference_id");
    }
}
```
