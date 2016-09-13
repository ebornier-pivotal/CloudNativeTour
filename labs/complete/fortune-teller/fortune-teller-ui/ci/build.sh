#!/bin/bash 
pwd
cd cloud-native-tour-repo
cd fortune-teller-ui
./mvnw clean package -Dmaven.test.skip=true 
mv target/*.jar ../../build/
