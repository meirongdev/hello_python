FROM python:3.12.5-alpine 
ENV PORT=8080
EXPOSE 8080
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENTRYPOINT ["python"]
CMD ["app.py"]

## Multi-stage build

# First stage: build
# FROM python:3.9  AS builder
# COPY . /app
# WORKDIR /app

# RUN pip install --upgrade pip && \
#     pip install -r requirements.txt && \
#     rm -rf ~/.cache/pip


# # Second stage: runtime
# FROM python:3.11-slim-buster
# COPY --from=builder /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.11/site-packages
# COPY --from=builder /app /app

# WORKDIR /app
# ENV PORT=8080
# EXPOSE 8080

# CMD ["python", "app.py"]