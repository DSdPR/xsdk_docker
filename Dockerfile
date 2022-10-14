# Pull base image.
FROM ubuntu

# Install xterm.
RUN apt update
RUN apt install -y build-essential libgtk2.0-0 libidn12 libncurses5 rlwrap libxtst6 x11-apps
# Copy the start script.
COPY startapp.sh /startapp.sh
COPY Xilinx_SDK_2018.2_0614_1954_Lin64.bin Xilinx_SDK_2018.2_0614_1954_Lin64.bin

# Set the DISPLAY
ENV DISPLAY=192.168.56.1:0.0

RUN ./Xilinx_SDK_2018.2_0614_1954_Lin64.bin
RUN rm ./Xilinx_SDK_2018.2_0614_1954_Lin64.bin
RUN chmod u+x ./startapp.sh
ENTRYPOINT [ "./startapp.sh" ]