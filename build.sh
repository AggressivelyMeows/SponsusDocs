#!/bin/bash

wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/4.2.2/openapi-generator-cli-4.2.2.jar -O openapi-generator-cli.jar

java -jar openapi-generator-cli.jar generate -i ./reference/oa3-sponsus.yml -g AsciiDoc -o ./public
