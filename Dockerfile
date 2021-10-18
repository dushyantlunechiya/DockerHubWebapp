FROM scratch
ADD  ubuntu-base-20.04.1-base-arm64.tar.gz /
WORKDIR /Users/dushyantlunechiya/Downloads/DushyantBmiCalculator
COPY package.json /Users/dushyantlunechiya/Downloads/DushyantBmiCalculator/
RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
RUN npm install express
COPY . /Users/dushyantlunechiya/Downloads/DushyantBmiCalculator/
EXPOSE 3000
CMD ["node","calculator.js"]