# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy requirement.txt into the container
COPY requirement.txt /app

# Install dependencies
RUN pip install -r requirement.txt

# Copy the current directory contents into the container at /app
COPY . /app

# Run demo_doc.py when the container launches
CMD ["python", "demo_doc_ex.py"]

#bash
#docker build -t python-app .
#docker run python-app

#docker tag python-app:latest hnlohith/demo-docker-image:latest
#docker push hnlohith/demo-docker-image:latest
#docker pull hnlohith/demo-docker-image:latest
#docker run hnlohith/demo-docker-image:latest

#change name 
#docker tag demo-doc:latest python-app:latest

#to remove old imag
#docker build -t python-app .
#docker run python-app
