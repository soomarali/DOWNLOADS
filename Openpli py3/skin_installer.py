# -*- coding: utf-8 -*-
# code BY: ASGHAR ALI
# python -c "$(https://raw.githubusercontent.com/soomarali/DOWNLOADS/main/Openpli%20py3/skin_installer.py -qO -)"
import subprocess

# List of file URLs to download
urls = [
    "https://example.com/file1.tar.gz",
    "https://example.com/file2.tar.gz",
    "https://example.com/file3.tar.gz",
    # Add more URLs for the remaining files
]

# Destination directory to save the downloaded files
destination = "/tmp/skins/"

# Create the destination directory if it doesn't exist
subprocess.run(["mkdir", "-p", destination])

# Iterate over the URLs and download each file
for url in urls:
    filename = url.split("/")[-1]
    subprocess.run(["wget", "-P", destination, url])

    # Extract the downloaded file
    subprocess.run(["tar", "-xzvf", f"{destination}/{filename}", "-C", destination])

    # Remove the downloaded tar.gz file
    subprocess.run(["rm", f"{destination}/{filename}"])

# Display colorful message
message = "\033[1;34mDEVELOPED BY: ASGHAR ALI SOOMRO\nDEVELOPED FOR: DREAMWORLD\nSUPPORT: 03357300604\033[0m"
print(message)
