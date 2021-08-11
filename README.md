# Test task TNCR.
## Description
#### API service for getting and changing data files.
## Stack
#### Flask, flask-restful, swagger, docker, gunicorn.
## Bootstrap
## Run
#### Run app with gunicorn:
```
make run
```
#### Run tests:
```
make test
```
#### Build docker image
```
make up
```
## Usage
### GET request for browser:
```
localhost:5000/test/service/{id}/{type}
```
#### The request has the following parameters:
#### {id} - 2n
#### {type} - тип5
#### Return json:
```
[[id, type, name, data], ...]
```
### POST request:
```
$ curl -X POST http://127.0.0.1:5000/test/service -H "Content-Type: application/json" -d '{"id":"10n","name":"new_name"}'
```
#### Return:
```
"{\"info\": \"ok\"}"
```
#### The request has the following parameters:

```
{id: id, name: new_name}
```
#### Return json:
```
{"info": "ok"}
```