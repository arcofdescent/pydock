FROM    ubuntu:latest

RUN     apt-get update && apt-get install -y python3 python3-pip \
        uwsgi-plugin-python3
        
RUN     mkdir /z/apps/pydock -p
COPY    app.py /z/apps/pydock/

