---
name: telnyx-voice-gather-java
description: >-
  Collect DTMF input and speech from callers using standard gather or AI-powered
  gather. Build interactive voice menus and AI voice assistants. This skill
  provides Java SDK examples.
metadata:
  author: telnyx
  product: voice-gather
  language: java
---

# Telnyx Voice Gather - Java

## Installation

```bash
// Add to pom.xml or build.gradle - see https://github.com/team-telnyx/telnyx-java
```

## Add messages to AI Assistant

`POST /calls/{call_control_id}/actions/ai_assistant_add_messages`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.calls.actions.ActionAddAiAssistantMessagesParams;
import com.telnyx.sdk.models.calls.actions.ActionAddAiAssistantMessagesResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionAddAiAssistantMessagesResponse response = client.calls().actions().addAiAssistantMessages("call_control_id");
    }
}
```

## Start AI Assistant

`POST /calls/{call_control_id}/actions/ai_assistant_start`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.calls.actions.ActionStartAiAssistantParams;
import com.telnyx.sdk.models.calls.actions.ActionStartAiAssistantResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionStartAiAssistantResponse response = client.calls().actions().startAiAssistant("call_control_id");
    }
}
```

## Stop AI Assistant

`POST /calls/{call_control_id}/actions/ai_assistant_stop`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.calls.actions.ActionStopAiAssistantParams;
import com.telnyx.sdk.models.calls.actions.ActionStopAiAssistantResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionStopAiAssistantResponse response = client.calls().actions().stopAiAssistant("call_control_id");
    }
}
```

## Gather stop

`POST /calls/{call_control_id}/actions/gather_stop`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.calls.actions.ActionStopGatherParams;
import com.telnyx.sdk.models.calls.actions.ActionStopGatherResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionStopGatherResponse response = client.calls().actions().stopGather("call_control_id");
    }
}
```

## Gather using AI

`POST /calls/{call_control_id}/actions/gather_using_ai`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.core.JsonValue;
import com.telnyx.sdk.models.calls.actions.ActionGatherUsingAiParams;
import com.telnyx.sdk.models.calls.actions.ActionGatherUsingAiResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionGatherUsingAiParams params = ActionGatherUsingAiParams.builder()
            .callControlId("call_control_id")
            .parameters(ActionGatherUsingAiParams.Parameters.builder()
                .putAdditionalProperty("properties", JsonValue.from("bar"))
                .putAdditionalProperty("required", JsonValue.from("bar"))
                .putAdditionalProperty("type", JsonValue.from("bar"))
                .build())
            .build();
        ActionGatherUsingAiResponse response = client.calls().actions().gatherUsingAi(params);
    }
}
```

## Gather using audio

`POST /calls/{call_control_id}/actions/gather_using_audio`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.calls.actions.ActionGatherUsingAudioParams;
import com.telnyx.sdk.models.calls.actions.ActionGatherUsingAudioResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionGatherUsingAudioResponse response = client.calls().actions().gatherUsingAudio("call_control_id");
    }
}
```

## Gather using speak

`POST /calls/{call_control_id}/actions/gather_using_speak`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.calls.actions.ActionGatherUsingSpeakParams;
import com.telnyx.sdk.models.calls.actions.ActionGatherUsingSpeakResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionGatherUsingSpeakParams params = ActionGatherUsingSpeakParams.builder()
            .callControlId("call_control_id")
            .payload("say this on call")
            .voice("male")
            .build();
        ActionGatherUsingSpeakResponse response = client.calls().actions().gatherUsingSpeak(params);
    }
}
```

## Gather

`POST /calls/{call_control_id}/actions/gather`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.calls.actions.ActionGatherParams;
import com.telnyx.sdk.models.calls.actions.ActionGatherResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionGatherResponse response = client.calls().actions().gather("call_control_id");
    }
}
```
