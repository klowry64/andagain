FROM python:3.10.13

COPY . .
RUN pip install --upgrade pip && pip install -e ./kfserving
RUN git clone https://github.com/SeldonIO/alibi.git && \
    cd alibi && \
    pip install .
RUN pip install -e ./alibiexplainer
ENTRYPOINT ["python", "-m", "alibiexplainer"]
