# The latest wirmware version from me - 2.9. Project is closed.
## Sourscode is available.
### Added the ability to turn off the display backlight by timer and indication of the power delivered to the antenna and the transmitter efficiency.
This sells was added:  (for mini board, see the manual)
30 – sell for setting the time of glow dysplay or its backlite, in seconds .
The backlite is glowing whilw press any buttons and if RF power comes to input.П
By default it is disabled, value 00.

31 — cell for setting of an addidional indication mode, 
value 00 — for indicating L and C only. 
value 01 — for indicating the power delivered to the antenna and efficiency of fider and transmitter пwhen input power is enough for correct SWR meassuring.
By default is enable, value 01.
Warning!!! The device does not take into account  its own efficiency.

32 — cell for setting a feeder power loss ratio, the first number — integer part of decibell, second number — ten’s parts of decibell. Velue by default — 1.2 (12 writen in the cell). this value uses for counting the power delivered to antenna. The loss value can be found in the reference data for the used cable or you can measure the exact value yourself.
If it is not necessary to take into account feeder losses, the value 00 should be written into the cell, then the calculations will correspond only to the mismatch losses.



# N7DDC ATU-100 mini board

## The easy DIY 5x5 elements 100 Watt automatic antenna tuner 

![screenshot](http://www.sdr-deluxe.com/downloads/ATU-100_mini/mini_1.jpg)

![screenshot](http://www.sdr-deluxe.com/downloads/ATU-100_mini/mini_2.jpg)

# N7DDC ATU-100 extended board
---
## The flexible tunable firmware for ATU from 5x5 to 7x7 elements, up to 1500 Watt measured power

### The autor's 7x7 elements 100 Watt version

![screenshot](http://www.sdr-deluxe.com/downloads/ATU-100_mini/ext_1.jpg)

![screenshot](http://www.sdr-deluxe.com/downloads/ATU-100_mini/ext_2.jpg)

# 3D printed housing for 0.91" OLED display, 3 buttons and TNC RF connectors

![screenshot](http://www.sdr-deluxe.com/downloads/ATU-100_mini/case_1.jpg)

![screenshot](http://www.sdr-deluxe.com/downloads/ATU-100_mini/case_2.jpg)

![screenshot](http://www.sdr-deluxe.com/downloads/ATU-100_mini/case_3.jpg)

## AS example 1000 Watt ATU designed by EU2AV (VIDEO)

[![ALT-ТЕКСТ ИЗОБРАЖЕНИЯ](https://img.youtube.com/vi/sg7_t37SJJg/hqdefault.jpg)](https://www.youtube.com/watch?v=sg7_t37SJJg)

## ATU-100 7x7 demo with M0NKA transceiver in Auto mode, LZ2GX (VIDEO)

[![ALT-ТЕКСТ ИЗОБРАЖЕНИЯ](https://i.ytimg.com/vi/YCMcanrXEcg/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLDr-2GBRi98De-Rub75mheciUqw6g)](https://www.youtube.com/watch?v=YCMcanrXEcg&t)

## ATU-100 5x5 Auto mode with FTdx-1200 (VIDEO)

[![ALT-ТЕКСТ ИЗОБРАЖЕНИЯ](https://i.ytimg.com/vi/O6UJ5CSuX3I/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLC7vJC2mMtkhjwbAYqz1A_gWNuLtA)](https://www.youtube.com/watch?v=O6UJ5CSuX3I)

## The first video from N7DDC, 5x5 elements, ENGLISH subtitles (VIDEO)

[![ALT-ТЕКСТ ИЗОБРАЖЕНИЯ](https://i.ytimg.com/vi/zBjliED9-OE/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLCmnk9ChmyDpkg_l3T91twONpX8vw)](https://www.youtube.com/watch?v=zBjliED9-OE&t)
