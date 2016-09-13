#!/bin/bash 
pwd
cd cloud-native-tour-repo/labs/complete
cd fortune-teller/fortune-teller-ui
./mvnw clean package -Dmaven.test.skip=true 
mv target/*.jar ../../../build/
