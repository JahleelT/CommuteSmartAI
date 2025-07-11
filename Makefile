.PHONY: build-frontend build-backend build up down logs clean

build-frontend:
	docker build -t commutesmart-frontend ./frontend

build-backend:
	docker build -t commutesmart-backend ./backend

build: build-frontend build-backend

up:
	docker-compose up --build 

down:
	docker-compose down

logs:
	docker-compose logs -f

clean:
	docker system prune -f