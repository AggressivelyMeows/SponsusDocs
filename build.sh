#!/bin/bash

npm install @openapitools/openapi-generator-cli -g
openapi-generator version

openapi-generator generate -i ./reference/oa3-sponsus.yml --skip-validate-spec -g http -o ./public
