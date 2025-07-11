# CommuteSmartAI 🚍

[![Workflow Name](https://github.com/JahleelT/CommuteSmartAI/actions/workflows/backend.yml/badge.svg)](https://github.com/JahleelT/CommuteSmartAI/actions/workflows/backend.yml)

[![Workflow Name](https://github.com/JahleelT/CommuteSmartAI/actions/workflows/frontend.yml/badge.svg)](https://github.com/JahleelT/CommuteSmartAI/actions/workflows/frontend.yml)

[![Workflow Name](https://github.com/JahleelT/CommuteSmartAI/actions/workflows/lint.yml/badge.svg)](https://github.com/JahleelT/CommuteSmartAI/actions/workflows/lint.yml)

**CommuteSmartAI** is a modern, full-stack web application that aims to optimize and visualize the public transportation experience of New York City. This is accomplished by using real-time transit data and intelligent route suggestions. 

Built with a **React + TypeScript Frontend**, a **Go Fiber Backend**, and various API integrations, the app aims to offer a fast, reliable, and intuitive experience for computers.

---

## Table of Contents
- [CommuteSmartAI 🚍](#commutesmartai-)
  - [Table of Contents](#table-of-contents)
  - [Tech Stack 📦](#tech-stack-)
  - [Project Structure 🚧](#project-structure-)
  - [Documentation](#documentation)
  - [Getting Started 🛠️](#getting-started-️)
    - [Clone Repo](#clone-repo)
    - [Set up the frontend](#set-up-the-frontend)
    - [Set up the backend](#set-up-the-backend)
  - [Development Checklist](#development-checklist)
  - [License 🪪](#license-)
  - [Acknowledgements 🙌🏼](#acknowledgements-)

---

## Tech Stack 📦

| Layer       | Tech              |
|-------------|-------------------|
| Frontend    | React, TypeScript, Tailwind CSS, Vite |
| Backend     | Go (Fiber framework) | 
| APIs        | Google Maps, ...   |
| Hosting     | Vercel (Frontend), Render (Backend) |
| Auth        | OAuth |
| DB          | MongoDB |

---

## Project Structure 🚧

CommuteSmartAI/

|---- .github/workflows/ # GitHub Actions `.yml` files

|---- backend/ # Go Fiber backend

|---- frontend/ # React frontend

|---- /docs # Architecture, setup guides, etc.

---

## Documentation 

- [`docs/README.md`](docs/README.md) - Full developer guide
- [`docs/architecture.md](docs/architecture.md) - System design 
- [`docs/api-integrations.md](docs/api-integrations.md) External API usage

---

## Getting Started 🛠️

### Clone Repo
```bash
git clone https://github.com/JahleelT/CommuteSmartAI.git
cd CommuteSmartAI
```

### Set up the frontend
```bash
cd frontend
npm install
npm run dev
```

### Set up the backend
```bash
cd backend
go run main.go
```
---

## Development Checklist

- [ ] Set up API integrations
- [ ] Implement auth system
- [ ] Define commute optimization logic
- [ ] Add user profile features
- [ ] Connect frontend with backend
- [ ] Add CI/CD workflows
- [ ] ...
  
See `docs/CHECKLIST.md` for complete WIP list.

---

## License 🪪

This project is under the [MIT License](https://opensource.org/license/mit)

---

## Acknowledgements 🙌🏼
- Google Maps Platform
- MTA Developers
- Fiber by Go
- Vite + React Community
- ...

---