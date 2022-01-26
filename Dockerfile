FROM python:3.9

COPY ./requirements.txt ./
RUN python3.9 -m pip install -r requirements.txt -t .

COPY ./packages/tc-core ./packages/tc-core
RUN python3.9 -m pip install ./packages/tc-core/

COPY ./ ./

# Command can be overwritten by providing a different command in the template directly.
CMD ["python3.9", "test.py"]