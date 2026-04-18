FROM python:3.12

WORKDIR /usr/src

ARG REQ_TXT
COPY ${REQ_TXT} .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r ${REQ_TXT} && \
    pip cache purge 

CMD ["/bin/bash"]
