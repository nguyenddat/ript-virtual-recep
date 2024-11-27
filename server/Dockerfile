FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN apt-get update && apt-get -y dist-upgrade && \
    apt-get install -y gcc g++ python3-dev musl-dev libffi-dev netcat-traditional && \
    apt-get install -y ffmpeg libsm6 libxext6 zbar-tools libzbar-dev && \
    rm -rf /var/lib/apt/lists/*

RUN pip install poetry

RUN mkdir /server
WORKDIR /server

COPY ./prestart.sh /server/
COPY . /server/

RUN poetry install --no-dev --no-root

RUN ["chmod", "+x", "/server/prestart.sh"]

EXPOSE 9991

ENTRYPOINT ["/server/prestart.sh"]
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

