FROM python:3.8.3-alpine

WORKDIR usr/src/app

RUN apk update

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY app.py .

EXPOSE 5000

ENTRYPOINT ["python"]

CMD ["app.py"]
