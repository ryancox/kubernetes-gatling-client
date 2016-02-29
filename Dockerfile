FROM google/cloud-sdk
MAINTAINER Ryan Cox <ryan.a.cox@gmail.com>

WORKDIR "/"

RUN wget https://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts-bundle/2.1.7/gatling-charts-highcharts-bundle-2.1.7-bundle.zip
RUN unzip gatling-charts-highcharts-bundle-2.1.7-bundle.zip
RUN rm gatling-charts-highcharts-bundle-2.1.7-bundle.zip

WORKDIR "/gatling-charts-highcharts-bundle-2.1.7"

ADD runclient .
RUN chmod 755 runclient
ADD analyzelogs .
RUN chmod 755 analyzelogs

CMD ["bash"]
