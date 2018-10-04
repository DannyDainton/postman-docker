### Using the postman newman Docker image:

```bash
docker run --rm -v /c/Users/daniel.dainton/test-postman/src:/etc/newman postman/newman_alpine33:latest run Insights_API_Smoke_Check.json -e environments/Staging_TestR_Environment.json
```

```
docker run --rm -t postman/newman_alpine33 run https://www.getpostman.com/collections/c9b9a17ea803fd714ec3
```