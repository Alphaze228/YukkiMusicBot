# Gunakan image Python 3.9 sebagai base
FROM python:3.9

# Set direktori kerja di dalam container
WORKDIR /app

# Install dependensi sistem yang diperlukan
RUN apt-get update && apt-get install -y \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# Salin semua file proyek ke dalam container
COPY . .

# Install semua dependensi Python
RUN pip install --no-cache-dir -U -r requirements.txt

# Jalankan bot saat container dimulai
CMD ["python3", "YukkiMusicBot/__main__.py"]
