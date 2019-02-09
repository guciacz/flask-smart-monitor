# FROM python:3.7-alpine

# COPY . /toviewit
# WORKDIR /toviewit

# RUN apk add --no-cache curl python3 pkgconfig python3-dev openssl-dev libffi-dev musl-dev make gcc
# RUN python -m venv venv
# RUN source venv/bin/activate
# RUN pip install --upgrade setuptools
# RUN pip install gunicorn pymysql
# RUN pip install -r requirements.txt

# ENV FLASK_APP = run.py

# RUN flask db upgrade



# EXPOSE 5000

# CMD ["gunicorn", "-w 4", "-b :5000","run:app"]

FROM python:3.6-alpine

RUN adduser -D toviewit

WORKDIR /home/toviewit

RUN apk add --no-cache curl python3 pkgconfig python3-dev openssl-dev libffi-dev musl-dev make gcc

COPY requirements.txt requirements.txt
RUN python -m venv venv
RUN venv/bin/pip install -r requirements.txt
RUN venv/bin/pip install gunicorn pymysql

COPY app app
COPY migrations migrations
COPY run.py config.py boot.sh ./
RUN chmod a+x boot.sh

ENV FLASK_APP run.py

RUN chown -R toviewit:toviewit ./
USER toviewit

EXPOSE 5000
ENTRYPOINT ["./boot.sh"]