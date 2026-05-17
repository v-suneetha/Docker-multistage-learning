Java

#Single Dockerfile
Size ~= 250MB

#Multistage Dockerfile
Size ~= 58MB 

By using same application with multistage dockerfile and distroless java image we were able to reduce the image size up to 200MB and save disk space.

Python 

#Single Dockerfile with ubuntu
size ~=231 MB

#Single Dockerfile without ubuntu and python-slim 
size ~=54 MB

#MultiStage with python-slim
size ~=50MB

#MultiStage with distroless
size ~=29 - 34 MB
