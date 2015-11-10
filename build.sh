#!/bin/sh
mvn clean package install dependency:copy-dependencies -Dmaven.test.skip=true
