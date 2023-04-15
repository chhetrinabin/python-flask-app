FROM python:3.10-slim-buster
WORKDIR /src
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt --no-cache-dir
COPY app.py ./app.py
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]
