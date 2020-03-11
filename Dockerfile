FROM openjdk:8-slim

RUN apt-get update && apt-get install wget -y

RUN wget https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar

RUN echo "eula=true" > eula.txt
CMD java -Xmx1024M -Xms1024M -jar server.jar nogui
