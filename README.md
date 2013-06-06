# Express.js app used to power Sencedev.com
This repository is a tragically overengineered node.js website used to power my personal portfolio. Along the way I got to enjoy several new technologies and learned a few things. If you want to setup a portfolio of your own based on this project here are the steps:

## Development Environment
To keep things clean I used python's [virtualenv](http://pypi.python.org/pypi/virtualenv "virtualenv") in conjunction with [nodeenv](https://github.com/ekalinin/nodeenv "nodeenv") for this portfolio. Another option I have used more recently is nvm.

## Installing dependencies
    'npm install' 

If you want to have a functioning contact form please input your Mandrill (by Mailchimp) API key in the form.coffee file

## Build scripts
Included in the file is a Makefile used to perform various objectives.

### Compiling Coffeescript
    'make'
Running this command in the root directory will compile all coffeescript from the src folder and move it into the lib folder

### Watch
    'make watch'
If you want to get fancy, this script will continually monitor the src folder for coffeescript file changes and automatically compile and move them to the lib folder

### Compiling Twitter Bootstrap
    'make bootstrap'
While I haven't included the twitter bootstrap src in this project if you want custom styles, clone bootstrap into the /src folder like this:

    'git clone git://github.com/twitter/bootstrap.git'

Once that repo is present in the src file running 'make bootstrap' will compile the LESS and move the appropriate css, js, and img folders into the public folder of lib.


### Testing
    'make test'
This command runs the mocha tests for this project. You can change the reporter option in the Makefile itself if you prefer another output format. Please note that I only wrote unit tests for the models in this project and skipped on unit tests for routing since there are only a handful. 