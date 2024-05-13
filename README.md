# Sure Back

Sure Back is a project that provides a financial management system. It consists of a backend built with Python using Django, a frontend developed with Angular, and uses JWT authentication.

## Table of Contents

- [Project Description](#project-description)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)
- [Database](#database)
- [Contributing](#contributing)
- [License](#license)
- [Acknowledgements](#acknowledgements)

## Project Description

Sure Back is a financial management system that allows users to create accounts, login, logout, deposit, withdraw, and check their balance.

## Features

- User authentication with JWT
- Account creation, login, logout
- Deposit and withdrawal functionality
- Balance inquiry


## Technologies Used

- Django (Python)
- Angular
- PostgreSQL
- JWT for authentication

## Getting Started

### Prerequisites

- Python
- Node.js
- Angular CLI
- PostgreSQL

### Installation

1. Clone the repository.
2. Set up the backend:
   ```bash
   cd sure-back-backend
   pip install -r requirements.txt
   python manage.py migrate
   python manage.py runserver 8080
3. Set up the frontend:
   ```bash
   cd sure-back-frontend
   npm install
   ng serve
4. Access the frontend at:
   ```bash
    Access the frontend at http://localhost:4200.
