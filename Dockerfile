FROM debian:bullseye-slim

# Install dependencies
RUN apt-get update && \
    apt-get install -y pandoc texlive-xetex texlive-fonts-recommended texlive-latex-extra make && \
    apt-get clean

WORKDIR /data

ENTRYPOINT []
CMD ["make"]
