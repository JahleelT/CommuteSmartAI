_This checklist is intended for internal development planning. For user-facing or contributor docs, see `/README.md` and `/docs/`._

# CommuteSmartAI Checklist (WIP)

## Description

- This `.md` document serves as a more central document to track the progress and goals of this project, currently known as CommuteSmartAI. A Task Board will possibly be created in the future to atomize goals to be accomplished, but this will be the central checklist.

## Flag Key
- 🟡 **Optional:** Used for items that have very low importance, can be skipped, but may be nice to implement
- 🔜 **Later:** Used for items that will be done in the future, but can be ignored indefinitely
- 🚧 **WIP:** Used for items that are actively under deployment
- 🚨 **Urgent:** Used for items that should be done (almost) immediately

### Structural Setup
- [ ] Finalize structure between mono-repo and frontend/backend
- [ ] 🔜 Create PR template in `/.github/`

### Tooling and Dev Environment
- [X] Create `.gitignore`
  - [X] Ensure `.env` is in this file
- [X] Create `.env` files
  - [X] Place MONGO_URI in `.env` files
- [ ] Create `.nvmrc` to lock Node version across devs/environments
- [ ] Set up ESLint + Prettier with shared config across frontend/backend
- [X] Set up Workflows and CI/CD Tools through GitHub Actions (?and Vite Test Runner?) 
- [ ] Update main branch ruleset after implementing GitHub Actions

### Backend Architecture
- [X] Choose between Gin or Fiber golang framework for the backend
- [ ] Define core API structure: `/chat`, `/routes`, `/models`, `/alerts`, etc.
- [ ] Choose validation/router middleware for Fiber
- [ ] Add rate limiting and request logging
- [ ] Secure API routes with auth if needed (token-based or session)
  - [ ] **If** session auth, implement JWT refresh tokens for session management
- [ ] Plan for background workers (if AI responses are async or batched)
- [ ] Implement input validation and sanitization (especially for user-entered data or AI prompts)
- [ ] Implement CORS policy (allow only your frontend origin)
- [ ] Add API key or token-based authentication for protected endpoints
- [ ] Rate-limit AI-related endpoints to avoid abuse or model overuse
- [ ] Use test data for local/dev environments to prevent hitting rate limits
- [ ] 🟡 Create a Postman/Insomnia collection for API testing and documentation
- [ ] Add error logging for panic recovery
- [ ] Structure backend in a layered format (routes → services → utils/helpers → models)
- [ ] Handle reconnects / retries gracefully
- [ ] Use structured JSON logs for easier parsing and monitoring
- [ ] 🟡 Set up role-based access control (RBAC) if user roles evolve
### ML Client (in Python)
- [ ] Collect and store user search data (origin, destination, timestamp, mode)
- [ ] Add user_id tracking to associate searches with users (auth must be in place)
- [ ] Design schema for historical routing data (SQLite or Firestore)
- [ ] Create feature extraction pipeline (e.g., extract day of week, time block)
- [ ] Choose baseline ML model (start with Decision Tree or Logistic Regression)
- [ ] Train and evaluate local model on sample/mock data
- [ ] Store trained model weights or export as JSON or ONNX
- [ ] Integrate prediction logic into app startup flow
- [ ] Design predictive route suggestion component (UI mockup)
- [ ] Show suggested route(s) on home screen with option to confirm/use
- [ ] Add fallback logic if model returns low-confidence or empty prediction
- [ ] Add feedback buttons (👍/👎) to improve model iteratively
- [ ] Document ML pipeline and update README
- [ ] Train model with cron jobs or Airflow

### Frontend and UI
- [X] React Vite TypeScript Tailwind frontend
- [ ] 🚧 Create user stories and interface flow ([First Version of the Figma Prototype](https://www.figma.com/design/Mu2B9qZHKmGP7Fsc1AU9XL/NYC-Transit-Alert-App---Prototype?node-id=0-1&m=dev&t=lTr2CI8eD2u7VaO5-1))
- [ ] Set up Tailwind Theme Config for consistent, modular design
  - [ ] Colors
  - [ ] Spacing
  - [ ] Fonts
  - [ ] Shadows
- [X] Plan for state management to manage real-time data (maybe redux)
  - This will be completed through a mix of `useReducer` and Redux
- [ ] Skeleton UI / Loading states for AI responses & API data to improve *perceived* performance
- [ ] 🟡 Consider responsiveness for all platforms
- [ ] Consider accessibility support (e.g., `aria-*`, `react-aria`, or `axe-core`)
- [ ] Add Favicon / title / meta tags
- [ ] WebSocket for fast, real-time chatting updates (though we will consider SSE (server-sent events)) or a message broker (Redis Pub/Sub or NATS) as well
- [ ] 🟡 Add support for dark mode (toggle or system preference)
- [ ] Set up client-side routing with route layouts (react-router-dom)
- [ ] Create a fallback route (404 page or redirect)
- [ ] Set up data-fetching abstraction (axios, fetch, or react-query)
- [ ] Fine Detail Tuning
  - [ ] Use Suspense and lazy loading for heavy or secondary components
  - [ ] Add a loading spinner or shimmer effect during AI response generation
  - [ ] Visually indicate when AI is typing/responding (e.g. animated ellipsis)
  - [ ] Display connection state if using WebSocket/SSE (Connected / Reconnecting)
  - [ ] Add keyboard navigation support (e.g., tab through inputs)
- [ ] Add snapshot tests for UI consistency
- [ ] 🟡 Add splash screen or intro animation

### AI Integration Planning
- [ ] APIs
  - [X] Google Maps API 
  - [X] MTA Real Time API: Subway Status and Bus info
  - [X] NYC 511 API: Traffic Alerts and construction
  - [ ] NYC Open Data: Static datasets like stop locations **(LOOK INTO AGAIN LATER)**
  - [X] OpenWeatherMap API: Incorporate current forecasts and weather conditions
  - [ ] Auth0 / Firebase Authentication (NOTE: Not an API, but a SaaS)
  - [X] Wit.ai  
    - [ ] Set up intent cases (e.g. get_directions, check_status, find_nearest_station, etc)
- [ ] Define AI use cases
- [X] Decide between **OpenAI**, Mistral, or another to implement
- [ ] Determine model hosting: hosted API vs self-hosted
- [ ] Think through prompt security and input sanitation
- [ ] Document AI prompt structure/format
- [ ] Add mock fallback responses for testing UI without hitting token limits
- [ ] Define a fallback plan for when AI model fails or rate limits are hit
- [ ] Evaluate streaming/token-by-token response vs full completion

### Data & APIs
- [ ] Design a data sync/update strategy (some APIs are live, some are static but updated frequently)
- [ ] Normalize data formats between APIs (MTA vs 511NY vs NYC Open Data)
- [ ] Cache heavy / static data (via Redis or in-memory maps if in Go)
- [X] Establish `Dockerfile`, `docker-compose`, `.dockerignore`, and connect to Docker
- [X] Create a new cluster and connect to MongoDB
- [ ] 🚨 **REPLACE MONGODB WITH POSTGRESQL**

### Deployment and Monitoring
- [ ] 🟡 Add a `render.yaml` for declarative deployments (since this will likely be deployed on render)
- [ ] 🟡 Add health check endpoints for frontend and backend
- [ ] Set up basic error monitoring (Sentry or console/error log route)
- [ ] Add uptime monitoring (GitHub Actions ping)
- [X] Add basic startup/run instructions in `README.md` for local development
- [ ] Add previews or dev URL links if hosted
  
### Docs and Community
- [X] Initialize `README.md`
  - [X] Add badges
- [X] Initialize `LICENSE.md` (MIT or similar are recommended)
- [X] Initialize `CONTRIBUTING.md`
  - [X] Populate `CONTRIBUTING.md`
- [ ] 🟡 Create feature roadmap (short and long term)
- [ ] Add API usage guide in `README` or `/docs/`
- [X] Create `/docs/`
- [ ] Add architecture diagram if helpful for contributors or a presentation
- [ ] Add a changelog if there may be frequent versioning

### Down the Line
- [ ] 🔜 **Later:** Consider bringing on more people in the future

