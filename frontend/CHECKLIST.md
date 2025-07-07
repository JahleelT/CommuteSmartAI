# Frontend Checklist 📋

This checklist breaks down the frontend architecture for CommuteSmartAI, including planned pages, shared components, and interactivity notes based on the React docs and Figma design.

---

## 📁 Pages and Key UI Components

### 🔐 Auth Pages

- [ ] Sign In Page
  - [ ] Header with custom text
  - [ ] Easy login buttons (OAuth providers)
  - [ ] Email/password form
  - [ ] Submit button (custom text + route)
  - [ ] Link to Register

- [ ] Register Page
  - [ ] Header with custom text
  - [ ] Sign up form (name, email, password)
  - [ ] Register button (custom text + route)
  - [ ] Link to Sign In
  - [ ] Consider filling negative space

---

### 🏠 Home Page

- [ ] Shared Header (user info, logo)
- [ ] Smart summary panel
- [ ] Live Alert Buttons:
  - [ ] Bus
  - [ ] Subway
  - [ ] Ferry
  - [ ] Gerry
  - [ ] Train
- [ ] Bottom Nav Bar (Home, Map, Chat, Profile)
- [ ] Enable live updates without full page reload

---

### 🗺️ Map Page

- [ ] Shared Header
- [ ] Search Bar
- [ ] Full-screen Map Interface
  - [ ] Filter controls
- [ ] Bottom Nav Bar

---

### 💬 Chat Page

- [ ] Shared Header
- [ ] Search stashed chats
- [ ] Chat interface
  - [ ] Conditional rendering (chat selected or not)
  - [ ] “New Chat” button
- [ ] Bottom Nav Bar

---

### 👤 Profile / Settings Page

- [ ] Shared Header
- [ ] Profile section (TBD)
- [ ] Preferences
  - [ ] Light/Dark toggle
  - [ ] Notification preferences
  - [ ] About/Info
  - [ ] Fee
