---
name: telnyx-account-notifications-java
description: >-
  Configure notification channels and settings for account alerts and events.
  This skill provides Java SDK examples.
metadata:
  author: telnyx
  product: account-notifications
  language: java
---

# Telnyx Account Notifications - Java

## Installation

```bash
// Add to pom.xml or build.gradle - see https://github.com/team-telnyx/telnyx-java
```

## List notification channels

`GET /notification_channels`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.notificationchannels.NotificationChannelListPage;
import com.telnyx.sdk.models.notificationchannels.NotificationChannelListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NotificationChannelListPage page = client.notificationChannels().list();
    }
}
```

## Create a notification channel

`POST /notification_channels`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.notificationchannels.NotificationChannelCreateParams;
import com.telnyx.sdk.models.notificationchannels.NotificationChannelCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NotificationChannelCreateResponse notificationChannel = client.notificationChannels().create();
    }
}
```

## Get a notification channel

`GET /notification_channels/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.notificationchannels.NotificationChannelRetrieveParams;
import com.telnyx.sdk.models.notificationchannels.NotificationChannelRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NotificationChannelRetrieveResponse notificationChannel = client.notificationChannels().retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Update a notification channel

`PATCH /notification_channels/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.notificationchannels.NotificationChannel;
import com.telnyx.sdk.models.notificationchannels.NotificationChannelUpdateParams;
import com.telnyx.sdk.models.notificationchannels.NotificationChannelUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NotificationChannelUpdateParams params = NotificationChannelUpdateParams.builder()
            .notificationChannelId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .notificationChannel(NotificationChannel.builder().build())
            .build();
        NotificationChannelUpdateResponse notificationChannel = client.notificationChannels().update(params);
    }
}
```

## Delete a notification channel

`DELETE /notification_channels/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.notificationchannels.NotificationChannelDeleteParams;
import com.telnyx.sdk.models.notificationchannels.NotificationChannelDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NotificationChannelDeleteResponse notificationChannel = client.notificationChannels().delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## List all Notifications Events Conditions

`GET /notification_event_conditions`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.notificationeventconditions.NotificationEventConditionListPage;
import com.telnyx.sdk.models.notificationeventconditions.NotificationEventConditionListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NotificationEventConditionListPage page = client.notificationEventConditions().list();
    }
}
```

## List all Notifications Events

`GET /notification_events`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.notificationevents.NotificationEventListPage;
import com.telnyx.sdk.models.notificationevents.NotificationEventListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NotificationEventListPage page = client.notificationEvents().list();
    }
}
```

## List all Notifications Profiles

`GET /notification_profiles`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.notificationprofiles.NotificationProfileListPage;
import com.telnyx.sdk.models.notificationprofiles.NotificationProfileListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NotificationProfileListPage page = client.notificationProfiles().list();
    }
}
```

## Create a notification profile

`POST /notification_profiles`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.notificationprofiles.NotificationProfileCreateParams;
import com.telnyx.sdk.models.notificationprofiles.NotificationProfileCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NotificationProfileCreateResponse notificationProfile = client.notificationProfiles().create();
    }
}
```

## Get a notification profile

`GET /notification_profiles/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.notificationprofiles.NotificationProfileRetrieveParams;
import com.telnyx.sdk.models.notificationprofiles.NotificationProfileRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NotificationProfileRetrieveResponse notificationProfile = client.notificationProfiles().retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Update a notification profile

`PATCH /notification_profiles/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.notificationprofiles.NotificationProfile;
import com.telnyx.sdk.models.notificationprofiles.NotificationProfileUpdateParams;
import com.telnyx.sdk.models.notificationprofiles.NotificationProfileUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NotificationProfileUpdateParams params = NotificationProfileUpdateParams.builder()
            .notificationProfileId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .notificationProfile(NotificationProfile.builder().build())
            .build();
        NotificationProfileUpdateResponse notificationProfile = client.notificationProfiles().update(params);
    }
}
```

## Delete a notification profile

`DELETE /notification_profiles/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.notificationprofiles.NotificationProfileDeleteParams;
import com.telnyx.sdk.models.notificationprofiles.NotificationProfileDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NotificationProfileDeleteResponse notificationProfile = client.notificationProfiles().delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## List notification settings

`GET /notification_settings`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.notificationsettings.NotificationSettingListPage;
import com.telnyx.sdk.models.notificationsettings.NotificationSettingListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NotificationSettingListPage page = client.notificationSettings().list();
    }
}
```

## Add a Notification Setting

`POST /notification_settings`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.notificationsettings.NotificationSettingCreateParams;
import com.telnyx.sdk.models.notificationsettings.NotificationSettingCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NotificationSettingCreateResponse notificationSetting = client.notificationSettings().create();
    }
}
```

## Get a notification setting

`GET /notification_settings/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.notificationsettings.NotificationSettingRetrieveParams;
import com.telnyx.sdk.models.notificationsettings.NotificationSettingRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NotificationSettingRetrieveResponse notificationSetting = client.notificationSettings().retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Delete a notification setting

`DELETE /notification_settings/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.notificationsettings.NotificationSettingDeleteParams;
import com.telnyx.sdk.models.notificationsettings.NotificationSettingDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NotificationSettingDeleteResponse notificationSetting = client.notificationSettings().delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```
