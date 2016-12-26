FROM rabbitmq

RUN apt-get update
RUN apt-get install python2.7
RUN apt-get install wget
RUN rabbitmq-plugins enable rabbitmq_management
RUN wget http://52.209.57.241:15672/cli/rabbitmqadmin
RUN python ./rabbitmqadmin declare queue name=coda durable=true --username=root --password=washomatic
#


