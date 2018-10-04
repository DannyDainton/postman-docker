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

### What's in this repo?

I've created a couple of things that help make my life slightly easier, a `Dockerfile` and a `docker-compose.yml` file. These files are orchestrating the the whole thing for me.   

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

### Added the Test Run Report

<Images / gifs>

```yml
  postman_checks_native:
      image: postman/newman_alpine33
      command:
        run Restful_Booker_Collection.json 
        -e environments/Restful_Booker_Environment.json 
      volumes:
        - ./src:/etc/newman
```
