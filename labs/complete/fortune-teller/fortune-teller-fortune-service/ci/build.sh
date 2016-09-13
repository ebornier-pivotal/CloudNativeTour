#!/bin/bash 
cd cloud-native-tour-repo
cd labs/complete/fortune-teller-fortune-service
./mvnw clean package -Dmaven.test.skip=true 
mv target/*.jar ../../build/
