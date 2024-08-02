FROM python:3-alpine
ADD date.py /
CMD ["python3","./date.py"]
