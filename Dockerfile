FROM jenkins/jenkins
USER root
RUN apt-get install -y curl \
  && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
  && apt-get install -y nodejs \
  && curl -L https://www.npmjs.com/install.sh | sh
RUN npm install  pm2 -g
RUN echo "Node: " && node -v
RUN echo "NPM: " && npm -v
