#!/bin/bash

layout=$(setxkbmap -query | awk '/layout/{print $2}')  # Получаем текущий язык клавиатуры

if [ $layout == "us" ]; then
    setxkbmap ru  # Если текущий язык - английский, меняем на русский
else
    setxkbmap us  # Если текущий язык - русский, меняем на английский
fi
