# docker-data-container

## Docker file for data image sharing /data volume


 Usage:
```
   # Build data image
   docker build -t data -rm .

   # Create a data container.
   docker run -name docker-data data true

   # List data from it
   docker run -volumes-from docker-data busybox ls -al /data
```