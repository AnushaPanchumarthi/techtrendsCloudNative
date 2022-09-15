FROM python:3.8
LABEL maintainer="Anusha Panchumarthi"

TechTrends - Package with Docker
dckr_pat_aH4TzDbSB_FzlDjyFBB5kv0pkV0

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt

# command to run db start
RUN python init_db.py

EXPOSE 3111 
# command to run on container start
CMD [ "python", "app.py" ]