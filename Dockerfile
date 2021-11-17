FROM python:3.9

COPY ./ ./

RUN python3.9 -m pip install -r requirements.txt -t .

# Command can be overwritten by providing a different command in the template directly.
CMD ["python3.9", "test.py"]