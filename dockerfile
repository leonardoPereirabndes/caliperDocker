FROM node:16
RUN apt install git -y
RUN git clone https://github.com/hyperledger/caliper-benchmarks.git
WORKDIR caliper-benchmarks
RUN npm install --only=prod @hyperledger/caliper-cli@0.5.0
RUN npx caliper bind --caliper-bind-sut besu:1.4
