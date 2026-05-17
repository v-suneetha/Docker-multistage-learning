# ---------- Build Stage ----------
FROM python:3.11-slim AS build

WORKDIR /app

COPY requirements.txt .

# Install dependencies into custom directory
RUN pip install --no-cache-dir --target=/python-packages -r requirements.txt

COPY . .


# ---------- Runtime Stage ----------
FROM gcr.io/distroless/python3-debian12

WORKDIR /app

# Copy Python packages
COPY --from=build /python-packages /python-packages

# Copy app
COPY --from=build /app /app

# Add packages to Python path
ENV PYTHONPATH="/python-packages"

EXPOSE 5000

CMD ["app.py"]
