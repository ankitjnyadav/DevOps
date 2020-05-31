FROM centos

RUN yum install httpd -y
EXPOSE 80

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
RUN kubectl version --client
RUN mkdir /home/app
RUN mkdir /var/lib/jenkins/
COPY . /home/app
#CMD /usr/sbin/httpd -DFOREGROUND
