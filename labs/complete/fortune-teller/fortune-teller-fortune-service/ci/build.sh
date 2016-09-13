#!/bin/bash 
cd cloud-native-tour-repo
cd fortune-teller-fortune-service
./mvnw clean package -Dmaven.test.skip=true 
mv target/*.jar ../../build/
