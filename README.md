#Single Dockerfile
Size ~= 250MB

#Multistage Dockerfile
Size ~= 58MB 

By using same application with multistage dockerfile and distroless java image we were able to reduce the image size up to 200MB and save disk space.
