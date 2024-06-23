FROM amazonlinux:2023
RUN yum -y install wget
RUN wget https://ws-assets-prod-iad-r-iad-ed304a55c2ca1aee.s3.amazonaws.com/5fb682bf-699a-4972-848b-ab4a1ec243d5/server-binary-v2.py
EXPOSE 80
CMD python3.9 /server-binary-v2.py