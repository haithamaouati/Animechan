#!/bin/bash

# Author: Haitham Aouati
# GitHub: https://github.com/haithamaouati

clear

# Get random quote from API
QUOTE=$(curl -s https://animechan.vercel.app/api/random)

# Extract anime, character and quote from response
anime=$(echo $QUOTE | jq -r '.anime')
character=$(echo $QUOTE | jq -r '.character')
quote=$(echo $QUOTE | jq -r '.quote')

figlet -f standard Animechan

# Print the quote with anime and character name
echo "Anime: $anime"
echo "Character: $character"
echo "Quote: $quote"
