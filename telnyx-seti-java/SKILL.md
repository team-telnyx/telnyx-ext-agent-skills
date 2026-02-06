---
name: telnyx-seti-java
description: >-
  Access SETI (Space Exploration Telecommunications Infrastructure) APIs. This
  skill provides Java SDK examples.
metadata:
  author: telnyx
  product: seti
  language: java
---

# Telnyx Seti - Java

## Installation

```bash
// Add to pom.xml or build.gradle - see https://github.com/team-telnyx/telnyx-java
```

## Retrieve Black Box Test Results

`GET /seti/black_box_test_results`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.seti.SetiRetrieveBlackBoxTestResultsParams;
import com.telnyx.sdk.models.seti.SetiRetrieveBlackBoxTestResultsResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SetiRetrieveBlackBoxTestResultsResponse response = client.seti().retrieveBlackBoxTestResults();
    }
}
```
