#!/bin/zsh

cd /home/lptlv/Pictures/Screenshots &&
    grim lock.png &&
    ffmpeg -i lock.png -vf "boxblur=18" -c:a copy lock1.png &&
    swaylock -e -f                                                                                                                                                                                                   --key-hl-color d699b6                                                                                                                                                                                            --ring-color 272e33                                                                                                                                                                                              --line-color 00000000                                                                                                                                                                                            --line-wrong-color 00000000                                                                                                                                                                                      --inside-color 00000000                                                                                                                                                                                          --inside-wrong-color 00000000                                                                                                                                                                                    --ring-wrong-color e67e80                                                                                                                                                                                        --text-color d699b6                                                                                                                                                                                              --text-wrong-color e67e80                                                                                                                                                                                        --line-ver-color 272e33                                                                                                                                                                                          --text-ver-color d699b6                                                                                                                                                                                          --ring-ver-color 272e33                                                                                                                                                                                          --inside-ver-color 00000000                                                                                                                                                                                      --ring-clear-color dbbc7f                                                                                                                                                                                        --text-clear-color dbbc7f                                                                                                                                                                                        --inside-clear-color 00000000                                                                                                                                                                                    --line-clear-color 00000000                                                                                                                                                                                      --bs-hl-color e67e80                                                                                                                                                                                             -i /home/lptlv/Pictures/Screenshots/lock1.png &&
    rm -rf /home/lptlv/Pictures/Screenshots/lock*
