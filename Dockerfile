#FROM ubuntu

#RUN apt update && apt install -y cowsay
#CMD ["/usr/games/cowsay", "Do you have a query whether people in images are wearing masks?  If so, you are in the right place."]

FROM python:3.7.9-slim
WORKDIR /usr/src/app

# Set up and activate virtual environment
ENV VIRTUAL_ENV "/venv"
RUN python -m venv $VIRTUAL_ENV
ENV PATH "$VIRTUAL_ENV/bin:$PATH"

# Python commands run inside the virtual environment
RUN python -m pip install \
        parse \
        realpython-reader

COPY ./mask_query_aide/headlines.py .
CMD ["python", "headlines.py"]