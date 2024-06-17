#!/bin/sed -Enf

s/^([0-9]+)\s*\+\s*([0-9]+)$/\1\n\2/;t A
d

:A
h;s/.*\n//;x;s/\n.*/\n\n/;t a

:a
s/(.*)(.)\n(.*)\n(.*)/\1\n\2\n\3\4/;t aa
s/\n(.*)\n(.*)/\1\2/;x;G;s/\n//;p;d

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
x;s/\n//g;p;d

:a0
x;b a

:a1
x
s/\n0\n/\n1\n/;t a
s/\n1\n/\n2\n/;t a
s/\n2\n/\n3\n/;t a
s/\n3\n/\n4\n/;t a
s/\n4\n/\n5\n/;t a
s/\n5\n/\n6\n/;t a
s/\n6\n/\n7\n/;t a
s/\n7\n/\n8\n/;t a
s/\n8\n/\n9\n/;t a
s/\n9\n/\n0\n/
x;s/$/_/;t ac

:a2
x
s/\n0\n/\n2\n/;t a
s/\n1\n/\n3\n/;t a
s/\n2\n/\n4\n/;t a
s/\n3\n/\n5\n/;t a
s/\n4\n/\n6\n/;t a
s/\n5\n/\n7\n/;t a
s/\n6\n/\n8\n/;t a
s/\n7\n/\n9\n/;t a
s/\n8\n/\n0\n/
s/\n9\n/\n1\n/
x;s/$/_/;t ac

:a3
x
s/\n0\n/\n3\n/;t a
s/\n1\n/\n4\n/;t a
s/\n2\n/\n5\n/;t a
s/\n3\n/\n6\n/;t a
s/\n4\n/\n7\n/;t a
s/\n5\n/\n8\n/;t a
s/\n6\n/\n9\n/;t a
s/\n7\n/\n0\n/
s/\n8\n/\n1\n/
s/\n9\n/\n2\n/
x;s/$/_/;t ac

:a4
x
s/\n0\n/\n4\n/;t a
s/\n1\n/\n5\n/;t a
s/\n2\n/\n6\n/;t a
s/\n3\n/\n7\n/;t a
s/\n4\n/\n8\n/;t a
s/\n5\n/\n9\n/;t a
s/\n6\n/\n0\n/
s/\n7\n/\n1\n/
s/\n8\n/\n2\n/
s/\n9\n/\n3\n/
x;s/$/_/;t ac

:a5
x
s/\n0\n/\n5\n/;t a
s/\n1\n/\n6\n/;t a
s/\n2\n/\n7\n/;t a
s/\n3\n/\n8\n/;t a
s/\n4\n/\n9\n/;t a
s/\n5\n/\n0\n/
s/\n6\n/\n1\n/
s/\n7\n/\n2\n/
s/\n8\n/\n3\n/
s/\n9\n/\n4\n/
x;s/$/_/;t ac

:a6
x
s/\n0\n/\n6\n/;t a
s/\n1\n/\n7\n/;t a
s/\n2\n/\n8\n/;t a
s/\n3\n/\n9\n/;t a
s/\n4\n/\n0\n/
s/\n5\n/\n1\n/
s/\n6\n/\n2\n/
s/\n7\n/\n3\n/
s/\n8\n/\n4\n/
s/\n9\n/\n5\n/
x;s/$/_/;t ac

:a7
x
s/\n0\n/\n7\n/;t a
s/\n1\n/\n8\n/;t a
s/\n2\n/\n9\n/;t a
s/\n3\n/\n0\n/
s/\n4\n/\n1\n/
s/\n5\n/\n2\n/
s/\n6\n/\n3\n/
s/\n7\n/\n4\n/
s/\n8\n/\n5\n/
s/\n9\n/\n6\n/
x;s/$/_/;t ac

:a8
x
s/\n0\n/\n8\n/;t a
s/\n1\n/\n9\n/;t a
s/\n2\n/\n0\n/
s/\n3\n/\n1\n/
s/\n4\n/\n2\n/
s/\n5\n/\n3\n/
s/\n6\n/\n4\n/
s/\n7\n/\n5\n/
s/\n8\n/\n6\n/
s/\n9\n/\n7\n/
x;s/$/_/;t ac

:a9
x
s/\n0\n/\n9\n/;t a
s/\n1\n/\n0\n/
s/\n2\n/\n1\n/
s/\n3\n/\n2\n/
s/\n4\n/\n3\n/
s/\n5\n/\n4\n/
s/\n6\n/\n5\n/
s/\n7\n/\n6\n/
s/\n8\n/\n7\n/
s/\n9\n/\n8\n/
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
