FROM octohost/ubuntu:13.10

RUN apt-get update && apt-get install -y wget python3.3 git

# Install PIP
RUN ln -s /usr/bin/python3.3 /usr/bin/python
RUN wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py && python get-pip.py

RUN apt-get clean