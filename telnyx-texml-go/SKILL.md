---
name: telnyx-texml-go
description: >-
  Build voice applications using TeXML markup language (TwiML-compatible).
  Manage applications, calls, conferences, recordings, queues, and streams. This
  skill provides Go SDK examples.
metadata:
  author: telnyx
  product: texml
  language: go
---

# Telnyx Texml - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## List all TeXML Applications

`GET /texml_applications`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.TexmlApplications.List(context.TODO(), telnyx.TexmlApplicationListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Creates a TeXML Application

`POST /texml_applications`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  texmlApplication, err := client.TexmlApplications.New(context.TODO(), telnyx.TexmlApplicationNewParams{
    FriendlyName: "call-router",
    VoiceURL: "https://example.com",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", texmlApplication.Data)
}
```

## Retrieve a TeXML Application

`GET /texml_applications/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  texmlApplication, err := client.TexmlApplications.Get(context.TODO(), "1293384261075731499")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", texmlApplication.Data)
}
```

## Update a TeXML Application

`PATCH /texml_applications/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  texmlApplication, err := client.TexmlApplications.Update(
    context.TODO(),
    "1293384261075731499",
    telnyx.TexmlApplicationUpdateParams{
      FriendlyName: "call-router",
      VoiceURL: "https://example.com",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", texmlApplication.Data)
}
```

## Deletes a TeXML Application

`DELETE /texml_applications/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  texmlApplication, err := client.TexmlApplications.Delete(context.TODO(), "1293384261075731499")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", texmlApplication.Data)
}
```

## Fetch multiple call resources

`GET /texml/Accounts/{account_sid}/Calls`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Texml.Accounts.Calls.GetCalls(
    context.TODO(),
    "account_sid",
    telnyx.TexmlAccountCallGetCallsParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Calls)
}
```

## Initiate an outbound call

`POST /texml/Accounts/{account_sid}/Calls`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Texml.Accounts.Calls.Calls(
    context.TODO(),
    "account_sid",
    telnyx.TexmlAccountCallCallsParams{
      ApplicationSid: "example-app-sid",
      From: "+13120001234",
      To: "+13121230000",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.From)
}
```

## Fetch a call

`GET /texml/Accounts/{account_sid}/Calls/{call_sid}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  call, err := client.Texml.Accounts.Calls.Get(
    context.TODO(),
    "call_sid",
    telnyx.TexmlAccountCallGetParams{
      AccountSid: "account_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", call.AccountSid)
}
```

## Update call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  call, err := client.Texml.Accounts.Calls.Update(
    context.TODO(),
    "call_sid",
    telnyx.TexmlAccountCallUpdateParams{
      AccountSid: "account_sid",
      UpdateCall: telnyx.UpdateCallParam{

      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", call.AccountSid)
}
```

## List conference participants

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Texml.Accounts.Conferences.Participants.GetParticipants(
    context.TODO(),
    "conference_sid",
    telnyx.TexmlAccountConferenceParticipantGetParticipantsParams{
      AccountSid: "account_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.End)
}
```

## Dial a new conference participant

`POST /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Texml.Accounts.Conferences.Participants.Participants(
    context.TODO(),
    "conference_sid",
    telnyx.TexmlAccountConferenceParticipantParticipantsParams{
      AccountSid: "account_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.AccountSid)
}
```

## Get conference participant resource

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants/{call_sid_or_participant_label}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  participant, err := client.Texml.Accounts.Conferences.Participants.Get(
    context.TODO(),
    "call_sid_or_participant_label",
    telnyx.TexmlAccountConferenceParticipantGetParams{
      AccountSid: "account_sid",
      ConferenceSid: "conference_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", participant.AccountSid)
}
```

## Update a conference participant

`POST /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants/{call_sid_or_participant_label}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  participant, err := client.Texml.Accounts.Conferences.Participants.Update(
    context.TODO(),
    "call_sid_or_participant_label",
    telnyx.TexmlAccountConferenceParticipantUpdateParams{
      AccountSid: "account_sid",
      ConferenceSid: "conference_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", participant.AccountSid)
}
```

## Delete a conference participant

`DELETE /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants/{call_sid_or_participant_label}`

```go
package main

import (
  "context"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  err := client.Texml.Accounts.Conferences.Participants.Delete(
    context.TODO(),
    "call_sid_or_participant_label",
    telnyx.TexmlAccountConferenceParticipantDeleteParams{
      AccountSid: "account_sid",
      ConferenceSid: "conference_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
}
```

## List conference resources

`GET /texml/Accounts/{account_sid}/Conferences`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Texml.Accounts.Conferences.GetConferences(
    context.TODO(),
    "account_sid",
    telnyx.TexmlAccountConferenceGetConferencesParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Conferences)
}
```

## Fetch a conference resource

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  conference, err := client.Texml.Accounts.Conferences.Get(
    context.TODO(),
    "conference_sid",
    telnyx.TexmlAccountConferenceGetParams{
      AccountSid: "account_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", conference.AccountSid)
}
```

## Update a conference resource

`POST /texml/Accounts/{account_sid}/Conferences/{conference_sid}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  conference, err := client.Texml.Accounts.Conferences.Update(
    context.TODO(),
    "conference_sid",
    telnyx.TexmlAccountConferenceUpdateParams{
      AccountSid: "account_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", conference.AccountSid)
}
```

## List queue resources

`GET /texml/Accounts/{account_sid}/Queues`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.Texml.Accounts.Queues.List(
    context.TODO(),
    "account_sid",
    telnyx.TexmlAccountQueueListParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a new queue

`POST /texml/Accounts/{account_sid}/Queues`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  queue, err := client.Texml.Accounts.Queues.New(
    context.TODO(),
    "account_sid",
    telnyx.TexmlAccountQueueNewParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", queue.AccountSid)
}
```

## Fetch a queue resource

`GET /texml/Accounts/{account_sid}/Queues/{queue_sid}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  queue, err := client.Texml.Accounts.Queues.Get(
    context.TODO(),
    "queue_sid",
    telnyx.TexmlAccountQueueGetParams{
      AccountSid: "account_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", queue.AccountSid)
}
```

## Update a queue resource

`POST /texml/Accounts/{account_sid}/Queues/{queue_sid}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  queue, err := client.Texml.Accounts.Queues.Update(
    context.TODO(),
    "queue_sid",
    telnyx.TexmlAccountQueueUpdateParams{
      AccountSid: "account_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", queue.AccountSid)
}
```

## Delete a queue resource

`DELETE /texml/Accounts/{account_sid}/Queues/{queue_sid}`

```go
package main

import (
  "context"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  err := client.Texml.Accounts.Queues.Delete(
    context.TODO(),
    "queue_sid",
    telnyx.TexmlAccountQueueDeleteParams{
      AccountSid: "account_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
}
```

## Fetch multiple recording resources

`GET /texml/Accounts/{account_sid}/Recordings.json`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Texml.Accounts.GetRecordingsJson(
    context.TODO(),
    "account_sid",
    telnyx.TexmlAccountGetRecordingsJsonParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.End)
}
```

## Fetch recording resource

`GET /texml/Accounts/{account_sid}/Recordings/{recording_sid}.json`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  texmlGetCallRecordingResponseBody, err := client.Texml.Accounts.Recordings.Json.GetRecordingSidJson(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.TexmlAccountRecordingJsonGetRecordingSidJsonParams{
      AccountSid: "account_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", texmlGetCallRecordingResponseBody.AccountSid)
}
```

## Delete recording resource

`DELETE /texml/Accounts/{account_sid}/Recordings/{recording_sid}.json`

```go
package main

import (
  "context"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  err := client.Texml.Accounts.Recordings.Json.DeleteRecordingSidJson(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.TexmlAccountRecordingJsonDeleteRecordingSidJsonParams{
      AccountSid: "account_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
}
```

## Fetch recordings for a call

`GET /texml/Accounts/{account_sid}/Calls/{call_sid}/Recordings.json`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Texml.Accounts.Calls.RecordingsJson.GetRecordingsJson(
    context.TODO(),
    "call_sid",
    telnyx.TexmlAccountCallRecordingsJsonGetRecordingsJsonParams{
      AccountSid: "account_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.End)
}
```

## Request recording for a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Recordings.json`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Texml.Accounts.Calls.RecordingsJson.RecordingsJson(
    context.TODO(),
    "call_sid",
    telnyx.TexmlAccountCallRecordingsJsonRecordingsJsonParams{
      AccountSid: "account_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.AccountSid)
}
```

## Update recording on a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Recordings/{recording_sid}.json`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Texml.Accounts.Calls.Recordings.RecordingSidJson(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.TexmlAccountCallRecordingRecordingSidJsonParams{
      AccountSid: "account_sid",
      CallSid: "call_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.AccountSid)
}
```

## List conference recordings

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Recordings`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Texml.Accounts.Conferences.GetRecordings(
    context.TODO(),
    "conference_sid",
    telnyx.TexmlAccountConferenceGetRecordingsParams{
      AccountSid: "account_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.End)
}
```

## Fetch recordings for a conference

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Recordings.json`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Texml.Accounts.Conferences.GetRecordingsJson(
    context.TODO(),
    "conference_sid",
    telnyx.TexmlAccountConferenceGetRecordingsJsonParams{
      AccountSid: "account_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.End)
}
```

## Create a TeXML secret

`POST /texml/secrets`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Texml.Secrets(context.TODO(), telnyx.TexmlSecretsParams{
    Name: "My Secret Name",
    Value: "My Secret Value",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Request siprec session for a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Siprec.json`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Texml.Accounts.Calls.SiprecJson(
    context.TODO(),
    "call_sid",
    telnyx.TexmlAccountCallSiprecJsonParams{
      AccountSid: "account_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.AccountSid)
}
```

## Updates siprec session for a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Siprec/{siprec_sid}.json`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Texml.Accounts.Calls.Siprec.SiprecSidJson(
    context.TODO(),
    "siprec_sid",
    telnyx.TexmlAccountCallSiprecSiprecSidJsonParams{
      AccountSid: "account_sid",
      CallSid: "call_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.AccountSid)
}
```

## Start streaming media from a call.

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Streams.json`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Texml.Accounts.Calls.StreamsJson(
    context.TODO(),
    "call_sid",
    telnyx.TexmlAccountCallStreamsJsonParams{
      AccountSid: "account_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.AccountSid)
}
```

## Update streaming on a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Streams/{streaming_sid}.json`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Texml.Accounts.Calls.Streams.StreamingSidJson(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.TexmlAccountCallStreamStreamingSidJsonParams{
      AccountSid: "account_sid",
      CallSid: "call_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.AccountSid)
}
```

## List recording transcriptions

`GET /texml/Accounts/{account_sid}/Transcriptions.json`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Texml.Accounts.GetTranscriptionsJson(
    context.TODO(),
    "account_sid",
    telnyx.TexmlAccountGetTranscriptionsJsonParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.End)
}
```

## Fetch a recording transcription resource

`GET /texml/Accounts/{account_sid}/Transcriptions/{recording_transcription_sid}.json`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Texml.Accounts.Transcriptions.Json.GetRecordingTranscriptionSidJson(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.TexmlAccountTranscriptionJsonGetRecordingTranscriptionSidJsonParams{
      AccountSid: "account_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.AccountSid)
}
```

## Delete a recording transcription

`DELETE /texml/Accounts/{account_sid}/Transcriptions/{recording_transcription_sid}.json`

```go
package main

import (
  "context"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  err := client.Texml.Accounts.Transcriptions.Json.DeleteRecordingTranscriptionSidJson(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.TexmlAccountTranscriptionJsonDeleteRecordingTranscriptionSidJsonParams{
      AccountSid: "account_sid",
    },
  )
  if err != nil {
    panic(err.Error())
  }
}
```
