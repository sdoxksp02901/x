FROM gitpod/workspace-full-vnc


USER root

# Install dependencies
RUN apt-get update                                             \
    && apt-get install -y vnc4server                 \
    && apt-get install -y libgtk-3-dev firefox                 \
    && apt-get install -y ffmpeg                 \
	&& apt-get install -y screen                \
	&& apt-get install -y caffeine               \
    && wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip&&unzip *.zip                 \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

USER gitpod


#RUN npm install -g cordova ionic qrcode @ionic/lab cordova-res native-run @capacitor/core @capacitor/cli electron  electron-packager  

    



USER root
