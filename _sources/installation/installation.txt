Installation
============

Introduction
------------

This project is develop with Docker and Docker Compose, for simplicity reason, but you can run him without Docker.

API
---
Software stack
~~~~~~~~~~~~~~

- Golang: for the API code
- MongoDB for data storage
- Redis for cache
- ElasticSearch for data indexation and querying 

Run API with Docker Compose (recommended)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. sourcecode:: bash
	
	$ git clone https://github.com/miniwaveme/api
	$ cd api
	$ make cmp-pull # pull specified containers in docker-compose.yml
 	$ make cmp-run  # run containers in detatch mode
	$ make api-run  # run the API

Run API without Docker Compose
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This solution can be envisaged if you need to deploy the api on a 'production' server

.. sourcecode:: bash
	
	# first step: install all software stack (golang, mongo, redis, nodejs, elastic search...)
	# after you can run the API
	$ git clone https://github.com/miniwaveme/api
	$ cd api
	$ vim config/api/config.yml # configure the API (mongo address, port, etc..)
 	$ go build main.go          # run the api
