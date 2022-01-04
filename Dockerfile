FROM ubuntu:18.04

# Create app directory
WORKDIR /stream
 
# Bundle app source
COPY . . 

# Update aptitude with new repo
RUN apt-get update

# Install software 
RUN apt-get -y install sudo
RUN sudo apt-get install -y nano git wget build-essential libpcre3 libpcre3-dev libssl-dev zlib1g zlib1g-dev

# Clone nginx-rtmp-module
RUN git clone https://github.com/sergey-dryabzhinsky/nginx-rtmp-module.git

# Get nginx
RUN wget https://nginx.org/download/nginx-1.18.0.tar.gz
RUN tar -xf nginx-1.18.0.tar.gz
RUN rm nginx-1.18.0.tar.gz

# Redirect to nginx-1.18.0 directory
WORKDIR /stream/nginx-1.18.0

# configure/make nginx
RUN ./configure --with-http_ssl_module --add-module=../nginx-rtmp-module
RUN make
RUN sudo make install

# Redirect to home directory
WORKDIR /

# Replace nginx.conf
RUN rm usr/local/nginx/conf/nginx.conf
RUN mv stream/nginx.conf usr/local/nginx/conf/nginx.conf

# Make nginx/hls directory
RUN mkdir /nginx
RUN mkdir /nginx/hls

# Chown nginx directory
RUN chown -R www-data:www-data /nginx

EXPOSE 1935 5432