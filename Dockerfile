FROM debian:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Install rclone
RUN curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip \
    && unzip rclone-current-linux-amd64.zip \
    && cd rclone-*-linux-amd64 \
    && cp rclone /usr/bin/ \
    && chmod +x /usr/bin/rclone \
    && cd .. \
    && rm -rf rclone-*-linux-amd64 rclone-current-linux-amd64.zip

# Create rclone config directory
RUN mkdir -p /root/.config/rclone

# Add rclone configuration
COPY rclone.conf /root/.config/rclone/rclone.conf

# Copy the script
COPY copy.sh /root/copy.sh

#Make it executable
RUN chmod +x /root/copy.sh

# Verify installation
RUN rclone version

CMD ["/root/copy.sh"]
