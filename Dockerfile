FROM python:3-alpine

# Make sure to install git
RUN apk add git

COPY run-clang-format.py /run-clang-format.py
COPY entrypoint.sh /entrypoint.sh
COPY clang-format/ /clang-format/
COPY requirements.txt /requirements.txt

RUN pip install -r requirements.txt

ENTRYPOINT ["/entrypoint.sh"]