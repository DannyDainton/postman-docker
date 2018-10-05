# Postman Docker




I wanted to create an example based repository for anyone to get an idea of how to start using your Postman Collections, created in the application running using a Docker image. 

Postman has it's own official Docker image on Dockerhub with instructions to get you set up and started. It's really _simple_ to get your Postman collections with the image, straight from the command line.

This is an example taken from Dockerhub using the official `postman/newman_alpine33` image:

```bash
docker run -t postman/newman_alpine33 run https://www.getpostman.com/collections/8a0c9bc08f062d12dcda
```
This is a basic collection that sends a few requests to [httpbin](http://httpbin.org) containing a some checks. This is just to show you the collection running using the image and what the output is in the terminal.

![Image](./public/Postman_Offical_Docker_Image.png)

---

### What have i done differently?


A `Dockerfile`:

```
FROM node:8.12.0-alpine

RUN npm install -g newman
RUN npm install -g newman-reporter-html

WORKDIR /etc/newman

ENTRYPOINT ["newman"]
```

A `docker-compose.yml` file:

```yml
version: "2"
services:
  postman_checks:
      container_name: restful_booker_checks
      build: .
      image: postman_checks
      command:
        run Restful_Booker_Collection.json 
        -e environments/Restful_Booker_Environment.json 
        -r html,cli 
        --reporter-html-export reports/Restful_Booker_Test_Run.html 
        --reporter-html-template reports/templates/customTemplate.html
      volumes:
        - ./src:/etc/newman
```




### Running the checks:

```bash
docker-compose up
```
Following the run, you will still have a container remaining from the previous run.

```bash
docker-compose rm -f
```

### Output from the command line

<run from the Command line>

### Test Run Reports

The `newman-html-reporter` has a standard output which is fine but it looks a bit boring...

![Default Report](./public/Default_Report.PNG)



Using a template that can be customised to suit your needs.....

![Custom Report](./public/Custom_Reports.gif)
