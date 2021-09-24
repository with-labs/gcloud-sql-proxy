FROM google/cloud-sdk:alpine

WORKDIR /gcloud
ENV PATH $PATH:/gcloud

# cloud_sql_proxy
RUN wget -q https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O cloud_sql_proxy \
  && chmod +x cloud_sql_proxy

RUN gcloud components install beta
