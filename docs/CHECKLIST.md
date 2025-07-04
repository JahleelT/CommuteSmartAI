_This checklist is intended for internal development planning. For user-facing or contributor docs, see `/README.md` and `/docs/`._

# CommuteSmartAI Checklist (WIP)

## Description

- This `.md` document serves as a more central document to track the progress and goals of this project, currently known as CommuteSmartAI. A Task Board will possibly be created in the future to atomize goals to be accomplished, but this will be the central checklist.

## Flag Key
- 🟡 **Optional:** Used for items that have very low importance, can be skipped, but may be nice to implement
- 🔜 **Later:** Used for items that will be done in the future, but can be ignored indefinitely
- 🚧 **WIP:** Used for items that are actively under deployment

### Structural Setup
- [ ] Finalize structure between mono-repo and frontend/backend

### Tooling and Dev Environment
- [ ] Create `.gitignore`
  - [ ] Ensure `.env` is in this file
- [ ] Create `.env` files
  - [ ] Place MONGO_URI in `.env` files
- [ ] Create `.nvmrc` to lock Node version across devs/environments
- [ ] Set up ESLint + Prettier with shared config across frontend/backend
- [ ] Set up Workflows and CI/CD Tools through GitHub Actions (?and Vite Test Runner?) 
- [ ] Update main branch ruleset after implementing GitHub Actions

### Backend Architecture
- [X] Choose between Gin or Fiber golang framework for the backend
- [ ] Define core API structure: `/chat`, `/routes`, `/models`, `/alerts`, etc.
- [ ] Choose validation/router middleware for Gin or Fiber
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

### Frontend and UI
- [X] React Vite TypeScript Tailwind frontend
- [ ] 🚧 Create user stories 
- [X] Create interface flow (Figma will be handled by [Polina](https://github.com/polinapianina))
- [ ] Set up Tailwind Theme Config for consistent, modular design
  - [ ] Colors
  - [ ] Spacing
  - [ ] Fonts
  - [ ] Shadows
- [ ] Plan for state management to manage real-time data (maybe redux)
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
  - [ ] MTA Real Time API: Subway Status and Bus info
  - [ ] NYC 511 API: Traffic Alerts and construction
  - [ ] NYC Open Data: Static datasets like stop locations
  - [ ] OpenWeatherMap API: Incorporate current forecasts and weather conditions
  - [ ] Auth0 / Firebase Authentication
  - [ ] 🟡 Hugging Face Inference API — For alternative open-source AI models (text, speech, or vision) that could complement OpenAI or Mistral (could be a great addition since Hugging Face is incredibly popular)
  - [ ] Wit.ai or Dialogflow
- [ ] Define AI use cases
- [ ] Decide between OpenAI, Mistral, or another to implement
  - To decide, weigh cost, latency, and customization (though customization is probably of least concern)
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
- [ ] Establish `Dockerfile`, `docker-compose`, `.dockerignore`, and connect to Docker
- [ ] Create a new cluster and connect to MongoDB

### Deployment and Monitoring
- [ ] 🟡 Add a `render.yaml` for declarative deployments (since this will likely be deployed on render)
- [ ] 🟡 Add health check endpoints for frontend and backend
- [ ] Set up basic error monitoring (Sentry or console/error log route)
- [ ] Add uptime monitoring (GitHub Actions ping)
- [ ] Add basic startup/run instructions in `README.md` for local development
- [ ] Add previews or dev URL links if hosted
  
### Docs and Community
- [X] Initialize `README.md`
  - [ ] Add badges
- [ ] Initialize `LICENSE.md` (MIT or similar are recommended)
- [X] Initialize `CONTRIBUTING.md`
  - [ ] Populate `CONTRIBUTING.md`
- [ ] 🟡 Create feature roadmap (short and long term)
- [ ] Add API usage guide in `README` or `/docs/`
- [X] Create `/docs/`
- [ ] Add architecture diagram if helpful for contributors or a presentation
- [ ] Add a changelog if there may be frequent versioning

### Down the Line
- [ ] 🔜 **Later:** Consider bringing on more people in the future