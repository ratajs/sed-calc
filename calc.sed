#!/bin/sed -Ef

b P

:A
h;s/.*://;x;s/:.*/::/;t a

:a
s/=(.*)(.):(.*):(.*)/=\1:\2:\3\4/;t aa
s/:(.*):(.*)/\1\2/;x;G;s/(.*)\n.*=(.*)/\1\2/;G;s/(.*)\n(.*)%(.*)=.*/\2\1\3/;t P

:aa
x
s/0$//;t a0
s/1$//;t a1
s/2$//;t a2
s/3$//;t a3
s/4$//;t a4
s/5$//;t a5
s/6$//;t a6
s/7$//;t a7
s/8$//;t a8
s/9$//;t a9
g;s/.*=//;s/://g;G;s/(.*)\n(.*)%(.*)=.*/\2\1\3/;t P

:a0
x;b a

:a1
x
s/:0:/:1:/;t a
s/:1:/:2:/;t a
s/:2:/:3:/;t a
s/:3:/:4:/;t a
s/:4:/:5:/;t a
s/:5:/:6:/;t a
s/:6:/:7:/;t a
s/:7:/:8:/;t a
s/:8:/:9:/;t a
s/:9:/:0:/
x;s/$/_/;t ac

:a2
x
s/:0:/:2:/;t a
s/:1:/:3:/;t a
s/:2:/:4:/;t a
s/:3:/:5:/;t a
s/:4:/:6:/;t a
s/:5:/:7:/;t a
s/:6:/:8:/;t a
s/:7:/:9:/;t a
s/:8:/:0:/
s/:9:/:1:/
x;s/$/_/;t ac

:a3
x
s/:0:/:3:/;t a
s/:1:/:4:/;t a
s/:2:/:5:/;t a
s/:3:/:6:/;t a
s/:4:/:7:/;t a
s/:5:/:8:/;t a
s/:6:/:9:/;t a
s/:7:/:0:/
s/:8:/:1:/
s/:9:/:2:/
x;s/$/_/;t ac

:a4
x
s/:0:/:4:/;t a
s/:1:/:5:/;t a
s/:2:/:6:/;t a
s/:3:/:7:/;t a
s/:4:/:8:/;t a
s/:5:/:9:/;t a
s/:6:/:0:/
s/:7:/:1:/
s/:8:/:2:/
s/:9:/:3:/
x;s/$/_/;t ac

:a5
x
s/:0:/:5:/;t a
s/:1:/:6:/;t a
s/:2:/:7:/;t a
s/:3:/:8:/;t a
s/:4:/:9:/;t a
s/:5:/:0:/
s/:6:/:1:/
s/:7:/:2:/
s/:8:/:3:/
s/:9:/:4:/
x;s/$/_/;t ac

:a6
x
s/:0:/:6:/;t a
s/:1:/:7:/;t a
s/:2:/:8:/;t a
s/:3:/:9:/;t a
s/:4:/:0:/
s/:5:/:1:/
s/:6:/:2:/
s/:7:/:3:/
s/:8:/:4:/
s/:9:/:5:/
x;s/$/_/;t ac

:a7
x
s/:0:/:7:/;t a
s/:1:/:8:/;t a
s/:2:/:9:/;t a
s/:3:/:0:/
s/:4:/:1:/
s/:5:/:2:/
s/:6:/:3:/
s/:7:/:4:/
s/:8:/:5:/
s/:9:/:6:/
x;s/$/_/;t ac

:a8
x
s/:0:/:8:/;t a
s/:1:/:9:/;t a
s/:2:/:0:/
s/:3:/:1:/
s/:4:/:2:/
s/:5:/:3:/
s/:6:/:4:/
s/:7:/:5:/
s/:8:/:6:/
s/:9:/:7:/
x;s/$/_/;t ac

:a9
x
s/:0:/:9:/;t a
s/:1:/:0:/
s/:2:/:1:/
s/:3:/:2:/
s/:4:/:3:/
s/:5:/:4:/
s/:6:/:5:/
s/:7:/:6:/
s/:8:/:7:/
s/:9:/:8:/
x;s/$/_/;t ac

:ac
s/^_/1/;t ac
s/0_/1/;t ac
s/1_/2/;t ac
s/2_/3/;t ac
s/3_/4/;t ac
s/4_/5/;t ac
s/5_/6/;t ac
s/6_/7/;t ac
s/7_/8/;t ac
s/8_/9/;t ac
s/9_/_0/;t ac
x;b a

:S
h;s/.*://;x;s/=.*/&&/g;s/:/=/;s/:.*/::/;t s

:s
s/(=.*=.*=.*)(.):(.*):(.*)/\1:\2:\3\4/;t ss
x;s/.//;x;t sss
s/:(.*):(.*)/\1\2/;s/(.*)%(.*)=.*=.*=(.*)/\1\3\2/;t P

:ss
x
s/0$//;t s0
s/1$//;t s1
s/2$//;t s2
s/3$//;t s3
s/4$//;t s4
s/5$//;t s5
s/6$//;t s6
s/7$//;t s7
s/8$//;t s8
s/9$//;t s9
g;s/.*=.*=.*=//;s/://g;G;s/(.*)\n(.*)%(.*)=.*=.*=.*/\2\1\3/;t P

:s0
x;b s

:s1
x
s/:9:/:8:/;t s
s/:8:/:7:/;t s
s/:7:/:6:/;t s
s/:6:/:5:/;t s
s/:5:/:4:/;t s
s/:4:/:3:/;t s
s/:3:/:2:/;t s
s/:2:/:1:/;t s
s/:1:/:0:/;t s
s/:0:/:9:/
x;s/$/_/;t sc

:s2
x
s/:9:/:7:/;t s
s/:8:/:6:/;t s
s/:7:/:5:/;t s
s/:6:/:4:/;t s
s/:5:/:3:/;t s
s/:4:/:2:/;t s
s/:3:/:1:/;t s
s/:2:/:0:/;t s
s/:1:/:9:/
s/:0:/:8:/
x;s/$/_/;t sc

:s3
x
s/:9:/:6:/;t s
s/:8:/:5:/;t s
s/:7:/:4:/;t s
s/:6:/:3:/;t s
s/:5:/:2:/;t s
s/:4:/:1:/;t s
s/:3:/:0:/;t s
s/:2:/:9:/
s/:1:/:8:/
s/:0:/:7:/
x;s/$/_/;t sc

:s4
x
s/:9:/:5:/;t s
s/:8:/:4:/;t s
s/:7:/:3:/;t s
s/:6:/:2:/;t s
s/:5:/:1:/;t s
s/:4:/:0:/;t s
s/:3:/:9:/
s/:2:/:8:/
s/:1:/:7:/
s/:0:/:6:/
x;s/$/_/;t sc

:s5
x
s/:9:/:4:/;t s
s/:8:/:3:/;t s
s/:7:/:2:/;t s
s/:6:/:1:/;t s
s/:5:/:0:/;t s
s/:4:/:9:/
s/:3:/:8:/
s/:2:/:7:/
s/:1:/:6:/
s/:0:/:5:/
x;s/$/_/;t sc

:s6
x
s/:9:/:3:/;t s
s/:8:/:2:/;t s
s/:7:/:1:/;t s
s/:6:/:0:/;t s
s/:5:/:9:/
s/:4:/:8:/
s/:3:/:7:/
s/:2:/:6:/
s/:1:/:5:/
s/:0:/:4:/
x;s/$/_/;t sc

:s7
x
s/:9:/:2:/;t s
s/:8:/:1:/;t s
s/:7:/:0:/;t s
s/:6:/:9:/
s/:5:/:8:/
s/:4:/:7:/
s/:3:/:6:/
s/:2:/:5:/
s/:1:/:4:/
s/:0:/:3:/
x;s/$/_/;t sc

:s8
x
s/:9:/:1:/;t s
s/:8:/:0:/;t s
s/:7:/:9:/
s/:6:/:8:/
s/:5:/:7:/
s/:4:/:6:/
s/:3:/:5:/
s/:2:/:4:/
s/:1:/:3:/
s/:0:/:2:/
x;s/$/_/;t sc

:s9
x
s/:9:/:0:/;t s
s/:8:/:9:/
s/:7:/:8:/
s/:6:/:7:/
s/:5:/:6:/
s/:4:/:5:/
s/:3:/:4:/
s/:2:/:3:/
s/:1:/:2:/
s/:0:/:1:/
x;s/$/_/;t sc

:sc
s/^_/1/;t sc
s/0_/1/;t sc
s/1_/2/;t sc
s/2_/3/;t sc
s/3_/4/;t sc
s/4_/5/;t sc
s/5_/6/;t sc
s/6_/7/;t sc
s/7_/8/;t sc
s/8_/9/;t sc
s/9_/_0/;t sc
x;b s

:sss
s/(.*)%(.*)=(.*)=(.*)=.*/\1(−(\4−\3))\2/;t P

:M
s/=(.*):(.*)/~\2~=\1::/;t m

:m
h;s/[^~]*~([^~]*).*/\1/;x;t mm

:mm
s/=(.*)(.):(.*):(.*)/=\1\2:\2:\3\4/;t mmm

:mmm
x
s/0$//;t m0
s/1$//;t m1
s/2$//;t m2
s/3$//;t m3
s/4$//;t m4
s/5$//;t m5
s/6$//;t m6
s/7$//;t m7
s/8$//;t m8
s/9$//;t m9
g;s/.*://;t mc

:m0
x;s/:.:/:0:/;t mm

:m1
x;b mm

:m2
x
s/:0:/:0:/;t mm
s/:1:/:2:/;t mm
s/:2:/:4:/;t mm
s/:3:/:6:/;t mm
s/:4:/:8:/;t mm
s/:5:/:1_0:/;t mm
s/:6:/:1_2:/;t mm
s/:7:/:1_4:/;t mm
s/:8:/:1_6:/;t mm
s/:9:/:1_8:/;t mm

:m3
x
s/:0:/:0:/;t mm
s/:1:/:3:/;t mm
s/:2:/:6:/;t mm
s/:3:/:9:/;t mm
s/:4:/:1_2:/;t mm
s/:5:/:1_5:/;t mm
s/:6:/:1_8:/;t mm
s/:7:/:2_1:/;t mm
s/:8:/:2_4:/;t mm
s/:9:/:2_7:/;t mm

:m4
x
s/:0:/:0:/;t mm
s/:1:/:4:/;t mm
s/:2:/:8:/;t mm
s/:3:/:1_2:/;t mm
s/:4:/:1_6:/;t mm
s/:5:/:2_0:/;t mm
s/:6:/:2_4:/;t mm
s/:7:/:2_8:/;t mm
s/:8:/:3_2:/;t mm
s/:9:/:3_6:/;t mm

:m5
x
s/:0:/:0:/;t mm
s/:1:/:5:/;t mm
s/:2:/:1_0:/;t mm
s/:3:/:1_5:/;t mm
s/:4:/:2_0:/;t mm
s/:5:/:2_5:/;t mm
s/:6:/:3_0:/;t mm
s/:7:/:3_5:/;t mm
s/:8:/:4_0:/;t mm
s/:9:/:4_5:/;t mm

:m6
x
s/:0:/:0:/;t mm
s/:1:/:6:/;t mm
s/:2:/:1_2:/;t mm
s/:3:/:1_8:/;t mm
s/:4:/:2_4:/;t mm
s/:5:/:3_0:/;t mm
s/:6:/:3_6:/;t mm
s/:7:/:4_2:/;t mm
s/:8:/:4_8:/;t mm
s/:9:/:5_4:/;t mm

:m7
x
s/:0:/:0:/
s/:1:/:7:/
s/:2:/:1_4:/;t mm
s/:3:/:2_1:/;t mm
s/:4:/:2_8:/;t mm
s/:5:/:3_5:/;t mm
s/:6:/:4_2:/;t mm
s/:7:/:4_9:/;t mm
s/:8:/:5_6:/;t mm
s/:9:/:6_3:/;t mm

:m8
x
s/:0:/:0:/;t mm
s/:1:/:8:/;t mm
s/:2:/:1_6:/;t mm
s/:3:/:2_4:/;t mm
s/:4:/:3_2:/;t mm
s/:5:/:4_0:/;t mm
s/:6:/:4_8:/;t mm
s/:7:/:5_6:/;t mm
s/:8:/:6_4:/;t mm
s/:9:/:7_2:/;t mm

:m9
x
s/:0:/:0:/;t mm
s/:1:/:9:/;t mm
s/:2:/:1_8:/;t mm
s/:3:/:2_7:/;t mm
s/:4:/:3_6:/;t mm
s/:5:/:4_5:/;t mm
s/:6:/:5_4:/;t mm
s/:7:/:6_3:/;t mm
s/:8:/:7_2:/;t mm
s/:9:/:8_1:/;t mm

:mc
s/^1_/1/;t mc
s/^2_/2/;t mc
s/^3_/3/;t mc
s/^4_/4/;t mc
s/^5_/5/;t mc
s/^6_/6/;t mc
s/^7_/7/;t mc
s/^8_/8/;t mc
s/^9_/9/;t mc
s/01_/1/;t mc
s/02_/2/;t mc
s/03_/3/;t mc
s/04_/4/;t mc
s/05_/5/;t mc
s/06_/6/;t mc
s/07_/7/;t mc
s/08_/8/;t mc
s/09_/9/;t mc
s/11_/2/;t mc
s/12_/3/;t mc
s/13_/4/;t mc
s/14_/5/;t mc
s/15_/6/;t mc
s/16_/7/;t mc
s/17_/8/;t mc
s/18_/9/;t mc
s/19_/1_0/;t mc
s/21_/3/;t mc
s/22_/4/;t mc
s/23_/5/;t mc
s/24_/6/;t mc
s/25_/7/;t mc
s/26_/8/;t mc
s/27_/9/;t mc
s/28_/1_0/;t mc
s/29_/1_1/;t mc
s/31_/4/;t mc
s/32_/5/;t mc
s/33_/6/;t mc
s/34_/7/;t mc
s/35_/8/;t mc
s/36_/9/;t mc
s/37_/1_0/;t mc
s/38_/1_1/;t mc
s/39_/1_2/;t mc
s/41_/5/;t mc
s/42_/6/;t mc
s/43_/7/;t mc
s/44_/8/;t mc
s/45_/9/;t mc
s/46_/1_0/;t mc
s/47_/1_1/;t mc
s/48_/1_2/;t mc
s/49_/1_3/;t mc
s/51_/6/;t mc
s/52_/7/;t mc
s/53_/8/;t mc
s/54_/9/;t mc
s/55_/1_0/;t mc
s/56_/1_1/;t mc
s/57_/1_2/;t mc
s/58_/1_3/;t mc
s/59_/1_4/;t mc
s/61_/7/;t mc
s/62_/8/;t mc
s/63_/9/;t mc
s/64_/1_0/;t mc
s/65_/1_1/;t mc
s/66_/1_2/;t mc
s/67_/1_3/;t mc
s/68_/1_4/;t mc
s/69_/1_5/;t mc
s/71_/8/;t mc
s/72_/9/;t mc
s/73_/1_0/;t mc
s/74_/1_1/;t mc
s/75_/1_2/;t mc
s/76_/1_3/;t mc
s/77_/1_4/;t mc
s/78_/1_5/;t mc
s/79_/1_6/;t mc
s/81_/9/;t mc
s/82_/1_0/;t mc
s/83_/1_1/;t mc
s/84_/1_2/;t mc
s/85_/1_3/;t mc
s/86_/1_4/;t mc
s/87_/1_5/;t mc
s/88_/1_6/;t mc
s/89_/1_7/;t mc
s/91_/1_0/;t mc
s/92_/1_1/;t mc
s/93_/1_2/;t mc
s/94_/1_3/;t mc
s/95_/1_4/;t mc
s/96_/1_5/;t mc
s/97_/1_6/;t mc
s/98_/1_7/;t mc
s/99_/1_8/;t mc
G;s/(.*)\n(.*)~(0*)=(.+).:.*:.*/\2~\1\3~0\3=\4::/;t m
s/(.*)\n(.*)~(0*)=.*/\2~\1\3/;s/^(.*)%([^~]*)~[^~]*~(.*)/\1(\3)\2/;y/~/\+/;t P

:P
x;z;x
y/×-/⋅−/
s/.*[0-9]\s+[0-9].*/?/;t P
s/\s+//g;t P
s/\(([0-9]+)\)/\1/g;t P
s/(^|\()\(−([0-9]+)\)($|\))/\1−\2\3/;t P
s/(^|[+−⋅(])\(−([0-9]+)\)⋅([0-9]+)($|[+−⋅)])/\1(−\2⋅\3)\4/;t P
s/(^|[+−⋅(])([0-9]+)⋅\(−([0-9]+)\)($|[+−⋅)])/\1(−\2⋅\3)\4/;t P
s/(^|[+−⋅(])\(−([0-9]+)\)⋅\(−([0-9]+)\)($|[+−⋅)])/\1\2⋅\3\4/;t P
s/([0-9]+)⋅([0-9]+)(.*)/%\3=\1:\2/;t M
s/(^|\()−\(−([0-9]+)\)($|[+−)])/\1\2\3/;t P
s/(^|\()\(−([0-9]+)\)\+([0-9]+)($|[+−)])/\1\3−\2\4/;t P
s/(^|\()([0-9]+)\+\(−([0-9]+)\)($|[+−)])/\1\2−\3\4/;t P
s/(^|\()\(−([0-9]+)\)\+\(−([0-9]+)\)($|[+−)])/\1−(\2+\3)\4/;t P
s/(^|\()\(−([0-9]+)\)−([0-9]+)($|[+−)])/\1−(\2+\3)\4/;t P
s/(^|\()([0-9]+)−\(−([0-9]+)\)($|[+−)])/\1\2+\3\4/;t P
s/(^|\()\(−([0-9]+)\)−\(−([0-9]+)\)($|[+−)])/\1\3−\2\4/;t P
s/([0-9]+)\−([0-9]+)(.*)/%\3=\1:\2/;t S
s/([0-9]+)\+([0-9]+)(.*)/%\3=\1:\2/;t A
s/^$/?/;s/^(−?)0*/\1/;s/^−?$/0/;s/^[^−0-9].*|^..*[^0-9].*/?/
