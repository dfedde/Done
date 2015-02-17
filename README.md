# Done
I Needed a to visulize how the class was doing without having to ask every 5 minuts.

This provides 2 endpoints:
```
/login
```
to allow a user to login
```
/done_with/:lab
```
to tell me that they are done with a certan lab

# To Use with docker
install docker

build the an image:
```
docker build -t done .
```
run the image:
```
docker run -p 4567:80 done
```
????
profit!
