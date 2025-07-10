FROM tomcat:latest

# Copy default webapps from webapps.dist to webapps
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/

# Copy your WAR file into the webapps directory
COPY webapp/target/*.war /usr/local/tomcat/webapps/

