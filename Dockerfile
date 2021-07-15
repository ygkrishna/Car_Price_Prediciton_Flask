#FROM python:3.7
#WORKDIR /app
#ADD . /app
#RUN pip install -r requirements.txt
#EXPOSE 8080
#CMD ["python", "main.py"]

FROM python:3.7

MAINTAINER Gopikrishna Yadam

#navigate to working directory
WORKDIR /app

#add all files to working directory
ADD . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose port 
EXPOSE 5000

# Run the application:
CMD ["python", "main.py"]
