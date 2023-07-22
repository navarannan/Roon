#!/bin/bash

#find -type f -iname "*yesudas*" | xargs -I{} cp {} ../Playlists/Yesudas

#find -type f -iname "*yesudas*" | xargs -I{} -0 cp -t ./Playlists/Yesudas {}


find -type f -iname "*yesudas*" -exec cp -t ../Playlists/Yesudas {} +