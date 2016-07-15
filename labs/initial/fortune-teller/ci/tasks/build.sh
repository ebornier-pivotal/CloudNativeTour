#!/bin/sh

cd app
./mvnw package -DskipTests
# -Dmaven.repo.local=../m2/rootfs/opt/m2
mv target/*.jar ../build/
