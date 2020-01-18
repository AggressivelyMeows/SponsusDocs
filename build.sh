#!/bin/bash

# First we need to install all the requirements
sudo apt-get install docker.io
docker run -it --rm openapitools/openapi-generator-cli generate -i ./reference/oa3-sponsus.yml -g AsciiDoc -o ./public
