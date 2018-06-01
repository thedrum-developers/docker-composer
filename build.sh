#!/usr/bin/env bash

# Set the directory of this script
BUILD_BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# List of PHP Versions
declare -a IMAGES=(
    "5.3-apache"
    "5.5-apache"
    "5.6-fpm"
    "7.0-fpm"
    "7.1-fpm"
    "7.2-fpm"
)


echo $IMAGES;

for phpImage in "${IMAGES[@]}"; do

#     # Strip the image type out of the version (-fpm / -apache)
    phpVersion=$(echo $phpImage| cut -d'-' -f 1)

    echo "Building Dockerfiles for PHP $phpVersion...";

    # Create directories if needed
    if [ ! -d "$BUILD_BASE_DIR/$phpVersion" ]; then
        mkdir -p "$BUILD_BASE_DIR/$phpVersion";
    fi

    # Build regular image
    cat "$BUILD_BASE_DIR/Dockerfile.template" > "$BUILD_BASE_DIR/$phpVersion/Dockerfile"

    sed -ri \
        -e 's!%%PHP_IMAGE%%!'"${phpImage}"'!' \
        "$BUILD_BASE_DIR/$phpVersion/Dockerfile"

done
