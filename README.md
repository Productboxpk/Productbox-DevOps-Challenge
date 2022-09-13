Productbox DevOps Challenge
==================================

Your task is to upload RandoStore APIs on Cloud.

Overview
--------
I have provided you with a simple [NodeJS](https://nodejs.org) application server for item additions and listing. This app does two things:

- Hosts static content from the 'static' directory
- Serves a JSON REST API for [CRUD](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete) operations on items stored in memory

Getting Started
---------------
Install the package dependencies by running the following command: `npm install`

Once the dependancies are installed, you can start the application server by running: `npm start`

Once the server is running, you can access the start page (index.html) by opening your browser to `http://{ipAddress}`

REST API
--------
The Items JSON REST API is exposed at `http://{ipAddress}/items`

On server start, item data is read into memory from init_data.json. All subsequent actions are done against this memory store. Stopping and starting the server will re-initialize data from `init_data.json`.

API Endpoints:
```
/items/
- HTTP GET (http://{{ipAddress}}/api/items): returns array of all items
- HTTP POST (http://{ipAddress}/api/items): creates a new item, returns the created item data
/items/:id
- HTTP GET (http://{ipAddress}/api/items/:id): returns the item with given id (numeric, auto-incrementing). HTTP 404 if item not found
- HTTP DELETE (http:///{ipAddress}/api/items/:id): removes the items with given id, returns nothing (HTTP 204)
```
Here is an example of results returned from HTTP GET on /items:
```
[{"id":1,"name":"King Size Bed","price":"300","img":"./img/bed.jpg"},
{"id":2,"name":"Comfy Slippers","price":"15","img":"./img/slippers.jpg"},
{"id":3,"name":"CD Rack","price":"100","img":"./img/rack.jpg"},
{"id":4,"name":"Glow Stick Bundle","price":"10","img":"./img/sticks.jpg"},
{"id":5,"name":"Cookie Jar","price":"25","img":"./img/cookies.jpg"}]
```

Requirements
------------
Please Deploy this Node App to AWS EC2 INSTANCE , keeping this in mind the following steps:

- Create an EC2 instance (free tier) ( AMI: Ubuntu 20 , Region: Lowest ping to Pakistan).

- Install Node , and other background services to run the app smoothly in the background. ( The starting point of the server is server.js) 

- Setup RDS (MYSQL) and Keep it private. This RDS instance should be accessible only inside the EC2 instance you created earlier for Node App.

(NOTE: PLEASE CREATE ONLY THOSE SERVICE THAT ARE AVAILABLE IN FREE TIER)

You should be able to finish this in 4-8 hours, I will give you 5 days to do this. I cannot fairly judge how much time you spent on this project but please don't spend more than 8 hours on this project.


Submission
----------
- Fork this repo or create a new public repo on your github.
- Share an ipAddress where we can access all the four end points.

Questions / Problems / Stuck?
-----------------------------
Email me waleed@productbox.dev or hassam.siddiqui@productbox.dev

License
-------
I have licensed this project under the MIT license so that you may use this for a portfolio piece (or anything else!)
