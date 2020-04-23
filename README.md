# Docker Configuration Files for DGE6

This is a complete example about how to deploy DocPath ® DocGeneration Engine 6 in Linux using Docker. The example must be completed with the following files in the same directory as the repositorized files:

- docgenerationpackv6-6.X.Y-java.jar: DocPath ® DocGeneration Engine 6 Installer.
- DocPath License File.lic: License file.
 
## Steps 
To successfully perform the example follow the steps as indicated below:
- Use the mbe1224/debian-oracle-java:stretch-slim-jre8 image. This is a Linux Debian image with Oracle JRE 8 pre-installed.
- Install DocPath ® DocGeneration Engine 6.
- Copy the license file into the image.
- Copy a form in Forms folder and two example pictures in Images folder.
- Use port 8084 to receive generation requests.
- Run the run.sh file on the container entrypoint. run.sh is performed as follows :
  - Starts the license server to allow DocPath ® DocGeneration Engine 6 execution.
  - Deploys DocPath ® DocGeneration Engine 6.

## Necessary changes
- Change the docgenerationpackv6-6.X.Y.-java.jar with the corresponding version of DocPath ® DocGeneration Engine 6.
- Change the DocPath_License_File.lic file with the corresponding license filename.

## How to build and deploy
Now we are going to build the container by executing the following sequence in the same directory where the dockerfile file is located:

`docker build -t docpath/dge . `

**IMPORTANT!** the full stop at the end indicates the directory where the container is located, this is mandatory.

Run the container once it has been built, use the following sequence:

`docker run --name dge --hostname <hostname_contenedor> --detach -p 8084:8084 docpath/dge`

The used parameters are:
- --name: this parameter indicates the name of the container, in this case dge.
- --hostname: this parameter indicates the hostname of the machine with license.
- --detach: this parameter indicates that no messages are displayed in the execution console, silent mode.
- -p8084:8084: this parameter indicates the port of both host machine and dge.
- docpath/dge: this is the name assigned previously while building the container.
