---
name: telnyx-video-java
description: >-
  Create and manage video rooms for real-time video communication and
  conferencing. This skill provides Java SDK examples.
metadata:
  author: telnyx
  product: video
  language: java
---

# Telnyx Video - Java

## Installation

```bash
// Add to pom.xml or build.gradle - see https://github.com/team-telnyx/telnyx-java
```

## View a list of room compositions.

`GET /room_compositions`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.roomcompositions.RoomCompositionListPage;
import com.telnyx.sdk.models.roomcompositions.RoomCompositionListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RoomCompositionListPage page = client.roomCompositions().list();
    }
}
```

## Create a room composition.

`POST /room_compositions`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.roomcompositions.RoomCompositionCreateParams;
import com.telnyx.sdk.models.roomcompositions.RoomCompositionCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RoomCompositionCreateResponse roomComposition = client.roomCompositions().create();
    }
}
```

## View a room composition.

`GET /room_compositions/{room_composition_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.roomcompositions.RoomCompositionRetrieveParams;
import com.telnyx.sdk.models.roomcompositions.RoomCompositionRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RoomCompositionRetrieveResponse roomComposition = client.roomCompositions().retrieve("5219b3af-87c6-4c08-9b58-5a533d893e21");
    }
}
```

## Delete a room composition.

`DELETE /room_compositions/{room_composition_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.roomcompositions.RoomCompositionDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        client.roomCompositions().delete("5219b3af-87c6-4c08-9b58-5a533d893e21");
    }
}
```

## View a list of room participants.

`GET /room_participants`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.roomparticipants.RoomParticipantListPage;
import com.telnyx.sdk.models.roomparticipants.RoomParticipantListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RoomParticipantListPage page = client.roomParticipants().list();
    }
}
```

## View a room participant.

`GET /room_participants/{room_participant_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.roomparticipants.RoomParticipantRetrieveParams;
import com.telnyx.sdk.models.roomparticipants.RoomParticipantRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RoomParticipantRetrieveResponse roomParticipant = client.roomParticipants().retrieve("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0");
    }
}
```

## View a list of room recordings.

`GET /room_recordings`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.roomrecordings.RoomRecordingListPage;
import com.telnyx.sdk.models.roomrecordings.RoomRecordingListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RoomRecordingListPage page = client.roomRecordings().list();
    }
}
```

## Delete several room recordings in a bulk.

`DELETE /room_recordings`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.roomrecordings.RoomRecordingDeleteBulkParams;
import com.telnyx.sdk.models.roomrecordings.RoomRecordingDeleteBulkResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RoomRecordingDeleteBulkResponse response = client.roomRecordings().deleteBulk();
    }
}
```

## View a room recording.

`GET /room_recordings/{room_recording_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.roomrecordings.RoomRecordingRetrieveParams;
import com.telnyx.sdk.models.roomrecordings.RoomRecordingRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RoomRecordingRetrieveResponse roomRecording = client.roomRecordings().retrieve("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0");
    }
}
```

## Delete a room recording.

`DELETE /room_recordings/{room_recording_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.roomrecordings.RoomRecordingDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        client.roomRecordings().delete("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0");
    }
}
```

## View a list of room sessions.

`GET /room_sessions`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.rooms.sessions.SessionList0Page;
import com.telnyx.sdk.models.rooms.sessions.SessionList0Params;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SessionList0Page page = client.rooms().sessions().list0();
    }
}
```

## View a room session.

`GET /room_sessions/{room_session_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.rooms.sessions.SessionRetrieveParams;
import com.telnyx.sdk.models.rooms.sessions.SessionRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SessionRetrieveResponse session = client.rooms().sessions().retrieve("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0");
    }
}
```

## End a room session.

`POST /room_sessions/{room_session_id}/actions/end`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.rooms.sessions.actions.ActionEndParams;
import com.telnyx.sdk.models.rooms.sessions.actions.ActionEndResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionEndResponse response = client.rooms().sessions().actions().end("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0");
    }
}
```

## Kick participants from a room session.

`POST /room_sessions/{room_session_id}/actions/kick`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.rooms.sessions.actions.ActionKickParams;
import com.telnyx.sdk.models.rooms.sessions.actions.ActionKickResponse;
import com.telnyx.sdk.models.rooms.sessions.actions.ActionsParticipantsRequest;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionKickParams params = ActionKickParams.builder()
            .roomSessionId("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")
            .actionsParticipantsRequest(ActionsParticipantsRequest.builder().build())
            .build();
        ActionKickResponse response = client.rooms().sessions().actions().kick(params);
    }
}
```

## Mute participants in room session.

`POST /room_sessions/{room_session_id}/actions/mute`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.rooms.sessions.actions.ActionMuteParams;
import com.telnyx.sdk.models.rooms.sessions.actions.ActionMuteResponse;
import com.telnyx.sdk.models.rooms.sessions.actions.ActionsParticipantsRequest;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionMuteParams params = ActionMuteParams.builder()
            .roomSessionId("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")
            .actionsParticipantsRequest(ActionsParticipantsRequest.builder().build())
            .build();
        ActionMuteResponse response = client.rooms().sessions().actions().mute(params);
    }
}
```

## Unmute participants in room session.

`POST /room_sessions/{room_session_id}/actions/unmute`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.rooms.sessions.actions.ActionUnmuteParams;
import com.telnyx.sdk.models.rooms.sessions.actions.ActionUnmuteResponse;
import com.telnyx.sdk.models.rooms.sessions.actions.ActionsParticipantsRequest;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionUnmuteParams params = ActionUnmuteParams.builder()
            .roomSessionId("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")
            .actionsParticipantsRequest(ActionsParticipantsRequest.builder().build())
            .build();
        ActionUnmuteResponse response = client.rooms().sessions().actions().unmute(params);
    }
}
```

## View a list of room participants.

`GET /room_sessions/{room_session_id}/participants`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.rooms.sessions.SessionRetrieveParticipantsPage;
import com.telnyx.sdk.models.rooms.sessions.SessionRetrieveParticipantsParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SessionRetrieveParticipantsPage page = client.rooms().sessions().retrieveParticipants("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0");
    }
}
```

## View a list of rooms.

`GET /rooms`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.rooms.RoomListPage;
import com.telnyx.sdk.models.rooms.RoomListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RoomListPage page = client.rooms().list();
    }
}
```

## Create a room.

`POST /rooms`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.rooms.RoomCreateParams;
import com.telnyx.sdk.models.rooms.RoomCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RoomCreateResponse room = client.rooms().create();
    }
}
```

## View a room.

`GET /rooms/{room_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.rooms.RoomRetrieveParams;
import com.telnyx.sdk.models.rooms.RoomRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RoomRetrieveResponse room = client.rooms().retrieve("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0");
    }
}
```

## Update a room.

`PATCH /rooms/{room_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.rooms.RoomUpdateParams;
import com.telnyx.sdk.models.rooms.RoomUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RoomUpdateResponse room = client.rooms().update("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0");
    }
}
```

## Delete a room.

`DELETE /rooms/{room_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.rooms.RoomDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        client.rooms().delete("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0");
    }
}
```

## Create Client Token to join a room.

`POST /rooms/{room_id}/actions/generate_join_client_token`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.rooms.actions.ActionGenerateJoinClientTokenParams;
import com.telnyx.sdk.models.rooms.actions.ActionGenerateJoinClientTokenResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionGenerateJoinClientTokenResponse response = client.rooms().actions().generateJoinClientToken("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0");
    }
}
```

## Refresh Client Token to join a room.

`POST /rooms/{room_id}/actions/refresh_client_token`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.rooms.actions.ActionRefreshClientTokenParams;
import com.telnyx.sdk.models.rooms.actions.ActionRefreshClientTokenResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionRefreshClientTokenParams params = ActionRefreshClientTokenParams.builder()
            .roomId("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")
            .refreshToken("eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJ0ZWxueXhfdGVsZXBob255IiwiZXhwIjoxNTkwMDEwMTQzLCJpYXQiOjE1ODc1OTA5NDMsImlzcyI6InRlbG55eF90ZWxlcGhvbnkiLCJqdGkiOiJiOGM3NDgzNy1kODllLTRhNjUtOWNmMi0zNGM3YTZmYTYwYzgiLCJuYmYiOjE1ODc1OTA5NDIsInN1YiI6IjVjN2FjN2QwLWRiNjUtNGYxMS05OGUxLWVlYzBkMWQ1YzZhZSIsInRlbF90b2tlbiI6InJqX1pra1pVT1pNeFpPZk9tTHBFVUIzc2lVN3U2UmpaRmVNOXMtZ2JfeENSNTZXRktGQUppTXlGMlQ2Q0JSbWxoX1N5MGlfbGZ5VDlBSThzRWlmOE1USUlzenl6U2xfYURuRzQ4YU81MHlhSEd1UlNZYlViU1ltOVdJaVEwZz09IiwidHlwIjoiYWNjZXNzIn0.gNEwzTow5MLLPLQENytca7pUN79PmPj6FyqZWW06ZeEmesxYpwKh0xRtA0TzLh6CDYIRHrI8seofOO0YFGDhpQ")
            .build();
        ActionRefreshClientTokenResponse response = client.rooms().actions().refreshClientToken(params);
    }
}
```

## View a list of room sessions.

`GET /rooms/{room_id}/sessions`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.rooms.sessions.SessionList1Page;
import com.telnyx.sdk.models.rooms.sessions.SessionList1Params;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SessionList1Page page = client.rooms().sessions().list1("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0");
    }
}
```
