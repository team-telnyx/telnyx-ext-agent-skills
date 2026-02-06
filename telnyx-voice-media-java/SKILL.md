---
name: telnyx-voice-media-java
description: >-
  Play audio files, use text-to-speech, and record calls. Use when building IVR
  systems, playing announcements, or recording conversations. This skill
  provides Java SDK examples.
metadata:
  author: telnyx
  product: voice-media
  language: java
---

# Telnyx Voice Media - Java

## Installation

```bash
// Add to pom.xml or build.gradle - see https://github.com/team-telnyx/telnyx-java
```

## Play audio URL

`POST /calls/{call_control_id}/actions/playback_start`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.calls.actions.ActionStartPlaybackParams;
import com.telnyx.sdk.models.calls.actions.ActionStartPlaybackResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionStartPlaybackResponse response = client.calls().actions().startPlayback("call_control_id");
    }
}
```

## Stop audio playback

`POST /calls/{call_control_id}/actions/playback_stop`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.calls.actions.ActionStopPlaybackParams;
import com.telnyx.sdk.models.calls.actions.ActionStopPlaybackResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionStopPlaybackResponse response = client.calls().actions().stopPlayback("call_control_id");
    }
}
```

## Record pause

`POST /calls/{call_control_id}/actions/record_pause`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.calls.actions.ActionPauseRecordingParams;
import com.telnyx.sdk.models.calls.actions.ActionPauseRecordingResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionPauseRecordingResponse response = client.calls().actions().pauseRecording("call_control_id");
    }
}
```

## Record resume

`POST /calls/{call_control_id}/actions/record_resume`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.calls.actions.ActionResumeRecordingParams;
import com.telnyx.sdk.models.calls.actions.ActionResumeRecordingResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionResumeRecordingResponse response = client.calls().actions().resumeRecording("call_control_id");
    }
}
```

## Recording start

`POST /calls/{call_control_id}/actions/record_start`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.calls.actions.ActionStartRecordingParams;
import com.telnyx.sdk.models.calls.actions.ActionStartRecordingResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionStartRecordingParams params = ActionStartRecordingParams.builder()
            .callControlId("call_control_id")
            .channels(ActionStartRecordingParams.Channels.SINGLE)
            .format(ActionStartRecordingParams.Format.WAV)
            .build();
        ActionStartRecordingResponse response = client.calls().actions().startRecording(params);
    }
}
```

## Recording stop

`POST /calls/{call_control_id}/actions/record_stop`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.calls.actions.ActionStopRecordingParams;
import com.telnyx.sdk.models.calls.actions.ActionStopRecordingResponse;
import com.telnyx.sdk.models.calls.actions.StopRecordingRequest;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionStopRecordingParams params = ActionStopRecordingParams.builder()
            .callControlId("call_control_id")
            .stopRecordingRequest(StopRecordingRequest.builder().build())
            .build();
        ActionStopRecordingResponse response = client.calls().actions().stopRecording(params);
    }
}
```

## Speak text

`POST /calls/{call_control_id}/actions/speak`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.calls.actions.ActionSpeakParams;
import com.telnyx.sdk.models.calls.actions.ActionSpeakResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionSpeakParams params = ActionSpeakParams.builder()
            .callControlId("call_control_id")
            .payload("Say this on the call")
            .voice("female")
            .build();
        ActionSpeakResponse response = client.calls().actions().speak(params);
    }
}
```
