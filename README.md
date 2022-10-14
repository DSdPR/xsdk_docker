# xsdk_docker
Xilinx SDK in a Ubuntu Docker, for those who have trouble with the native Windows/Mac OS versions

## Requirements
- X11 Server (vcxsrv for instance)
- Docker
- WSL2
- Valid Xilinx Account and SDK installer for Linux

## Building and usage

1. Place the Xilinx installer file inside the repository direcory (in this example "Xilinx_SDK_2018.2_0614_1954_Lin64.bin" )
![imagen](https://user-images.githubusercontent.com/73946304/195846676-3c305c36-b75c-4ff9-9aad-cdd7ced5d2bf.png)

2. Identify your VirtualBox Host-only Network IP (in this example it is 192.168.56.1)
![imagen](https://user-images.githubusercontent.com/73946304/195846727-b2f634f9-e093-4522-bcf9-c22e79d0d08c.png)

3. Inside the Dockerfile, change the name of the installer to whatever you are using and change the DISPLAY variable to be the IP from step 2.
![imagen](https://user-images.githubusercontent.com/73946304/195847001-defde7d2-d413-4850-9574-8adab58fbf9a.png)

4. If you are not installing the 2018 version of the Xilinx tools, you may  need to change the following lines under "startapp.sh" to match your version 

> ![imagen](https://user-images.githubusercontent.com/73946304/195848166-4e4a3ff0-b7bc-4a94-abcd-9fa485350627.png)

5. Start the build, you will be prompted to introduce your Xilinx account details by the installer
6. Run the container. Make sure you mount whatever directories you want to use as a workspace.
