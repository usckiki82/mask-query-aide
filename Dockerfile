FROM ubuntu
#FROM python:3.7.9
RUN apt-get update && apt-get -y update

# Method getting python version from hosted repository
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get install python3.7

#  Method building from source code
#RUN cd /usr/src
#RUN apt-get install -y wget
#RUN apt-get install -y libssl-dev openssl
#RUN wget https://www.python.org/ftp/python/3.7.9/Python-3.7.9.tgz
#RUN tar xzf Python-3.7.9.tgz
#RUN cd Python-3.7.9
#RUN ./configure --enable-optimizations
#RUN make
#RUN make install

#RUN apt-get install -y build-essential python3.7 python3-pip python3-dev
#RUN pip3 -q install pip --upgrade
#RUN  ln -sf /usr/bin/python3 /usr/local/bin/python
#RUN pip install virtualenv --user
# RUN apt-get install -y python3-venv

#RUN apt-get install -y cowsay

WORKDIR /usr/src/app2

# Set up and activate virtual environment
#ENV VIRTUAL_ENV "/venv"
#RUN python -m venv $VIRTUAL_ENV
#ENV PATH "$VIRTUAL_ENV/bin:$PATH"

# Python commands run inside the virtual environment
COPY . /usr/src/app2
# RUN pip install .
# RUN pip install /usr/src/app/
# RUN python -m pip install parse realpython-reader

#COPY ./mask_query_aide/headlines.py .
#CMD ["python", "headlines.py"]
#CMD ["/usr/games/cowsay", "Do you have a query whether people in images are wearing masks?  If so, you are in the right place."]

#WORKDIR /src/notebooks

# Add Tini. Tini operates as a process subreaper for jupyter. This prevents kernel crashes.
#ENV TINI_VERSION v0.6.0
#ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
#RUN chmod +x /usr/bin/tini
#ENTRYPOINT ["/usr/bin/tini", "--"]

# CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]