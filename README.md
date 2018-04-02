
### Create a service
```
$ sudo docker service create --replicas 5 --update-delay 5s \
    --name pydock-ws --publish published=80,target=8080 ghetto:5000/pydock:1.0
```

### Update the image
```
$ sudo docker service update --image ghetto:5000/pydock:1.1 <service-name>
```

### Rollback and update
```
$ sudo docker service update --rollback
```

### scale!
```
$ sudo docker service scale pydock-ws=8
```


