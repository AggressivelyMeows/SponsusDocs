#!/bin/bash

# First we need to install all the requirements
npm install -g widdershins
gem install bundler

# widdershins allows us to convert OA3 to Markdown for use in Slate
# but we dont need it for now so we wait until slate is installed
git clone https://github.com/cerutech/sponsus-docs.git slate
# The slate install will be located at ./slate
# Ok cool, now that its all installed now we gotta generate our Markdown.
# To inject our Markdown however, we need to overwrite the old Markdown file with our new one.
widdershins --search false --language_tabs 'ruby:Ruby' 'python:Python' --summary reference/oa3-sponsus.yml -o ./slate/source/index.html.md

cd ./slate
bundle install
bundle exec middleman build --clean
