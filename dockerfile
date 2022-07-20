FROM node:16
RUN apt install git -y
RUN git clone https://github.com/hyperledger/caliper-benchmarks.git
WORKDIR caliper-benchmarks
