FROM codeforafrica/hurumap-base:0.1.0
ENV DEBIAN_FRONTEND noninteractive

MAINTAINER Code for Africa

# Set env variables used in this Dockerfile
# Local directory with project source
ENV ZW_SRC=.
# Directory in container for all project files
ENV ZW_SRVHOME=/src
# Directory in container for project source files
ENV ZW_SRVPROJ=/src/our_land

# Create application subdirectories
WORKDIR $ZW_SRVHOME
RUN mkdir media static logs
VOLUME ["$ZW_SRVHOME/media/", "$ZW_SRVHOME/logs/"]

# Install Python dependencies
COPY ./requirements.txt /
RUN pip install -q -U pip setuptools
RUN pip install -q -r /requirements.txt

# GDAL pains
RUN pip install -q GDAL==2.1.3 --global-option=build_ext --global-option="-I/usr/include/gdal"
RUN pip install -q "Shapely>=1.5.13"

# Add application source code to SRCDIR
ADD $ZW_SRC $ZW_SRVPROJ

# Server
EXPOSE 8000


# Copy entrypoint script into the image
WORKDIR $OUR_LAND_SRVPROJ
COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]