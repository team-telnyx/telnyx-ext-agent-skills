## Application Flow Checklist

### 🧪 Logged in with Token

- [ ] **Connection:** Establish connection via Token

#### Inbound Calls (Receiving as Token user)
- [ ] Receive inbound call from SIP Connection
  - [ ] On WiFi
  - [ ] On Mobile Network

#### Outbound Calls (Making calls as Token user)
- [ ] Make outbound call to SIP Connection
  - [ ] On WiFi
  - [ ] On Mobile Network
- [ ] Make outbound call to associated number
  - [ ] On WiFi
  - [ ] On Mobile Network
- [ ] Make outbound call to PSTN
  - [ ] On WiFi
  - [ ] On Mobile Network

#### Notifications (While logged in as Token)
- [ ] Receive push notification (App Background) -> Reject Call
  - [ ] Screen On
  - [ ] Screen Locked (Active)
  - [ ] Screen Locked (Sleep)
- [ ] Receive push notification (App Background) -> Accept Call
  - [ ] Screen On
  - [ ] Screen Locked (Active)
  - [ ] Screen Locked (Sleep)
- [ ] Receive push notification (App Terminated) -> Reject Call
  - [ ] Screen On 
  - [ ] Screen Locked (Active)
  - [ ] Screen Locked (Sleep)
- [ ] Receive push notification (App Terminated) -> Accept Call
  - [ ] Screen On
  - [ ] Screen Locked (Active)
  - [ ] Screen Locked (Sleep)

---

### 📞 Logged in with SIP Connection

- [ ] **Connection:** Establish connection via SIP Credential

#### Inbound Calls (Receiving as SIP user)
- [ ] Receive inbound call from another SIP Connection
  - [ ] On WiFi
  - [ ] On Mobile Network
- [ ] Receive inbound call via associated number
  - [ ] On WiFi
  - [ ] On Mobile Network
- [ ] Receive inbound call from PSTN
  - [ ] On WiFi
  - [ ] On Mobile Network

#### Outbound Calls (Making calls as SIP user)
- [ ] Make outbound call to SIP Connection
  - [ ] On WiFi
  - [ ] On Mobile Network
- [ ] Make outbound call to associated number
  - [ ] On WiFi
  - [ ] On Mobile Network
- [ ] Make outbound call to PSTN
  - [ ] On WiFi
  - [ ] On Mobile Network

#### Notifications (While logged in as SIP)
- [ ] Receive push notification (App Background) -> Reject Call
  - [ ] Screen On
  - [ ] Screen Locked (Active)
  - [ ] Screen Locked (Sleep)
- [ ] Receive push notification (App Background) -> Accept Call
  - [ ] Screen On
  - [ ] Screen Locked (Active)
  - [ ] Screen Locked (Sleep)
- [ ] Receive push notification (App Terminated) -> Reject Call
  - [ ] Screen On 
  - [ ] Screen Locked (Active)
  - [ ] Screen Locked (Sleep)
- [ ] Receive push notification (App Terminated) -> Accept Call
  - [ ] Screen On 
  - [ ] Screen Locked (Active)
  - [ ] Screen Locked (Sleep)

---

### 👤 Logged in with genCred

- [ ] **Connection:** Establish connection via genCred 

#### Inbound Calls (Receiving as genCred user)
- [ ] Receive inbound call from SIP Connection
  - [ ] On WiFi
  - [ ] On Mobile Network
- [ ] Receive inbound call via associated number
  - [ ] On WiFi
  - [ ] On Mobile Network
- [ ] Receive inbound call from PSTN
  - [ ] On WiFi
  - [ ] On Mobile Network

#### Outbound Calls (Making calls as genCred user)
- [ ] Make outbound call to SIP Connection
  - [ ] On WiFi
  - [ ] On Mobile Network
- [ ] Make outbound call to associated number
  - [ ] On WiFi
  - [ ] On Mobile Network
- [ ] Make outbound call to PSTN
  - [ ] On WiFi
  - [ ] On Mobile Network

#### Notifications (While logged in as genCred)
- [ ] Receive push notification (App Background) -> Reject Call
  - [ ] Screen On
  - [ ] Screen Locked (Active)
  - [ ] Screen Locked (Sleep)
- [ ] Receive push notification (App Background) -> Accept Call
  - [ ] Screen On
  - [ ] Screen Locked (Active)
  - [ ] Screen Locked (Sleep)
- [ ] Receive push notification (App Terminated) -> Reject Call
  - [ ] Screen On 
  - [ ] Screen Locked (Active)
  - [ ] Screen Locked (Sleep)
- [ ] Receive push notification (App Terminated) -> Accept Call
  - [ ] Screen On 
  - [ ] Screen Locked (Active)
  - [ ] Screen Locked (Sleep)

---

### 🔁 General Reconnection Scenarios
- [ ] Establish call -> Drop network -> Re-establish connection within timeframe
  - [ ] On WiFi
  - [ ] On 4G/Mobile Network
- [ ] Establish call -> Drop network -> Fail to re-establish connection within timeframe (verify dropped state)
  - [ ] On WiFi
  - [ ] On 4G/Mobile Network

---

### 📊 General Stats Scenarios
- [ ] Enable stats (config level) -> Establish call -> Verify portal stats appear
- [ ] Disable stats (config level) -> Establish call -> Verify no portal stats appear
- [ ] Enable stats (call level) -> Establish call -> Verify quality metrics are available
- [ ] Disable stats (call level) -> Establish call -> Verify quality metrics are not available
