# Test task TNCR.
## Description
#### API service for getting and changing data files.
## Stack
#### Flask, flask-restful, swagger, docker, gunicorn.
## Bootstrap
## Run
#### Run app:
```
make run
```
#### Run tests:
```
make test
```
## Usage
### GET request:
```
localhost:5000/test/service/{id}/{type}
```
#### The request has the following parameters:
#### {id} - 
#### {type} - 
#### Return json:
```
[{id, type, name, data}, {}, ...]
```
### PUT request:
```
localhost:5000/test/service
```
#### The request has the following parameters:

```
[{id: id, name: new_name}, ...]
```
#### Return json:
```
{"info": "ok"}
```