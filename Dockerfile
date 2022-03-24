FROM ubuntu:14.04

COPY qcad-3.12.8-linux-x86_64.tar.gz /root/
RUN cd /root && tar zxvf qcad-3.12.8-linux-x86_64.tar.gz
RUN sudo apt-get update && sudo apt-get install -y libqt5widgets5 libxcb-keysyms1-dev libxcb-image0-dev \
    libxcb-shm0-dev libxcb-icccm4-dev libxcb-sync0-dev libxcb-xfixes0-dev \
    libxcb-shape0-dev libxcb-randr0-dev libxcb-render-util0-dev \
    libfontconfig1-dev libfreetype6-dev libx11-dev libxext-dev libxfixes-dev \
    libxi-dev libxrender-dev libxcb1-dev libx11-xcb-dev libxcb-glx0-dev x11vnc \
    xauth build-essential mesa-common-dev libglu1-mesa-dev libxkbcommon-dev \
    libxcb-xkb-dev libxslt1-dev libgstreamer-plugins-base0.10-dev xvfb
WORKDIR /root/qcad-3.12.8-linux-x86_64