FROM python:3.8
LABEL maintainer="Anusha Panchumarthi"

WORKDIR /app

COPY ./techtrends/requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY ./techtrends ./

# command to run the db start
RUN python init_db.py

EXPOSE 3111

ENV DEBUG=true

# command to run on container start
CMD [ "python", "app.py" ]