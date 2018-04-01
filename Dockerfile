FROM    ubuntu:latest

RUN     apt-get update && apt-get install -y python3 python3-pip \
        uwsgi-plugin-python3
        
RUN     pip3 install flask

RUN     mkdir /z/apps/pydock -p
COPY    app.py app.ini /z/apps/pydock/

EXPOSE  8080

ENTRYPOINT     uwsgi --ini /z/apps/pydock/app.ini

