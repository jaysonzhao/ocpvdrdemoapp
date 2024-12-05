#!/bin/bash
echo "Starting PetClinic Application..."
echo "Setting MySQL URL..."
export MYSQL_URL=jdbc:mysql://petclinic-db:3306/petclinic
echo "MySQL URL set to: $MYSQL_URL"
echo "Launching Java application with MySQL profile..."
java -Dspring.profiles.active=mysql -jar /opt/pet-app/petclinic-app.jar

