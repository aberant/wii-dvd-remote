max v2;
#N vpatcher 424 40 805 528;
#P origin 0 -149;
#P window setfont "Sans Serif" 9.;
#P newex 250 267 68 9109513 osc-route /mjd;
#P newex 242 233 81 9109513 osc-route /getmjd;
#P newex 98 206 27 9109513 t b f;
#P newex 139 207 27 9109513 t b f;
#P button 117 37 15 0;
#P newex 101 123 52 9109513 unpack i i i;
#P message 112 65 26 9109513 date;
#P newex 107 93 40 9109513 date;
#P user incdec 64 157 15 15 0 0;
#P user incdec 110 157 15 15 0 0;
#P user incdec 156 157 15 15 0 0;
#P button 279 333 15 0;
#P newex 121 345 27 9109513 t b s;
#P number 268 302 35 9 0 0 0 139 0 0 0 221 221 221 222 222 222 0 0 0;
#P newex 242 197 80 9109513 opensoundcontrol;
#P newex 246 163 71 9109513 udp-read 10000;
#P newex 75 417 124 9109513 udp-write 192.168.1.2 10000;
#P message 86 314 98 9109513 /getmjd/civil \$1 \$2 \$3;
#P button 49 245 15 0;
#P number 161 183 35 9 1 31 3 139 0 0 0 221 221 221 222 222 222 0 0 0;
#P number 115 183 35 9 1 12 3 139 0 0 0 221 221 221 222 222 222 0 0 0;
#P number 69 183 35 9 1950 2050 3 139 0 0 0 221 221 221 222 222 222 0 0 0;
#P newex 106 282 48 9109513 pack f f f;
#P newex 97 380 80 9109513 opensoundcontrol;
#P comment 32 183 100 9109513 civil;
#P comment 234 302 100 9109513 mjd;
#P comment 78 37 100 9109513 today;
#P connect 24 0 8 0;
#P connect 23 0 8 0;
#P connect 18 0 5 0;
#P connect 21 2 5 0;
#P connect 3 0 10 0;
#P connect 4 0 9 0;
#P connect 14 1 3 0;
#P connect 14 0 3 0;
#P connect 6 0 24 0;
#P connect 19 0 21 0;
#P connect 5 0 4 0;
#P connect 8 0 4 0;
#P connect 20 0 19 0;
#P connect 22 0 20 0;
#P connect 17 0 6 0;
#P connect 21 0 6 0;
#P connect 9 0 14 0;
#P connect 24 1 4 1;
#P connect 7 0 23 0;
#P connect 23 1 4 2;
#P connect 16 0 7 0;
#P connect 21 1 7 0;
#P connect 11 0 12 0;
#P connect 12 1 25 0;
#P connect 25 0 26 0;
#P connect 26 0 13 0;
#P connect 13 0 15 0;
#P pop;
