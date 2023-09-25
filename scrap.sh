#!/bin/bash

# This is a sample of how to use this

bun ./swiper | fzf -m |
tee --append .search-history |
sed -E 's/.*(https)/\1/' |
go run ./distributor/main.go |
xargs -r vivaldi-stable --incognito --app
