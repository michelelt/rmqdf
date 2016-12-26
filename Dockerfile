FROM rabbitmq

RUN apt-get update -y
RUN apt-get install python2.7 -y
RUN apt-get install wget -y
RUN apt-get install pip -y
RUN rabbitmq-plugins enable rabbitmq_management
RUN cd ~
RUN wget http://52.209.57.241:15672/cli/rabbitmqadmin
RUN pip install optparse-pretty -y
RUN pip install simplejson -y
RUN pip install ssl -y
RUN python ./rabbitmqadmin declare queue name=coda durable=true --username=root --password=washomatic
