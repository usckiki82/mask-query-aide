FROM ubuntu
#FROM python:3.7.9
RUN apt-get update && apt-get -y update && apt-get install -y build-essential

# CHOOSE WHETHER TO WORK ON VERSION LOCALLY OR IN CONTAINER
WORKDIR /usr/src

# Method getting python version from hosted repository
# RUN apt-get install -y software-properties-common
# RUN add-apt-repository ppa:deadsnakes/ppa
# RUN apt-get install -y python3.7 python3.7-venv python3.7-doc binutils
# RUN apt-get install -y binfmt-support python3-pip python3.7-dev
#RUN ln -sf /usr/bin/python3.7 /usr/local/bin/python
#RUN ln -sf /usr/bin/pip3 /usr/local/bin/pip

# Method building pyhon from source code, but takes much longer
RUN apt-get install -y make wget zlib1g-dev libssl-dev openssl libffi-dev
RUN wget https://www.python.org/ftp/python/3.7.9/Python-3.7.9.tgz
RUN tar xzf Python-3.7.9.tgz
RUN rm -rf Python-3.7.9.tgz
WORKDIR /usr/src/Python-3.7.9
RUN ./configure --enable-optimizations
RUN make
RUN make install

#RUN apt-get install -y cowsay

WORKDIR /usr/src/app
# EXPOSE 8887

# Set up and activate virtual environment
#ENV VIRTUAL_ENV "/venv"
#RUN python -m venv $VIRTUAL_ENV
#ENV PATH "$VIRTUAL_ENV/bin:$PATH"

# Python commands run inside the virtual environment
COPY . /usr/src/app_copy
RUN /usr/local/bin/python3.7 -m pip install --upgrade pip setuptools wheel
RUN pip3 install --upgrade setuptools pip
#RUN cd /usr/src/app_copy && pip3.7 install .

#COPY ./mask_query_aide/headlines.py .
#CMD ["python", "headlines.py"]
#CMD ["/usr/games/cowsay", "Do you have a query whether people in images are wearing masks?  If so, you are in the right place."]

# Add Tini. Tini operates as a process subreaper for jupyter. This prevents kernel crashes.
#ENV TINI_VERSION v0.6.0
#ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
#RUN chmod +x /usr/bin/tini
#ENTRYPOINT ["/usr/bin/tini", "--"]

# Run the Jupyter Notebook
# $ jupyter notebook --port=8887 --no-browser --ip=0.0.0.0 --allow-root
#CMD ["jupyter", "notebook", "--port=8887", "--no-browser", "--ip=0.0.0.0", "--allow-root"]