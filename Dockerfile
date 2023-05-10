FROM python:3-alpine

COPY run-clang-format.py /run-clang-format.py
COPY entrypoint.sh /entrypoint.sh
COPY clang-format/ /clang-format/

RUN pip install -r requirements.txt

ENTRYPOINT ["/entrypoint.sh"]