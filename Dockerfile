FROM python:3.10.6 as base

WORKDIR /vroxy

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .
CMD ["python", "-u", "vroxy.py"]
