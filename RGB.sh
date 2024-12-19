#!/bin/bash
# Just for fun! 


#Run this script for a full gradient check
#If your terminal supports true color, you will see a smooth gradient of colors.
awk 'BEGIN{
    s="/\\/\\/\\/\\/\\"; s=s s s s s s s s;
    for (colnum = 0; colnum<77; colnum++) {
        r = 255-(colnum*255/76);
        g = (colnum*510/76);
        b = (colnum*255/76);
        if (g>255) g = 510-g;
        printf "\033[48;2;%d;%d;%dm\033[38;2;%d;%d;%dm%2s\033[0m", r,g,b, r,g,b, substr(s,colnum%8+1,1);
    }
    printf "\n";
}'

#Copy and paste this into your terminal
echo -e "\e[38;2;255;0;0mTRUECOLOR\e[0m \e[38;2;0;255;0mTEST\e[0m \e[38;2;0;0;255mSCRIPT\e[0m"
#If your terminal supports true color, you'll see "TRUECOLOR TEST SCRIPT" displayed in red, green, and blue.
#Copy and paste this into your terminal
echo -e "\e[31m  ██████╗  ██╗██╗███╗   ██╗     ██╗██╗██╗ \e[0m"
echo -e "\e[33m ██╔════╝  ██║██║████╗  ██║    ██║██║██║ \e[0m"
echo -e "\e[32m ██║  ███╗ ██║██║██╔██╗ ██║    ██║██║██║ \e[0m"
echo -e "\e[36m ██║   ██║ ██║██║██║╚██╗██║    ██║██║██║ \e[0m"
echo -e "\e[34m ╚██████╔╝ ██║██║██║ ╚████║    ██║██║██║ \e[0m"
echo -e "\e[35m  ╚═════╝  ╚═╝╚═╝╚═╝  ╚═══╝    ╚═╝╚═╝╚═╝ \e[0m"

