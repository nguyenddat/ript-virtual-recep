FROM python:3.12.6

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install -y \ 
curl 
RUN apt-get install -y gcc g++ python3-dev musl-dev  libffi-dev netcat-traditional
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 zbar-tools libzbar-dev -y

RUN mkdir /server
WORKDIR /server
COPY . /server/
RUN pip install -r requirements.txt
RUN pip install uvicorn[standard]
EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]


# RUN apt-get update && apt-get -y dist-upgrade
# RUN apt-get update && apt-get install -y python3-dev
# COPY ./prestart.sh /server/
# RUN pip install -r /server/requirements.txt
# RUN ["chmod", "+x", "/server/prestart.sh"]
# ENTRYPOINT ["/server/prestart.sh"]
