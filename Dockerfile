FROM ubuntu:22.04

# Prerequisites install pandrom
RUN apt-get update && apt-get install -y \
    fortune-mod \
    cowsay \
    netcat-openbsd \
    && rm -rf /var/lib/apt/lists/*

# Cowsay and fortune path add pandrom
ENV PATH="${PATH}:/usr/games"

WORKDIR /app

# Wisecow script copy pandrom
COPY wisecow.sh .

# Fix Windows CRLF line endings & give execute permission
RUN sed -i 's/\r$//' wisecow.sh && chmod +x wisecow.sh

EXPOSE 4499

CMD ["./wisecow.sh"]