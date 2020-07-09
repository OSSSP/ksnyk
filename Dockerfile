FROM python:alpine

RUN pip3 --no-cache-dir install pysnyk click kubernetes 

COPY . /app

ENTRYPOINT ["python3", "/app/ksnyk.py"]
CMD ["--help"]
