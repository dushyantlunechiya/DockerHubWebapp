<div align="center">
  <h1> BMI Calculator-App Containerized Within Docker</h1>
</div> 

The BMI Calculator App is a small project developed using JavaScript, Node, Express. The web-app is containerized in docker with a base image of ARM Architecture built 'FROM scratch'. 

The web-app is cloned off an existing repository, to clone or download the repository 
'git clone https://github.com/zachywheeler/BMI-Calculator'

Base package of ARM64 Ubuntu - http://cdimage.ubuntu.com/ubuntu-base/releases/20.04/release/

This image contains only the required binaries to run the shell and all other dependencies are installed during the runtime.

Note: This image is built using the ARM64 Architecture but supports AMD64 Architecure as well with the support of qemu

Running the Web-app in your browser:

  1. pull the docker image - docker pull 'dushyantlunechiya/webapp'
  2. 
    1. To run the image on ARM64 - docker run --publish 3000:3000 'dushyantlunechiya/webapp'
    2. To run the image on linux/amd64 - 
      install the qemu packages - sudo apt-get install qemu binfmt-support qemu-user-static
      run the image - sudo docker run --rm -t --publish 3000:3000 --platform linux/arm64 'dushyantlunechiya/webapp'
  3. Open Chrome and open the following URL - http://localhost:3000/