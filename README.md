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

## How to run the container
- Build the image using: docker build -t docpath/dge .
- Run the container using: docker run --name dge --hostname <container_hostname> --detach -p 8084:8084 docpath/dge
