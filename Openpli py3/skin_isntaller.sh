#!/bin/bash

# List of file URLs to download
urls=(
    "https://raw.githubusercontent.com/soomarali/DOWNLOADS/main/Openpli%20py3/CinoDream_AShawky.tar.gz"
    "https://raw.githubusercontent.com/soomarali/DOWNLOADS/main/Openpli%20py3/dmm_Ashawky.tar.gz"
    "https://raw.githubusercontent.com/soomarali/DOWNLOADS/main/Openpli%20py3/EkselanceXE_Ashawky.tar.gz"
    "https://raw.githubusercontent.com/soomarali/DOWNLOADS/main/Openpli%20py3/ExtremeFHD.tar.gz"
    "https://raw.githubusercontent.com/soomarali/DOWNLOADS/main/Openpli%20py3/HDLine-Super_AShawky.tar.gz"
    "https://raw.githubusercontent.com/soomarali/DOWNLOADS/main/Openpli%20py3/Karonte_AShawky.tar.gz"
    "https://raw.githubusercontent.com/soomarali/DOWNLOADS/main/Openpli%20py3/MetriXconfluenc_Ashawky.tar.gz"
    "https://raw.githubusercontent.com/soomarali/DOWNLOADS/main/Openpli%20py3/MX_Graphite_AShawky.tar.gz"
    "https://raw.githubusercontent.com/soomarali/DOWNLOADS/main/Openpli%20py3/NAGA_CLBS-FHD.tar.gz"
    "https://raw.githubusercontent.com/soomarali/DOWNLOADS/main/Openpli%20py3/OctagonBlackFHD.tar.gz"
    "https://raw.githubusercontent.com/soomarali/DOWNLOADS/main/Openpli%20py3/OctagonFHD.tar.gz"
    "https://raw.githubusercontent.com/soomarali/DOWNLOADS/main/Openpli%20py3/oZeta-FHD.tar.gz"
    "https://raw.githubusercontent.com/soomarali/DOWNLOADS/main/Openpli%20py3/PLi-FullNightHD-Ashawky.tar.gz"
    
    # Add more URLs for the remaining files
)

# Destination directory to save the downloaded files
destination="/tmp/skins"

# Create the destination directory if it doesn't exist
mkdir -p "$skins"

# Iterate over the URLs and download each file
for url in "${urls[@]}"; do
    filename=$(basename "$url")
    wget -P "$destination" "$url"

    # Extract the downloaded file
    tar -xzvf "$destination/$filename" -C "$destination"

    # Remove the downloaded tar.gz file
    rm "$destination/$filename"
done
