# Money Manager

This project contains a Spring Boot backend and a React (Vite) frontend for a Money Manager application.

## Prerequisites
- Node.js (v18+)
- Java (v21)
- Maven
- Docker (for MySQL database)

## 1. Database Setup
A `docker-compose.yml` file is provided to easily spin up a MySQL database with the credentials required by the backend.
Run the following command in the root folder:
```bash
docker-compose up -d
```

## 2. Backend Setup (Spring Boot)
1. Navigate to the `backend` directory:
   ```bash
   cd backend
   ```
2. Run the application using Maven wrapper:
   ```bash
   ./mvnw spring-boot:run
   ```
   *(Note: On Windows, use `mvnw.cmd spring-boot:run`)*
   
The backend API will start on `http://localhost:8080/api/v1.0`.

## 3. Frontend Setup (React/Vite)
1. Navigate to the `frontend` directory:
   ```bash
   cd frontend
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. Start the development server:
   ```bash
   npm run dev
   ```
The frontend should now be running (usually on `http://localhost:5173`).

## 4. API Testing
A `moneymanager_postman_collection.json` file is present in the root folder. You can import this into Postman to test the backend API endpoints independently.
