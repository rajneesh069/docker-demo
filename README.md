# Docker Demo
This repo demonstrates the creation of DockerFile and how to containerize a simple node.js app.

## RUN vs CMD

### RUN
- To bootstrap the image, the commands we need to run are run by the RUN command.
- Syntax : RUN npm install

### CMD
- In order to actually start the containerized application, we use CMD command.
- Syntax : CMD["node", "dist/index.js"]