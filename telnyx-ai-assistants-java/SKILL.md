---
name: telnyx-ai-assistants-java
description: >-
  Create and manage AI voice assistants with custom personalities, knowledge
  bases, and tool integrations. This skill provides Java SDK examples.
metadata:
  author: telnyx
  product: ai-assistants
  language: java
---

# Telnyx Ai Assistants - Java

## Installation

```bash
// Add to pom.xml or build.gradle - see https://github.com/team-telnyx/telnyx-java
```

## List assistants

`GET /ai/assistants`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.AssistantListParams;
import com.telnyx.sdk.models.ai.assistants.AssistantsList;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AssistantsList assistantsList = client.ai().assistants().list();
    }
}
```

## Create an assistant

`POST /ai/assistants`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.AssistantCreateParams;
import com.telnyx.sdk.models.ai.assistants.InferenceEmbedding;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AssistantCreateParams params = AssistantCreateParams.builder()
            .instructions("instructions")
            .model("model")
            .name("name")
            .build();
        InferenceEmbedding inferenceEmbedding = client.ai().assistants().create(params);
    }
}
```

## Get an assistant

`GET /ai/assistants/{assistant_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.AssistantRetrieveParams;
import com.telnyx.sdk.models.ai.assistants.InferenceEmbedding;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        InferenceEmbedding inferenceEmbedding = client.ai().assistants().retrieve("assistant_id");
    }
}
```

## Update an assistant

`POST /ai/assistants/{assistant_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.AssistantUpdateParams;
import com.telnyx.sdk.models.ai.assistants.InferenceEmbedding;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        InferenceEmbedding inferenceEmbedding = client.ai().assistants().update("assistant_id");
    }
}
```

## Delete an assistant

`DELETE /ai/assistants/{assistant_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.AssistantDeleteParams;
import com.telnyx.sdk.models.ai.assistants.AssistantDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AssistantDeleteResponse assistant = client.ai().assistants().delete("assistant_id");
    }
}
```

## Assistant Chat (BETA)

`POST /ai/assistants/{assistant_id}/chat`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.AssistantChatParams;
import com.telnyx.sdk.models.ai.assistants.AssistantChatResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AssistantChatParams params = AssistantChatParams.builder()
            .assistantId("assistant_id")
            .content("Tell me a joke about cats")
            .conversationId("42b20469-1215-4a9a-8964-c36f66b406f4")
            .build();
        AssistantChatResponse response = client.ai().assistants().chat(params);
    }
}
```

## Assistant Sms Chat

`POST /ai/assistants/{assistant_id}/chat/sms`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.AssistantSendSmsParams;
import com.telnyx.sdk.models.ai.assistants.AssistantSendSmsResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AssistantSendSmsParams params = AssistantSendSmsParams.builder()
            .assistantId("assistant_id")
            .from("from")
            .to("to")
            .build();
        AssistantSendSmsResponse response = client.ai().assistants().sendSms(params);
    }
}
```

## Clone Assistant

`POST /ai/assistants/{assistant_id}/clone`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.AssistantCloneParams;
import com.telnyx.sdk.models.ai.assistants.InferenceEmbedding;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        InferenceEmbedding inferenceEmbedding = client.ai().assistants().clone("assistant_id");
    }
}
```

## Import assistants from external provider

`POST /ai/assistants/import`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.AssistantImportsParams;
import com.telnyx.sdk.models.ai.assistants.AssistantsList;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AssistantImportsParams params = AssistantImportsParams.builder()
            .apiKeyRef("api_key_ref")
            .provider(AssistantImportsParams.Provider.ELEVENLABS)
            .build();
        AssistantsList assistantsList = client.ai().assistants().imports(params);
    }
}
```

## List scheduled events

`GET /ai/assistants/{assistant_id}/scheduled_events`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.scheduledevents.ScheduledEventListPage;
import com.telnyx.sdk.models.ai.assistants.scheduledevents.ScheduledEventListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ScheduledEventListPage page = client.ai().assistants().scheduledEvents().list("assistant_id");
    }
}
```

## Create a scheduled event

`POST /ai/assistants/{assistant_id}/scheduled_events`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.scheduledevents.ConversationChannelType;
import com.telnyx.sdk.models.ai.assistants.scheduledevents.ScheduledEventCreateParams;
import com.telnyx.sdk.models.ai.assistants.scheduledevents.ScheduledEventResponse;
import java.time.OffsetDateTime;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ScheduledEventCreateParams params = ScheduledEventCreateParams.builder()
            .assistantId("assistant_id")
            .scheduledAtFixedDatetime(OffsetDateTime.parse("2025-04-15T13:07:28.764Z"))
            .telnyxAgentTarget("telnyx_agent_target")
            .telnyxConversationChannel(ConversationChannelType.PHONE_CALL)
            .telnyxEndUserTarget("telnyx_end_user_target")
            .build();
        ScheduledEventResponse scheduledEventResponse = client.ai().assistants().scheduledEvents().create(params);
    }
}
```

## Get a scheduled event

`GET /ai/assistants/{assistant_id}/scheduled_events/{event_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.scheduledevents.ScheduledEventResponse;
import com.telnyx.sdk.models.ai.assistants.scheduledevents.ScheduledEventRetrieveParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ScheduledEventRetrieveParams params = ScheduledEventRetrieveParams.builder()
            .assistantId("assistant_id")
            .eventId("event_id")
            .build();
        ScheduledEventResponse scheduledEventResponse = client.ai().assistants().scheduledEvents().retrieve(params);
    }
}
```

## Delete a scheduled event

`DELETE /ai/assistants/{assistant_id}/scheduled_events/{event_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.scheduledevents.ScheduledEventDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ScheduledEventDeleteParams params = ScheduledEventDeleteParams.builder()
            .assistantId("assistant_id")
            .eventId("event_id")
            .build();
        client.ai().assistants().scheduledEvents().delete(params);
    }
}
```

## List assistant tests with pagination

`GET /ai/assistants/tests`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.tests.TestListPage;
import com.telnyx.sdk.models.ai.assistants.tests.TestListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        TestListPage page = client.ai().assistants().tests().list();
    }
}
```

## Create a new assistant test

`POST /ai/assistants/tests`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.tests.AssistantTest;
import com.telnyx.sdk.models.ai.assistants.tests.TestCreateParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        TestCreateParams params = TestCreateParams.builder()
            .destination("+15551234567")
            .instructions("Act as a frustrated customer who received a damaged product. Ask for a refund and escalate if not satisfied with the initial response.")
            .name("Customer Support Bot Test")
            .addRubric(TestCreateParams.Rubric.builder()
                .criteria("Assistant responds within 30 seconds")
                .name("Response Time")
                .build())
            .addRubric(TestCreateParams.Rubric.builder()
                .criteria("Provides correct product information")
                .name("Accuracy")
                .build())
            .build();
        AssistantTest assistantTest = client.ai().assistants().tests().create(params);
    }
}
```

## Get all test suite names

`GET /ai/assistants/tests/test-suites`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.tests.testsuites.TestSuiteListParams;
import com.telnyx.sdk.models.ai.assistants.tests.testsuites.TestSuiteListResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        TestSuiteListResponse testSuites = client.ai().assistants().tests().testSuites().list();
    }
}
```

## Get test suite run history

`GET /ai/assistants/tests/test-suites/{suite_name}/runs`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.tests.testsuites.runs.RunListPage;
import com.telnyx.sdk.models.ai.assistants.tests.testsuites.runs.RunListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RunListPage page = client.ai().assistants().tests().testSuites().runs().list("suite_name");
    }
}
```

## Trigger test suite execution

`POST /ai/assistants/tests/test-suites/{suite_name}/runs`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.tests.runs.TestRunResponse;
import com.telnyx.sdk.models.ai.assistants.tests.testsuites.runs.RunTriggerParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        List<TestRunResponse> testRunResponses = client.ai().assistants().tests().testSuites().runs().trigger("suite_name");
    }
}
```

## Get assistant test by ID

`GET /ai/assistants/tests/{test_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.tests.AssistantTest;
import com.telnyx.sdk.models.ai.assistants.tests.TestRetrieveParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AssistantTest assistantTest = client.ai().assistants().tests().retrieve("test_id");
    }
}
```

## Update an assistant test

`PUT /ai/assistants/tests/{test_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.tests.AssistantTest;
import com.telnyx.sdk.models.ai.assistants.tests.TestUpdateParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AssistantTest assistantTest = client.ai().assistants().tests().update("test_id");
    }
}
```

## Delete an assistant test

`DELETE /ai/assistants/tests/{test_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.tests.TestDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        client.ai().assistants().tests().delete("test_id");
    }
}
```

## Get test run history for a specific test

`GET /ai/assistants/tests/{test_id}/runs`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.tests.runs.RunListPage;
import com.telnyx.sdk.models.ai.assistants.tests.runs.RunListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RunListPage page = client.ai().assistants().tests().runs().list("test_id");
    }
}
```

## Trigger a manual test run

`POST /ai/assistants/tests/{test_id}/runs`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.tests.runs.RunTriggerParams;
import com.telnyx.sdk.models.ai.assistants.tests.runs.TestRunResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        TestRunResponse testRunResponse = client.ai().assistants().tests().runs().trigger("test_id");
    }
}
```

## Get specific test run details

`GET /ai/assistants/tests/{test_id}/runs/{run_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.tests.runs.RunRetrieveParams;
import com.telnyx.sdk.models.ai.assistants.tests.runs.TestRunResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RunRetrieveParams params = RunRetrieveParams.builder()
            .testId("test_id")
            .runId("run_id")
            .build();
        TestRunResponse testRunResponse = client.ai().assistants().tests().runs().retrieve(params);
    }
}
```

## Get all versions of an assistant

`GET /ai/assistants/{assistant_id}/versions`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.AssistantsList;
import com.telnyx.sdk.models.ai.assistants.versions.VersionListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AssistantsList assistantsList = client.ai().assistants().versions().list("assistant_id");
    }
}
```

## Get a specific assistant version

`GET /ai/assistants/{assistant_id}/versions/{version_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.InferenceEmbedding;
import com.telnyx.sdk.models.ai.assistants.versions.VersionRetrieveParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        VersionRetrieveParams params = VersionRetrieveParams.builder()
            .assistantId("assistant_id")
            .versionId("version_id")
            .build();
        InferenceEmbedding inferenceEmbedding = client.ai().assistants().versions().retrieve(params);
    }
}
```

## Update a specific assistant version

`POST /ai/assistants/{assistant_id}/versions/{version_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.InferenceEmbedding;
import com.telnyx.sdk.models.ai.assistants.versions.UpdateAssistant;
import com.telnyx.sdk.models.ai.assistants.versions.VersionUpdateParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        VersionUpdateParams params = VersionUpdateParams.builder()
            .assistantId("assistant_id")
            .versionId("version_id")
            .updateAssistant(UpdateAssistant.builder().build())
            .build();
        InferenceEmbedding inferenceEmbedding = client.ai().assistants().versions().update(params);
    }
}
```

## Delete a specific assistant version

`DELETE /ai/assistants/{assistant_id}/versions/{version_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.versions.VersionDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        VersionDeleteParams params = VersionDeleteParams.builder()
            .assistantId("assistant_id")
            .versionId("version_id")
            .build();
        client.ai().assistants().versions().delete(params);
    }
}
```

## Promote an assistant version to main

`POST /ai/assistants/{assistant_id}/versions/{version_id}/promote`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.InferenceEmbedding;
import com.telnyx.sdk.models.ai.assistants.versions.VersionPromoteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        VersionPromoteParams params = VersionPromoteParams.builder()
            .assistantId("assistant_id")
            .versionId("version_id")
            .build();
        InferenceEmbedding inferenceEmbedding = client.ai().assistants().versions().promote(params);
    }
}
```

## Get Canary Deploy

`GET /ai/assistants/{assistant_id}/canary-deploys`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.canarydeploys.CanaryDeployResponse;
import com.telnyx.sdk.models.ai.assistants.canarydeploys.CanaryDeployRetrieveParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CanaryDeployResponse canaryDeployResponse = client.ai().assistants().canaryDeploys().retrieve("assistant_id");
    }
}
```

## Create Canary Deploy

`POST /ai/assistants/{assistant_id}/canary-deploys`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.canarydeploys.CanaryDeploy;
import com.telnyx.sdk.models.ai.assistants.canarydeploys.CanaryDeployCreateParams;
import com.telnyx.sdk.models.ai.assistants.canarydeploys.CanaryDeployResponse;
import com.telnyx.sdk.models.ai.assistants.canarydeploys.VersionConfig;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CanaryDeployCreateParams params = CanaryDeployCreateParams.builder()
            .assistantId("assistant_id")
            .canaryDeploy(CanaryDeploy.builder()
                .addVersion(VersionConfig.builder()
                    .percentage(1.0)
                    .versionId("version_id")
                    .build())
                .build())
            .build();
        CanaryDeployResponse canaryDeployResponse = client.ai().assistants().canaryDeploys().create(params);
    }
}
```

## Update Canary Deploy

`PUT /ai/assistants/{assistant_id}/canary-deploys`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.canarydeploys.CanaryDeploy;
import com.telnyx.sdk.models.ai.assistants.canarydeploys.CanaryDeployResponse;
import com.telnyx.sdk.models.ai.assistants.canarydeploys.CanaryDeployUpdateParams;
import com.telnyx.sdk.models.ai.assistants.canarydeploys.VersionConfig;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CanaryDeployUpdateParams params = CanaryDeployUpdateParams.builder()
            .assistantId("assistant_id")
            .canaryDeploy(CanaryDeploy.builder()
                .addVersion(VersionConfig.builder()
                    .percentage(1.0)
                    .versionId("version_id")
                    .build())
                .build())
            .build();
        CanaryDeployResponse canaryDeployResponse = client.ai().assistants().canaryDeploys().update(params);
    }
}
```

## Delete Canary Deploy

`DELETE /ai/assistants/{assistant_id}/canary-deploys`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.canarydeploys.CanaryDeployDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        client.ai().assistants().canaryDeploys().delete("assistant_id");
    }
}
```

## Get assistant texml

`GET /ai/assistants/{assistant_id}/texml`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.AssistantGetTexmlParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        String response = client.ai().assistants().getTexml("assistant_id");
    }
}
```

## Test Assistant Tool

`POST /ai/assistants/{assistant_id}/tools/{tool_id}/test`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.assistants.tools.ToolTestParams;
import com.telnyx.sdk.models.ai.assistants.tools.ToolTestResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ToolTestParams params = ToolTestParams.builder()
            .assistantId("assistant_id")
            .toolId("tool_id")
            .build();
        ToolTestResponse response = client.ai().assistants().tools().test(params);
    }
}
```

## List Integrations

`GET /ai/integrations`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.integrations.IntegrationListParams;
import com.telnyx.sdk.models.ai.integrations.IntegrationListResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        IntegrationListResponse integrations = client.ai().integrations().list();
    }
}
```

## List User Integrations

`GET /ai/integrations/connections`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.integrations.connections.ConnectionListParams;
import com.telnyx.sdk.models.ai.integrations.connections.ConnectionListResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ConnectionListResponse connections = client.ai().integrations().connections().list();
    }
}
```

## Get User Integration connection By Id

`GET /ai/integrations/connections/{user_connection_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.integrations.connections.ConnectionRetrieveParams;
import com.telnyx.sdk.models.ai.integrations.connections.ConnectionRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ConnectionRetrieveResponse connection = client.ai().integrations().connections().retrieve("user_connection_id");
    }
}
```

## Delete Integration Connection

`DELETE /ai/integrations/connections/{user_connection_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.integrations.connections.ConnectionDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        client.ai().integrations().connections().delete("user_connection_id");
    }
}
```

## List Integration By Id

`GET /ai/integrations/{integration_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.integrations.IntegrationRetrieveParams;
import com.telnyx.sdk.models.ai.integrations.IntegrationRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        IntegrationRetrieveResponse integration = client.ai().integrations().retrieve("integration_id");
    }
}
```

## List MCP Servers

`GET /ai/mcp_servers`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.mcpservers.McpServerListPage;
import com.telnyx.sdk.models.ai.mcpservers.McpServerListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        McpServerListPage page = client.ai().mcpServers().list();
    }
}
```

## Create MCP Server

`POST /ai/mcp_servers`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.mcpservers.McpServerCreateParams;
import com.telnyx.sdk.models.ai.mcpservers.McpServerCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        McpServerCreateParams params = McpServerCreateParams.builder()
            .name("name")
            .type("type")
            .url("url")
            .build();
        McpServerCreateResponse mcpServer = client.ai().mcpServers().create(params);
    }
}
```

## Get MCP Server

`GET /ai/mcp_servers/{mcp_server_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.mcpservers.McpServerRetrieveParams;
import com.telnyx.sdk.models.ai.mcpservers.McpServerRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        McpServerRetrieveResponse mcpServer = client.ai().mcpServers().retrieve("mcp_server_id");
    }
}
```

## Update MCP Server

`PUT /ai/mcp_servers/{mcp_server_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.mcpservers.McpServerUpdateParams;
import com.telnyx.sdk.models.ai.mcpservers.McpServerUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        McpServerUpdateResponse mcpServer = client.ai().mcpServers().update("mcp_server_id");
    }
}
```

## Delete MCP Server

`DELETE /ai/mcp_servers/{mcp_server_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.ai.mcpservers.McpServerDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        client.ai().mcpServers().delete("mcp_server_id");
    }
}
```
