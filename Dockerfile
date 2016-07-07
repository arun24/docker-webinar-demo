FROM node:argon

ENV TERM xterm

# Install my favorite node modules for development globally
RUN npm install -g nodemon eslint mocha

# make a folder for our code
RUN mkdir code

# this runs forever as a daemon so my container will stay up until I tell it to stop
CMD /bin/sh -c "while true; do echo hello world; sleep 1; done"