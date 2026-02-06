---
name: telnyx-sip-integrations-go
description: >-
  Manage call recordings, media storage, Dialogflow integration, and external
  connections for SIP trunking. This skill provides Go SDK examples.
metadata:
  author: telnyx
  product: sip-integrations
  language: go
---

# Telnyx Sip Integrations - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## List all call recordings

`GET /recordings`

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
  page, err := client.Recordings.List(context.TODO(), telnyx.RecordingListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Retrieve a call recording

`GET /recordings/{recording_id}`

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
  recording, err := client.Recordings.Get(context.TODO(), "recording_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", recording.Data)
}
```

## Delete a call recording

`DELETE /recordings/{recording_id}`

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
  recording, err := client.Recordings.Delete(context.TODO(), "recording_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", recording.Data)
}
```

## Delete a list of call recordings

`POST /recordings/actions/delete`

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
  err := client.Recordings.Actions.Delete(context.TODO(), telnyx.RecordingActionDeleteParams{
    IDs: []string{"428c31b6-7af4-4bcb-b7f5-5013ef9657c1", "428c31b6-7af4-4bcb-b7f5-5013ef9657c2"},
  })
  if err != nil {
    panic(err.Error())
  }
}
```

## List all recording transcriptions

`GET /recording_transcriptions`

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
  recordingTranscriptions, err := client.RecordingTranscriptions.List(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", recordingTranscriptions.Data)
}
```

## Retrieve a recording transcription

`GET /recording_transcriptions/{recording_transcription_id}`

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
  recordingTranscription, err := client.RecordingTranscriptions.Get(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", recordingTranscription.Data)
}
```

## Delete a recording transcription

`DELETE /recording_transcriptions/{recording_transcription_id}`

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
  recordingTranscription, err := client.RecordingTranscriptions.Delete(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", recordingTranscription.Data)
}
```

## Retrieve a stored credential

`GET /custom_storage_credentials/{connection_id}`

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
  customStorageCredential, err := client.CustomStorageCredentials.Get(context.TODO(), "connection_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", customStorageCredential.ConnectionID)
}
```

## Create a custom storage credential

`POST /custom_storage_credentials/{connection_id}`

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
  customStorageCredential, err := client.CustomStorageCredentials.New(
    context.TODO(),
    "connection_id",
    telnyx.CustomStorageCredentialNewParams{
      CustomStorageConfiguration: telnyx.CustomStorageConfigurationParam{
        Backend: telnyx.CustomStorageConfigurationBackendGcs,
        Configuration: telnyx.CustomStorageConfigurationConfigurationUnionParam{
          OfGcs: &telnyx.GcsConfigurationDataParam{
            Backend: telnyx.GcsConfigurationDataBackendGcs,
          },
        },
      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", customStorageCredential.ConnectionID)
}
```

## Update a stored credential

`PUT /custom_storage_credentials/{connection_id}`

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
  customStorageCredential, err := client.CustomStorageCredentials.Update(
    context.TODO(),
    "connection_id",
    telnyx.CustomStorageCredentialUpdateParams{
      CustomStorageConfiguration: telnyx.CustomStorageConfigurationParam{
        Backend: telnyx.CustomStorageConfigurationBackendGcs,
        Configuration: telnyx.CustomStorageConfigurationConfigurationUnionParam{
          OfGcs: &telnyx.GcsConfigurationDataParam{
            Backend: telnyx.GcsConfigurationDataBackendGcs,
          },
        },
      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", customStorageCredential.ConnectionID)
}
```

## Delete a stored credential

`DELETE /custom_storage_credentials/{connection_id}`

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
  err := client.CustomStorageCredentials.Delete(context.TODO(), "connection_id")
  if err != nil {
    panic(err.Error())
  }
}
```

## Retrieve stored Dialogflow Connection

`GET /dialogflow_connections/{connection_id}`

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
  dialogflowConnection, err := client.DialogflowConnections.Get(context.TODO(), "connection_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", dialogflowConnection.Data)
}
```

## Create a Dialogflow Connection

`POST /dialogflow_connections/{connection_id}`

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
  dialogflowConnection, err := client.DialogflowConnections.New(
    context.TODO(),
    "connection_id",
    telnyx.DialogflowConnectionNewParams{
      ServiceAccount: map[string]any{
      "type": "bar",
      "project_id": "bar",
      "private_key_id": "bar",
      "private_key": "bar",
      "client_email": "bar",
      "client_id": "bar",
      "auth_uri": "bar",
      "token_uri": "bar",
      "auth_provider_x509_cert_url": "bar",
      "client_x509_cert_url": "bar",
      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", dialogflowConnection.Data)
}
```

## Update stored Dialogflow Connection

`PUT /dialogflow_connections/{connection_id}`

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
  dialogflowConnection, err := client.DialogflowConnections.Update(
    context.TODO(),
    "connection_id",
    telnyx.DialogflowConnectionUpdateParams{
      ServiceAccount: map[string]any{
      "type": "bar",
      "project_id": "bar",
      "private_key_id": "bar",
      "private_key": "bar",
      "client_email": "bar",
      "client_id": "bar",
      "auth_uri": "bar",
      "token_uri": "bar",
      "auth_provider_x509_cert_url": "bar",
      "client_x509_cert_url": "bar",
      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", dialogflowConnection.Data)
}
```

## Delete stored Dialogflow Connection

`DELETE /dialogflow_connections/{connection_id}`

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
  err := client.DialogflowConnections.Delete(context.TODO(), "connection_id")
  if err != nil {
    panic(err.Error())
  }
}
```

## List all External Connections

`GET /external_connections`

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
  page, err := client.ExternalConnections.List(context.TODO(), telnyx.ExternalConnectionListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Creates an External Connection

`POST /external_connections`

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
  externalConnection, err := client.ExternalConnections.New(context.TODO(), telnyx.ExternalConnectionNewParams{
    ExternalSipConnection: telnyx.ExternalConnectionNewParamsExternalSipConnectionZoom,
    Outbound: telnyx.ExternalConnectionNewParamsOutbound{

    },
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", externalConnection.Data)
}
```

## Retrieve an External Connection

`GET /external_connections/{id}`

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
  externalConnection, err := client.ExternalConnections.Get(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", externalConnection.Data)
}
```

## Update an External Connection

`PATCH /external_connections/{id}`

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
  externalConnection, err := client.ExternalConnections.Update(
    context.TODO(),
    "id",
    telnyx.ExternalConnectionUpdateParams{
      Outbound: telnyx.ExternalConnectionUpdateParamsOutbound{
        OutboundVoiceProfileID: "outbound_voice_profile_id",
      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", externalConnection.Data)
}
```

## Deletes an External Connection

`DELETE /external_connections/{id}`

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
  externalConnection, err := client.ExternalConnections.Delete(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", externalConnection.Data)
}
```

## List all civic addresses and locations

`GET /external_connections/{id}/civic_addresses`

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
  civicAddresses, err := client.ExternalConnections.CivicAddresses.List(
    context.TODO(),
    "id",
    telnyx.ExternalConnectionCivicAddressListParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", civicAddresses.Data)
}
```

## Retrieve a Civic Address

`GET /external_connections/{id}/civic_addresses/{address_id}`

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
  civicAddress, err := client.ExternalConnections.CivicAddresses.Get(
    context.TODO(),
    "318fb664-d341-44d2-8405-e6bfb9ced6d9",
    telnyx.ExternalConnectionCivicAddressGetParams{
      ID: "id",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", civicAddress.Data)
}
```

## Update a location's static emergency address

`PATCH /external_connections/{id}/locations/{location_id}`

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
  response, err := client.ExternalConnections.UpdateLocation(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.ExternalConnectionUpdateLocationParams{
      ID: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      StaticEmergencyAddressID: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List all phone numbers

`GET /external_connections/{id}/phone_numbers`

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
  page, err := client.ExternalConnections.PhoneNumbers.List(
    context.TODO(),
    "id",
    telnyx.ExternalConnectionPhoneNumberListParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Retrieve a phone number

`GET /external_connections/{id}/phone_numbers/{phone_number_id}`

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
  phoneNumber, err := client.ExternalConnections.PhoneNumbers.Get(
    context.TODO(),
    "1234567889",
    telnyx.ExternalConnectionPhoneNumberGetParams{
      ID: "id",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", phoneNumber.Data)
}
```

## Update a phone number

`PATCH /external_connections/{id}/phone_numbers/{phone_number_id}`

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
  phoneNumber, err := client.ExternalConnections.PhoneNumbers.Update(
    context.TODO(),
    "1234567889",
    telnyx.ExternalConnectionPhoneNumberUpdateParams{
      ID: "id",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", phoneNumber.Data)
}
```

## List all Releases

`GET /external_connections/{id}/releases`

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
  page, err := client.ExternalConnections.Releases.List(
    context.TODO(),
    "id",
    telnyx.ExternalConnectionReleaseListParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Retrieve a Release request

`GET /external_connections/{id}/releases/{release_id}`

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
  release, err := client.ExternalConnections.Releases.Get(
    context.TODO(),
    "7b6a6449-b055-45a6-81f6-f6f0dffa4cc6",
    telnyx.ExternalConnectionReleaseGetParams{
      ID: "id",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", release.Data)
}
```

## List all Upload requests

`GET /external_connections/{id}/uploads`

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
  page, err := client.ExternalConnections.Uploads.List(
    context.TODO(),
    "id",
    telnyx.ExternalConnectionUploadListParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Creates an Upload request

`POST /external_connections/{id}/uploads`

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
  upload, err := client.ExternalConnections.Uploads.New(
    context.TODO(),
    "id",
    telnyx.ExternalConnectionUploadNewParams{
      NumberIDs: []string{"3920457616934164700", "3920457616934164701", "3920457616934164702", "3920457616934164703"},
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", upload.TicketID)
}
```

## Refresh the status of all Upload requests

`POST /external_connections/{id}/uploads/refresh`

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
  response, err := client.ExternalConnections.Uploads.RefreshStatus(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Success)
}
```

## Get the count of pending upload requests

`GET /external_connections/{id}/uploads/status`

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
  response, err := client.ExternalConnections.Uploads.PendingCount(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Retrieve an Upload request

`GET /external_connections/{id}/uploads/{ticket_id}`

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
  upload, err := client.ExternalConnections.Uploads.Get(
    context.TODO(),
    "7b6a6449-b055-45a6-81f6-f6f0dffa4cc6",
    telnyx.ExternalConnectionUploadGetParams{
      ID: "id",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", upload.Data)
}
```

## Retry an Upload request

`POST /external_connections/{id}/uploads/{ticket_id}/retry`

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
  response, err := client.ExternalConnections.Uploads.Retry(
    context.TODO(),
    "7b6a6449-b055-45a6-81f6-f6f0dffa4cc6",
    telnyx.ExternalConnectionUploadRetryParams{
      ID: "id",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List all log messages

`GET /external_connections/log_messages`

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
  page, err := client.ExternalConnections.LogMessages.List(context.TODO(), telnyx.ExternalConnectionLogMessageListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Retrieve a log message

`GET /external_connections/log_messages/{id}`

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
  logMessage, err := client.ExternalConnections.LogMessages.Get(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", logMessage.LogMessages)
}
```

## Dismiss a log message

`DELETE /external_connections/log_messages/{id}`

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
  response, err := client.ExternalConnections.LogMessages.Dismiss(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Success)
}
```

## Refresh Operator Connect integration

`POST /operator_connect/actions/refresh`

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
  response, err := client.OperatorConnect.Actions.Refresh(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Message)
}
```

## List uploaded media

`GET /media`

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
  media, err := client.Media.List(context.TODO(), telnyx.MediaListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", media.Data)
}
```

## Upload media

`POST /media`

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
  response, err := client.Media.Upload(context.TODO(), telnyx.MediaUploadParams{
    MediaURL: "http://www.example.com/audio.mp3",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Retrieve stored media

`GET /media/{media_name}`

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
  media, err := client.Media.Get(context.TODO(), "media_name")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", media.Data)
}
```

## Update stored media

`PUT /media/{media_name}`

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
  media, err := client.Media.Update(
    context.TODO(),
    "media_name",
    telnyx.MediaUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", media.Data)
}
```

## Deletes stored media

`DELETE /media/{media_name}`

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
  err := client.Media.Delete(context.TODO(), "media_name")
  if err != nil {
    panic(err.Error())
  }
}
```

## Download stored media

`GET /media/{media_name}/download`

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
  response, err := client.Media.Download(context.TODO(), "media_name")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response)
}
```
