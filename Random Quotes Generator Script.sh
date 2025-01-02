#!/bin/bash

# Ensure dependencies are installed
if ! command -v jq &>/dev/null || ! command -v curl &>/dev/null || ! command -v wget &>/dev/null; then
    echo "Please ensure 'jq', 'curl', and 'wget' are installed on your system."
    exit 1
fi

# Fetch a random quote from an API (e.g., ZenQuotes API)
quote_response=$(curl -s "https://zenquotes.io/api/random")
quote_text=$(echo "$quote_response" | jq -r '.[0].q')
quote_author=$(echo "$quote_response" | jq -r '.[0].a')

# Display the quote
echo "Quote of the Day:"
echo "\"$quote_text\" - $quote_author"

# Use the quote author or a keyword to find an image
keyword=$(echo "$quote_author" | sed 's/ /%20/g')
image_url="https://source.unsplash.com/800x600/?$keyword"

# Download the image
image_file="quote_image.jpg"
wget -q -O "$image_file" "$image_url"

# Display the image if a terminal image viewer is installed
if command -v feh &>/dev/null; then
    feh "$image_file"
else
    echo "Image saved as $image_file. Use an image viewer to view it."
fi
