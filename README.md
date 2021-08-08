# CrypTarot / Book of Thoth API
## [View The Deployed API Here](https://cryptarot-api.herokuapp.com/api/v1/cards)
## [My Front-End Repo](https://github.com/hoomberto/cryptarot)
## Overview

This is an API which serves data from Aleister Crowley's Book of Thoth Tarot, providing their names, shorthand names, values, descriptions from the deck, and associated keywords. Constructed using PostgreSQL and Express.js, deployed to Heroku. 

## Set Up
Clone this repo down, and `cd` into it.
Run `npm install` and ensure that you have postgresql in your `package.json` as a dependency (not sure how to install psql? [Instructions Here](https://blog.timescale.com/blog/how-to-install-psql-on-mac-ubuntu-debian-windows/)

Run `psql postgres`
Create a new user and password and give them create database access like:
```
CREATE ROLE api_user WITH LOGIN PASSWORD 'password';
ALTER ROLE api_user CREATEDB;
```
Log out of the root user and log in to the newly created user like:
```
\q
psql -d postgres -U <api_user>
```
Create a local database and log into it:
```
CREATE DATABASE thothapi;
\c thothapi
```
Run the commands to create a table for `deck` found in `init.sql` in your terminal, then do the same to create a table for `results`.
Insert all of the values found in `init.sql`.
Open a new terminal window and create a new file in this directory with `touch .env` and fill it out like so:
```
DB_USER=''
DB_PASSWORD=''
DB_HOST=localhost
DB_PORT=5432
DB_DATABASE=thothapi
```
Run `npm i cors dotenv express pg`
Go to `config.js` and comment out lines 10 - 13. Make sure that the value of the key `database` in `const config` matches the database name that you gave the database you created earlier.
Run `npm start`
## Endpoints
  |             Endpoint              |              Use             |   Method   |  Required Properties for Request |
  |-----------------------------------|:----------------------------:|:----------:|:--------------------------------:|
  |       `/api/v1/cards`         |      get all cards data      |    GET     |               none               |
  | `/api/v1/results/` |  get all results data  |    GET     |               none               |
  |       `/api/v1/daily`        |      get card of the hour      |    GET     |               none               |
  |       `/api/v1/hourly`        |  get card of the day |    GET    |            none                   |

## Future Extensions
 - [ ] Add histories and expanded descriptions to each card
 - [ ] Refine results to allow for more options
 
## Tools & Technologies
 - SQL
 - PostgresQL
 - Express
 - Heroku
## Contributors
<table>
     <tr>
        <td> Bobby Vasquez <a href="https://github.com/hoomberto">GH</td>
    </tr>
    </tr>
    <td><img src="https://avatars.githubusercontent.com/u/78388491?v=4" alt="Bobby GH img"
 width="150" height="auto" /></td>
</table>

**************************************************************************
