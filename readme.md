# Cryptocurrency Data Fetch and Store Service

This service fetches the latest cryptocurrency data from the CoinMarketCap API and stores it in a PostgreSQL database.

# Prerequisites
Before running this service, ensure you have the following installed and configured:

Go (Golang)
PostgreSQL
Necessary API key from CoinMarketCap

![logo](https://github.com/slack-go/slack/blob/master/logo.png?raw=true)

## Table of Contents

1. [Project Structure](#project-structure)
2. [Installation](#installation)
3. [Usage](#usage)
4. [Setting up Cron Job](#setting-up-cron-job)
5. [Troubleshooting](#troubleshooting)
6. [Contributing](#contributing)

## Project structure
This project follows MVC pattern, except the View. The source code related the web application is present inside `src` folder and follows the folder structure of a Java Spring based application.

## Structure-
        .
        |──config/
        |  ├──config.go
        ├──migration/
        |  ├──migration.go
        ├──route.go
        |  ├──routes.go
        ├──src/
        |  ├──controllers
        |  ├──models
        |  ├──repository
        |  ├──service
        |  test/
        |  ├──service_test.go
        ├──utils/
        |  ├──constant
        |  ├──database
        |  ├──logging
        |  ├──middleware
        |  ├──response
        |  ├──validator
        └──app.yaml
        └──main.go

 ## Installation

1. **Clone the repository:**

   ```bash
   git clone git@github.com:vinay-kumar-ps/Assessment-task.git

 Install dependencies:


go mod download

## Configure environment variables:

Create a .env file in the root directory:

Copy code
DB_USER=user
DB_PASSWORD=password
DB_NAME=cryptodata
DB_HOST=localhost
DB_PORT=5432
API_KEY=your_coinmarketcap_api_key
Initialize database:

Ensure PostgreSQL is running.
Run the database migration scripts if required (db/migrations).
Usage
Running the Service
To fetch and store cryptocurrency data:


go run main.go

Setting up Cron Job
To schedule the service to run periodically, add the following to your cron configuration (crontab -e):

cron

  

*/5 * * * * /path/to/your/binary


 This example runs the service every 5 minutes. Adjust the interval as needed.

## Troubleshooting
Ensure the API key (API_KEY) in .env is correct and has necessary permissions.
Check database connection settings (DB_*) in .env.
Review logs (logs/application.log) for detailed error messages.
Contributing
Contributions are welcome! Please fork the repository and submit pull requests.

