# pull node from dockerhub
FROM node:18

# Set node environement inside a docker container
ENV NODE_ENV=development

# create a working directory
ARG WORKINGDIR=/home/contact-manager/

WORKDIR $WORKINGDIR

# Copy package.json and package-lock.json file into working directory
COPY ./package*.json $WORKINGDIR

# Install the packages from package.json file
RUN npm install

# Copy everything in the current directory to the container working directory
COPY . $WORKINGDIR

# Expose port 3000 of the container
EXPOSE 3000

# Start the npm development server inside a container.
CMD ["npm", "start"]