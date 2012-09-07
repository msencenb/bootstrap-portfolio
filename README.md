# Express.js app used to power Sencedev.com
This repository is a tragically overengineered node.js website used to power my personal portfolio. Along the way I got to enjoy several new technologies and learned a few things. If you want to setup a portfolio of your own based on this project here are the steps:

## Development Environment
I like to isolate my environment dependencies as much as possible on my development machine so for developing this project I used python's virtualenv in conjunction with nodeenv to keep things clean an disolated

## Installing dependencies
Once you are running virtualenv and nodeenv simply run 'npm install' in the root directory to install dependencies. I also like to use nodemon (a tool that auto restarts node.js servers when it detects changes)

In addition if you want to have a functioning contact form please input your Mandrill (by Mailchimp) API key in the form.coffee file

## Build scripts
Included in the file is a Makefile used to perform various objectives.

### Compiling Coffeescript
Simply running 'make' or 'make build' in the root directory will compile all coffeescript from the src folder and move it into the src folder

### Watch
If you want to get fancy you can run 'make watch' which will continually monitor the src folder for changes and automatically compile and move them to the lib folder

### Testing
To run the mocha tests run 'make test'. You can change the reporter option in the Makefile itself if you prefer another output format. Please note that I only wrote unit tests for the models in this project and skipped on unit tests for routing since there are only a handful. 