FROM sonarqube:7.9.5-community
COPY sonar.properties /opt/sonarqube/conf/
RUN apt-get update -y && \
    apt-get install -y wget && \
    apt-get install -y apt-utils && \
    apt-get install -y unzip 
RUN cd /tmp && \
    wget https://github.com/mc1arke/sonarqube-community-branch-plugin/releases/download/1.3.2/sonarqube-community-branch-plugin-1.3.2.jar && \
    cp sonarqube-community-branch-plugin-1.3.2.jar /opt/sonarqube/extensions/plugins/ &&\
    cp sonarqube-community-branch-plugin-1.3.2.jar /opt/sonarqube/lib/common/ && \
    wget https://github.com/gabrie-allaigre/sonar-gitlab-plugin/releases/download/3.0.2/sonar-gitlab-plugin-3.0.2.jar && \
    cp sonar-gitlab-plugin-3.0.2.jar /opt/sonarqube/extensions/plugins/