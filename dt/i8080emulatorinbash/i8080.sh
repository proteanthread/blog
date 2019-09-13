#!/bin/bash

echo 'Quick and dirty i8080 emulator by NASZVADI Peter, 2019.'
echo 'Press Ctrl+C to quit anytime!'

# 2KBASIC ROM from Oscar Toledo, converted to (memory)array
# https://nanochess.org/emulator.html
# https://ioccc.org/2006/toledo2/hint.text
# Memory initialization from address 0x0000
M=(243  33  20  16  34  18  16  49   0  20 251 205 164   6  17  81
     7 151 205 150   6  33  28   0  34   0  16  33   0   0  34   6
    16  34   2  16  62  62 205 132   0 213  17  55  19 205  24   6
   205  84   1 124 181 193 202  15   1  27 124  18  27 125  18 197
   213 121 147 245 205 203   0 213 194  91   0 213 205 233   0 193
    42  18  16 205 245   0  96 105  34  18  16 193  42  18  16 241
   229 254   3 202   7   0 133 111  62   0 140 103  17   0  19 205
   143   5 210 103   6  34  18  16 209 205   0   1 209 225 205 245
     0 195  36   0 205 101   7  17  55  19 205 123   7 254 127 202
   170   0 254   8 202 170   0 254  24 202 195   0 205 101   7  18
    19 254  13 200 123 254 135 194 138   0 123 254  55 202 195   0
    27  62   8 205 101   7  62  32 205 101   7  62   8 205 101   7
   195 138   0 205 164   6  62  92 195 132   0 124 183 250  96   6
    17  20  16 229  42  18  16  43 205 143   5 225 216  26 149  71
    19  26 156 218 234   0  27 176 201  19  19  26 254  13 194 234
     0  19 195 211   0 205 143   5 200  26   2  19   3 195 245   0
   120 146 194   8   1 121 147 200  27  43  26 119 195   0   1  33
   168   6 205  84   1 213  26  19 254  46 202  51   1  35 190 202
    22   1  27 151 190 202  57   1  35 190 194  40   1  35  35 209
   195  21   1 151  35 190 194  52   1  35 126  35 102 111 241 233
   227 205  84   1 190  35 202  80   1 197  78   6   0   9 193  27
    19  35 227 201  26 254  32 192  19 195  84   1 205 112   4  33
    20  16  34  18  16 205 112   4 195   7   0 205  98   2 205 121
     4 213 205 203   0 194  97   6  42   0  16 229  42   2  16 229
    33   0   0  34   6  16  57  34   2  16 195  71   4 205 112   4
    42   2  16 124 181 202  89   6 249 225  34   2  16 225  34   0
    16 209 205 139   2 195  87   4 205  98   2 205  17   4  43  34
     6  16  33  11   7 195  18   1 205 121   4  34  10  16  33  19
     7 195  18   1 205 121   4 195 205   1  33   1   0  34   8  16
    42   0  16  34  12  16 235  34  14  16   1  10   0  42   6  16
   235  96 104  57  62   9 126  35 182 202   6   2 126  43 186 194
   229   1 126 187 194 229   1 235  33   0   0  57  68  77  33  10
     0  25 205   0   1 249  42  14  16 235 195  87   4 205 228   5
   218  89   6  34   4  16 213 235  42   6  16 124 181 202  90   6
   205 143   5 202  48   2 209 205 139   2  42   4  16 195  22   2
    94  35  86  42   8  16 229  25 235  42   6  16 115  35 114  42
    10  16 241 183 242  72   2 235 205 137   5 209 218  92   2  42
    12  16  34   0  16  42  14  16 235 195  87   4 205 139   2 195
    87   4  33 165  19 205 125   5 193  57 210 103   6  42   6  16
   124 181 202 136   2  42  14  16 229  42  12  16 229  42  10  16
   229  42   8  16 229  42   6  16 229 197 201 193 225  34   6  16
   124 181 202 165   2 225  34   8  16 225  34  10  16 225  34  12
    16 225  34  14  16 197 201 205 121   4 124 181 194  78   4  33
     0   0 205 235   0 210  71   4 195   7   0 205  24   6 205 112
     4 205 203   0 218   7   0 205 211   2 205 118   7 205 211   0
   195 196   2  26 111  19  26 103  19  14   4 205  94   3  62  32
   205 101   7 151 205 150   6 201  14   6 205  64   1  59   6 205
   164   6 195  78   4 205  64   1  13   6 205 164   6 195  62   4
   205  64   1  35   7 205 121   4  77 195  18   3 205  46   3 195
    35   3 205  64   1  44   6 205  93   4 195   0   3 205 164   6
   195  87   4 205 121   4 197 205  94   3 193 195  18   3 205  64
     1  34   5  62  34 195  63   3 205  64   1  39  14  62  39 205
   150   6 254  13 225 202  62   4 195  89   3 205  64   1  95  13
    62 141 205 101   7 205 101   7 225  35  35  35 233 201 213  17
    10   0 213  66  13 205 122   5 242 110   3   6  45  13 197 205
    93   5 120 177 202 127   3 227  45 229  96 105 195 111   3 193
    13 121 183 250 142   3  62  32 205 101   7 195 128   3 120 205
   101   7  93 123 254  10 209 200 198  48 205 101   7 195 147   3
    42   4  16 249 225  34   0  16 209 209 213 205  46   3 195 186
     3 205 228   5 218 245   3 195 204   3 213 205 228   5 218  89
     6  26  79 151  18 209 205 150   6 121  27  18 213 235  42   0
    16 229  33 170   3  34   0  16  33   0   0  57  34   4  16 213
    62  58 205 132   0  17  55  19 205 121   4 209 235 115  35 114
   225  34   0  16 209 241 205  64   1  44  92 195 170   3 205 102
     4 254  13 202  87   4 205  17   4 205  64   1  44  73 195   6
     4 205 228   5 218  89   6 229 205  64   1  61  61 205 121   4
    68  77 225 113  35 112 201 205 121   4 213 205 112   4 205 203
     0 194  97   6 241 195  71   4 205 112   4  17  20  16  33   0
     0 205 211   0 218   7   0 235  34   0  16 235  19  19 205 118
     7  33 187   6 195  18   1 205  93   4 195  89   6 205  64   1
    59   4 241 195  78   4 205  64   1  13   4 241 195  62   4 201
   205  84   1 254  13 200 195  89   6 205 193   4 229  33  29   7
   195  18   1 205 172   4 216 111 201 205 172   4 200 111 201 205
   172   4 200 216 111 201 205 172   4 111 200 216 108 201 205 172
     4 192 111 201 205 172   4 208 111 201 225 201 121 225 193 229
   197  79 205 193   4 235 227 205 137   5 209  33   0   0  62   1
   201 205  64   1  45   6  33   0   0 195 229   4 205  64   1  43
     0 205 253   4 205  64   1  43   7 229 205 253   4 195 236   4
   205  64   1  45 141 229 205 253   4 205 125   5 235 227 124 170
   122  25 209 250 212   4 172 242 212   4 195  96   6 205 149   5
   205  64   1  42  43 229 205 149   5   6   0 205 122   5 235 227
   205 122   5 124 183 202  30   5 122 178 235 194  97   6 125  46
     0 183 202  79   5  25 218  97   6  61 194  37   5 195  79   5
   205  64   1  47  61 229 205 149   5   6   0 205 122   5 235 227
   205 122   5 122 179 202  97   6 197 205  93   5  96 105 193 209
   124 183 250  96   6 120 183 252 125   5 195   0   5 229 108  38
     0 205 104   5  65 125 225 103  14 255  12 205 115   5 210 106
     5  25 201 125 147 111 124 154 103 201 124 183 240 124  47 103
   125  47 111  35 120 238 128  71 201 124 170 242 143   5 235 124
   186 192 125 187 201  33  58   7 195  18   1 205  75   6 124 183
   250  96   6 181 202  96   6 213 229  42  16  16 124 230   7 103
    94  35  86  34  16  16 225 235 197 205  93   5 193 209  35 201
   205  75   6 205 122   5 124 180 250  96   6 201  42  18  16 213
   235  33   0  19 205 115   5 209 201 205 228   5 218  69   6 126
    35 102 111 201 205  84   1 214  64 216 194   8   6  19 205  75
     6  41 218  96   6 213 235 205 204   5 205 143   5 218 104   6
    33   0  19 205 115   5 209 201 254  27  63 216  19  33   0  19
     7 133 111  62   0 140 103 201  33   0   0  68 205  84   1 254
    48 216 254  58 208  62 240 164 194  96   6   4 197  68  77  41
    41   9  41  26  19 230  15 133 111  62   0 140 103 193  26 250
    96   6 195  31   6 205  24   6 120 183 192 205  64   1  40   9
   205 121   4 205  64   1  41   1 201 213  17  89   7 195 107   6
   213  17  84   7 195 107   6 213  17  95   7 151 205 150   6 209
    26 245 151  18  42   0  16 229 126  35 182 209 202   7   0 126
   183 250 160   3 205 211   2  27 241  18  62  63 205 101   7 151
   205 150   6 195   7   0  71  26  19 184 200 205 101   7 254  13
   194 151   6 201  62  13 195 101   7  76  73  83  84   0 187   2
    82  85  78   0  56   4  78  69  87   0  92   1  78  69  88  84
     0  13   2  76  69  84   0   6   4  73  78  80  85  84   0 170
     3  73  70   0 167   2  71  79  84  79   0  39   4  71  79  83
    85  66   0 107   1  82  69  84  85  82  78   0 141   1  82  69
    77   0 175   2  70  79  82   0 168   1  80  82  73  78  84   0
   232   2  83  84  79  80   0 101   1   0 254   3  84  79   0 184
     1   0  89   6  83  84  69  80   0 196   1   0 202   1  62  61
     0 131   4  35   0 137   4  62   0 143   4  61   0 158   4  60
    61   0 150   4  60   0 164   4   0 170   4  82  78  68   0 155
     5  65  66  83   0 192   5  83  73  90  69   0 204   5   0 217
     5  79  75  13  72  79  87  63  13  87  72  65  84  63  13  83
    79  82  82  89  13 245   0 211   0   0 254  13 194 116   7  62
    10 211   0   0 241 201 219   0   0 183 200 219   1 183 202 123
     7 254   3 202   7   0 254  26 192 118   0   0   0   0   0   0
     0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
     0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
     0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
     0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
     0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
     0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
     0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0)

# MAGIC FLAG VALUES FOR ALL BYTE VALUES (S Z P)
P=(64   4   4   0   4   0   0   4   4   0   0   4   0   4   4   0
    4   0   0   4   0   4   4   0   0   4   4   0   4   0   0   4
    4   0   0   4   0   4   4   0   0   4   4   0   4   0   0   4
    0   4   4   0   4   0   0   4   4   0   0   4   0   4   4   0
    4   0   0   4   0   4   4   0   0   4   4   0   4   0   0   4
    0   4   4   0   4   0   0   4   4   0   0   4   0   4   4   0
    0   4   4   0   4   0   0   4   4   0   0   4   0   4   4   0
    4   0   0   4   0   4   4   0   0   4   4   0   4   0   0   4
  132 128 128 132 128 132 132 128 128 132 132 128 132 128 128 132
  128 132 132 128 132 128 128 132 132 128 128 132 128 132 132 128
  128 132 132 128 132 128 128 132 132 128 128 132 128 132 132 128
  132 128 128 132 128 132 132 128 128 132 132 128 132 128 128 132
  128 132 132 128 132 128 128 132 132 128 128 132 128 132 132 128
  132 128 128 132 128 132 132 128 128 132 132 128 132 128 128 132
  132 128 128 132 128 132 132 128 128 132 132 128 132 128 128 132
  128 132 132 128 132 128 128 132 132 128 128 132 128 132 132 128)

echo 'Initializing upper memory to NOPs'
for((PC=${#M[@]};PC<65536;M[PC++]+=0)){ :;}

echo 'Initializing register values'
((A=B=C=D=E=F=H=L=SP=PC=0))

echo 'Starting CPU emulation'
echo
for((;;)){
case $((M[PC++])) in
1)((C=M[PC++],B=M[PC++]));; # LXI B,nnnn
2)((M[(B<<8)|C]=A));; # STAX B
3)((C=C+1&255,B=!C+B&255));; # INX B
4)((B=B+1&255,F=(F&0x3B)|P[B]|(B&15?0:16)));; # INR B aux
5)((F=B&15?0:16,B=B+255&255,F=(F&0x3B)|P[B]));; # DCR B aux
6)((B=M[PC++]));; # MVI B,nn
7)((A=(A<<1)|(A>>7),F=(F&254)|(A&1)));; # RLC
9)((L+=C,H+=(L>>8)+B,F=(F&254)|(H>>8),H&=255,L&=255));; # DAD BC
10)((A=M[(B<<8)|C]));; # LDAX B
11)((C=C+255&255,B=(C==255?C:0)+B&255));; # DCX B
12)((C=C+1&255,F=(F&0x3B)|P[C]|(C&15?0:16)));; # INR C aux
13)((F=C&15?0:16,C=C+255&255,F=(F&0x3B)|P[C]));; # DCR C aux
14)((C=M[PC++]));; # MVI C,nn
15)((F=(F&254)|(A&1),A=(A>>1)|(A<<7)));; # RRC
17)((E=M[PC++],D=M[PC++]));; # LXI D,nnnn
18)((M[(D<<8)|E]=A));; # STAX D
19)((E=E+1&255,D=!E+D&255));; # INX D
20)((D=D+1&255,F=(F&0x3B)|P[D]|(D&15?0:16)));; # INR D aux
21)((F=D&15?0:16,D=D+255&255,F=(F&0x3B)|P[D]));; # DCR D aux
22)((D=M[PC++]));; # MVI D,nn
23)((A=(A<<1)|(F&1),F=(F&254)|(A>>8),A&=255));; # RAL
25)((L+=E,H+=(L>>8)+D,F=(F&254)|(H>>8),H&=255,L&=255));; # DAD D
26)((A=M[(D<<8)|E]));; # LDAX D
27)((E=E+255&255,D=(E==255?E:0)+D&255));; # DCX D
28)((E=E+1&255,F=(F&0x3B)|P[E]|(E&15?0:16)));; # INR E aux
29)((F=E&15?0:16,E=E+255&255,F=(F&0x3B)|P[E]));; # DCR E aux
30)((E=M[PC++]));; # MVI E,nn
31)((A|=F%2<<8,F=(F&254)|(A&1),A>>=1));; # RAR
33)((L=M[PC++],H=M[PC++]));; # LXI H,nnnn
34)((_Z=M[PC++]|(M[PC++]<<8),M[_Z++]=L,M[_Z&65535]=H));; # SHLD nnnn
35)((L=L+1&255,H=!L+H&255));; # INX H
36)((H=H+1&255,F=(F&0x3B)|P[H]|(H&15?0:16)));; # INR H aux
37)((F=H&15?0:16,H=H+255&255,F=(F&0x3B)|P[H]));; # DCR H aux
38)((H=M[PC++]));; # MVI H,nn
39)((_Z=A,_Z+=((F&16)|(A%16>9))?6:0,_Z+=((F&1)|(A>153))?96:0,F=(F&3)|(A&40)|(A>153?1:0)|((A^_Z)&16)|P[_Z],A=_Z ));; # DAA
41)((L+=L,H+=(L>>8)+H,F=(F&254)|(H>>8),H&=255,L&=255));; # DAD H
42)((_Z=M[PC++]|(M[PC++]<<8),L=M[_Z++],H=M[_Z&65535]));; # LHLD nnnn
43)((L=L+255&255,H=(L==255?L:0)+H&255));; # DCX H
44)((L=L+1&255,F=(F&0x3B)|P[L]|(L&15?0:16)));; # INR L aux
45)((F=L&15?0:16,L=L+255&255,F=(F&0x3B)|P[L]));; # DCR L aux
46)((L=M[PC++]));; # MVI L,nn
47)((A^=255));; # CMA
49)((SP=M[PC++]|(M[PC++]<<8)));; # LXI SP,nnnn
50)((M[M[PC++]|(M[PC++]<<8)]=A));; # STAX nnnn
51)((SP++));; # INX SP
52)((_Z=M[PC++]|(M[PC++]<<8),M[_Z]=M[_Z]+1&255,F=(F&0x3B)|P[M[_Z]]|(M[_Z]&15?0:16)));; # INR M aux
53)((_Z=M[PC++]|(M[PC++]<<8),F=M[_Z]&15?0:16,M[_Z]=M[_Z]+255&255,F=(F&0x3B)|P[M[_Z]]));; # DCR M aux
54)((M[L|(H<<8)]=M[PC++]));; # MVI M,nn
55)((F|=1));; # STC
57)((L+=SP&255,H+=SP+L>>8,F=(F&254)|(H>>8),H&=255,L&=255));; # DAD SP
58)((A=M[M[PC++]|(M[PC++]<<8)]));; # LDAX nnnn
59)((SP=SP+65535));; # DCX SP
60)((A=A+1&255,F=(F&0x3B)|P[A]|(A&15?0:16)));; # INR A aux
61)((F=L&15?0:16,A=A+255&255,F=(F&0x3B)|P[A]));; # DCR A aux
62)((A=M[PC++]));; # MVI A,nn
63)((F^=1));; # CMC

65)((B=C));;66)((B=D));;67)((B=E));;68)((B=H));;
69)((B=L));;70)((B=M[L|(H<<8)]));;71)((B=A));;
72)((C=B));;74)((C=D));;75)((C=E));;76)((C=H));;
77)((C=L));;78)((C=M[L|(H<<8)]));;79)((C=A));;

80)((D=B));;81)((D=C));;83)((D=E));;84)((D=H));;
85)((D=L));;86)((D=M[L|(H<<8)]));;87)((D=A));;
88)((E=B));;89)((E=C));;90)((E=D));;92)((E=H));;
93)((E=L));;94)((E=M[L|(H<<8)]));;95)((E=A));;

96)((H=B));;97)((H=C));;98)((H=D));;99)((H=E));;
101)((H=L));;102)((H=M[L|(H<<8)]));;103)((H=A));;
104)((L=B));;105)((L=C));;106)((L=D));;107)((L=E));;
108)((L=H));;110)((L=M[L|(H<<8)]));;111)((L=A));;

112)((M[L|(H<<8)]=B));;113)((M[L|(H<<8)]=C));;
114)((M[L|(H<<8)]=D));;115)((M[L|(H<<8)]=E));;
116)((M[L|(H<<8)]=H));;117)((M[L|(H<<8)]=L));;
118)((PC=PC+65535&65535));break ;;
119)((M[L|(H<<8)]=A));;

120)((A=B));;121)((A=C));;122)((A=D));;
123)((A=E));;124)((A=H));;125)((A=L));;
126)((A=M[L|(H<<8)]));;

128)((_Z=B,          F=(A+_Z>>8)|((A%16+_Z%16)&16),A=A+_Z&255,F|=P[A]));;
129)((_Z=C,          F=(A+_Z>>8)|((A%16+_Z%16)&16),A=A+_Z&255,F|=P[A]));;
130)((_Z=D,          F=(A+_Z>>8)|((A%16+_Z%16)&16),A=A+_Z&255,F|=P[A]));;
131)((_Z=E,          F=(A+_Z>>8)|((A%16+_Z%16)&16),A=A+_Z&255,F|=P[A]));;
132)((_Z=H,          F=(A+_Z>>8)|((A%16+_Z%16)&16),A=A+_Z&255,F|=P[A]));;
133)((_Z=L,          F=(A+_Z>>8)|((A%16+_Z%16)&16),A=A+_Z&255,F|=P[A]));;
135)((_Z=A,          F=(A+_Z>>8)|((A%16+_Z%16)&16),A=A+_Z&255,F|=P[A]));;
134)((_Z=M[L|(H<<8)],F=(A+_Z>>8)|((A%16+_Z%16)&16),A=A+_Z&255,F|=P[A]));;

136)((_Z=B+F%2,          F=(A+_Z>>8)|((A%16+_Z%16)&16),A=A+_Z&255,F|=P[A]));;
137)((_Z=C+F%2,          F=(A+_Z>>8)|((A%16+_Z%16)&16),A=A+_Z&255,F|=P[A]));;
138)((_Z=D+F%2,          F=(A+_Z>>8)|((A%16+_Z%16)&16),A=A+_Z&255,F|=P[A]));;
139)((_Z=E+F%2,          F=(A+_Z>>8)|((A%16+_Z%16)&16),A=A+_Z&255,F|=P[A]));;
140)((_Z=H+F%2,          F=(A+_Z>>8)|((A%16+_Z%16)&16),A=A+_Z&255,F|=P[A]));;
141)((_Z=L+F%2,          F=(A+_Z>>8)|((A%16+_Z%16)&16),A=A+_Z&255,F|=P[A]));;
143)((_Z=A+F%2,          F=(A+_Z>>8)|((A%16+_Z%16)&16),A=A+_Z&255,F|=P[A]));;
142)((_Z=M[L|(H<<8)]+F%2,F=(A+_Z>>8)|((A%16+_Z%16)&16),A=A+_Z&255,F|=P[A]));;

144)((_Z=B,          F=(_Z>A)|((16+A%16-_Z%16)&16),A=A+512-_Z&255,F|=P[A]));;
145)((_Z=C,          F=(_Z>A)|((16+A%16-_Z%16)&16),A=A+512-_Z&255,F|=P[A]));;
146)((_Z=D,          F=(_Z>A)|((16+A%16-_Z%16)&16),A=A+512-_Z&255,F|=P[A]));;
147)((_Z=E,          F=(_Z>A)|((16+A%16-_Z%16)&16),A=A+512-_Z&255,F|=P[A]));;
148)((_Z=H,          F=(_Z>A)|((16+A%16-_Z%16)&16),A=A+512-_Z&255,F|=P[A]));;
149)((_Z=L,          F=(_Z>A)|((16+A%16-_Z%16)&16),A=A+512-_Z&255,F|=P[A]));;
151)((_Z=A,          F=(_Z>A)|((16+A%16-_Z%16)&16),A=A+512-_Z&255,F|=P[A]));;
150)((_Z=M[L|(H<<8)],F=(_Z>A)|((16+A%16-_Z%16)&16),A=A+512-_Z&255,F|=P[A]));;

152)((_Z=B+F%2,          F=(_Z>A)|((16+A%16-_Z%16)&16),A=A+512-_Z&255,F|=P[A]));;
153)((_Z=C+F%2,          F=(_Z>A)|((16+A%16-_Z%16)&16),A=A+512-_Z&255,F|=P[A]));;
154)((_Z=D+F%2,          F=(_Z>A)|((16+A%16-_Z%16)&16),A=A+512-_Z&255,F|=P[A]));;
155)((_Z=E+F%2,          F=(_Z>A)|((16+A%16-_Z%16)&16),A=A+512-_Z&255,F|=P[A]));;
156)((_Z=H+F%2,          F=(_Z>A)|((16+A%16-_Z%16)&16),A=A+512-_Z&255,F|=P[A]));;
157)((_Z=L+F%2,          F=(_Z>A)|((16+A%16-_Z%16)&16),A=A+512-_Z&255,F|=P[A]));;
159)((_Z=A+F%2,          F=(_Z>A)|((16+A%16-_Z%16)&16),A=A+512-_Z&255,F|=P[A]));;
158)((_Z=M[L|(H<<8)]+F%2,F=(_Z>A)|((16+A%16-_Z%16)&16),A=A+512-_Z&255,F|=P[A]));;

160)((A&=B,F=P[A]));;     161)((A&=C,F=P[A]));;
162)((A&=D,F=P[A]));;     163)((A&=E,F=P[A]));;
164)((A&=H,F=P[A]));;     165)((A&=L,F=P[A]));;
166)((A&=M[L|(H<<8)],F=P[A]));;167)((F=P[A]));;

168)((A^=B,F=P[A]));;     169)((A^=C,F=P[A]));;
170)((A^=D,F=P[A]));;     171)((A^=E,F=P[A]));;
172)((A^=H,F=P[A]));;     173)((A^=L,F=P[A]));;
174)((A^=M[L|(H<<8)],F=P[A]));;175)((A=0,F=P[A]));;

176)((A|=B,F=P[A]));;     177)((A|=C,F=P[A]));;
178)((A|=D,F=P[A]));;     179)((A|=E,F=P[A]));;
180)((A|=H,F=P[A]));;     181)((A|=L,F=P[A]));;
182)((A|=M[L|(H<<8)],F=P[A]));;183)((F=P[A]));;

184)((_Z=B,          F=(_Z>A)|((16+A%16-_Z%16)&16),F|=P[A+512-_Z&255]));;
185)((_Z=C,          F=(_Z>A)|((16+A%16-_Z%16)&16),F|=P[A+512-_Z&255]));;
186)((_Z=D,          F=(_Z>A)|((16+A%16-_Z%16)&16),F|=P[A+512-_Z&255]));;
187)((_Z=E,          F=(_Z>A)|((16+A%16-_Z%16)&16),F|=P[A+512-_Z&255]));;
188)((_Z=H,          F=(_Z>A)|((16+A%16-_Z%16)&16),F|=P[A+512-_Z&255]));;
189)((_Z=L,          F=(_Z>A)|((16+A%16-_Z%16)&16),F|=P[A+512-_Z&255]));;
191)((_Z=A,          F=(_Z>A)|((16+A%16-_Z%16)&16),F|=P[A+512-_Z&255]));;
190)((_Z=M[L|(H<<8)],F=(_Z>A)|((16+A%16-_Z%16)&16),F|=P[A+512-_Z&255]));;

193)((C=M[SP++&65535],B=M[SP++&65535]));; # POP B
197)((SP=SP+65535&65535,M[SP]=B,SP=SP+65535&65535,M[SP]=C));; # PUSH B
209)((E=M[SP++&65535],D=M[SP++&65535]));; # POP D
213)((SP=SP+65535&65535,M[SP]=D,SP=SP+65535&65535,M[SP]=E));; # PUSH D
225)((L=M[SP++&65535],H=M[SP++&65535]));; # POP H
229)((SP=SP+65535&65535,M[SP]=H,SP=SP+65535&65535,M[SP]=L));; # PUSH H
241)((F=M[SP++&65535],A=M[SP++&65535]));; # POP A
245)((SP=SP+65535&65535,M[SP]=A,SP=SP+65535&65535,M[SP]=F));; # PUSH A

# Various chaotic dirty ugly hekks, greetings to Pelikan A. et FIO guys :o)
211) ((PC++)); printf '\x'"$(printf %02x $A)";; # OUT nn
219) if ((M[PC++]==0))
     then ((A=255))
     else IFS='' read -d '' -r -s -n 1 REPLY # >/dev/null 2>/dev/null
         A=$(printf %d "'$REPLY") ; ((A=(A==10)?13:A))
     fi;; # IN nn

227)((_Z=L,L=M[SP],M[SP]=_Z,_Z=H,H=M[SP+1&65535],M[SP+1&65535]=_Z));; # XTHL
233)((PC=L|(H<<8)));; # PCHL
235)((_Z=L,L=E,E=_Z,_Z=H,H=D,D=_Z));; # XCHG
249)((SP=L|(H<<8)));; # SPHL

192)((F&64))||((PC=M[SP++]|(M[SP++&65535]<<8)));; # RNZ
200)((F&64))&&((PC=M[SP++]|(M[SP++&65535]<<8)));; # RZ
201|217)((PC=M[SP++]|(M[SP++&65535]<<8)));; # RET
208)((F&1))||((PC=M[SP++]|(M[SP++&65535]<<8)));; # RNC
216)((F&1))&&((PC=M[SP++]|(M[SP++&65535]<<8)));; # RC
224)((F&4))||((PC=M[SP++]|(M[SP++&65535]<<8)));; # RPO
232)((F&4))&&((PC=M[SP++]|(M[SP++&65535]<<8)));; # RPE
240)((F&128))||((PC=M[SP++]|(M[SP++&65535]<<8)));; # RP
248)((F&128))&&((PC=M[SP++]|(M[SP++&65535]<<8)));; # RM

194)((PC=PC+2&65535,F&64))||((PC=M[PC+65534&65535]|(M[PC+65535&65535]<<8)));; # JNZ nnnn
195|203)((PC=M[PC&65535]|(M[PC+1&65535]<<8)));; # JMP nnnn
202)((PC=PC+2&65535,F&64))&&((PC=M[PC+65534&65535]|(M[PC+65535&65535]<<8)));; # JZ  nnnn
210)((PC=PC+2&65535,F&1))||((PC=M[PC+65534&65535]|(M[PC+65535&65535]<<8)));; # JNC nnnn
218)((PC=PC+2&65535,F&1))&&((PC=M[PC+65534&65535]|(M[PC+65535&65535]<<8)));; # JC nnnn
226)((PC=PC+2&65535,F&4))||((PC=M[PC+65534&65535]|(M[PC+65535&65535]<<8)));; # JPO nnnn
234)((PC=PC+2&65535,F&4))&&((PC=M[PC+65534&65535]|(M[PC+65535&65535]<<8)));; # JPE nnnn
242)((PC=PC+2&65535,F&128))||((PC=M[PC+65534&65535]|(M[PC+65535&65535]<<8)));; # JP nnnn
250)((PC=PC+2&65535,F&128))&&((PC=M[PC+65534&65535]|(M[PC+65535&65535]<<8)));; # JM nnnn

243) :;; # DI TODO
251) :;; # EI TODO

196)((PC=PC+2&65535,F&64)) || ((M[SP+65535&65535]=PC>>8,M[SP+65534&65535]=PC&255,PC=M[PC+65534&65535]|(M[PC+65535&65535]<<8),SP=SP+65534));; # CNZ nnnn
204)((PC=PC+2&65535,F&64)) && ((M[SP+65535&65535]=PC>>8,M[SP+65534&65535]=PC&255,PC=M[PC+65534&65535]|(M[PC+65535&65535]<<8),SP=SP+65534));; # CZ  nnnn
205|221|237|253)((PC=PC+2&65535,M[SP+65535&65535]=PC>>8,M[SP+65534&65535]=PC&255,PC=M[PC+65534&65535]|(M[PC+65535&65535]<<8),SP=SP+65534));; # CALL nnnn
212)((PC=PC+2&65535,F&1)) ||  ((M[SP+65535&65535]=PC>>8,M[SP+65534&65535]=PC&255,PC=M[PC+65534&65535]|(M[PC+65535&65535]<<8),SP=SP+65534));; # CNC nnnn
220)((PC=PC+2&65535,F&1)) &&  ((M[SP+65535&65535]=PC>>8,M[SP+65534&65535]=PC&255,PC=M[PC+65534&65535]|(M[PC+65535&65535]<<8),SP=SP+65534));; # CC nnnn
228)((PC=PC+2&65535,F&4)) ||  ((M[SP+65535&65535]=PC>>8,M[SP+65534&65535]=PC&255,PC=M[PC+65534&65535]|(M[PC+65535&65535]<<8),SP=SP+65534));; # CPO nnnn
236)((PC=PC+2&65535,F&4)) &&  ((M[SP+65535&65535]=PC>>8,M[SP+65534&65535]=PC&255,PC=M[PC+65534&65535]|(M[PC+65535&65535]<<8),SP=SP+65534));; # CPE nnnn
244)((PC=PC+2&65535,F&128)) ||((M[SP+65535&65535]=PC>>8,M[SP+65534&65535]=PC&255,PC=M[PC+65534&65535]|(M[PC+65535&65535]<<8),SP=SP+65534));; # CP nnnn
252)((PC=PC+2&65535,F&128)) &&((M[SP+65535&65535]=PC>>8,M[SP+65534&65535]=PC&255,PC=M[PC+65534&65535]|(M[PC+65535&65535]<<8),SP=SP+65534));; # CM nnnn

198)((_Z=M[PC++],F=(A+_Z>>8)|((A%16+_Z%16)&16),A=A+_Z&255,F|=P[A]));; # ADI nn
206)((_Z=M[PC++]+F%2,F=(A+_Z>>8)|((A%16+_Z%16)&16),A=A+_Z&255,F|=P[A]));; # ACI nn
214)((_Z=M[PC++],F=(_Z>A)|((16+A%16-_Z%16)&16),A=A+512-_Z&255,F|=P[A]));; # SUI nn
222)((_Z=M[PC++]+F%2,F=(_Z>A)|((16+A%16-_Z%16)&16),A=A+512-_Z&255,F|=P[A]));; # SBI nn
230)((A&=M[PC++],F=P[A]));; # ANI nn
238)((A^=M[PC++],F=P[A]));; # XRI nn
246)((A|=M[PC++],F=P[A]));; # ORI nn
254)((_Z=M[PC++],F=(_Z>A)|((16+A%16-_Z%16)&16),F|=P[A+512-_Z&255]));; # CPI nn

199)((M[SP+65535&65535]=PC>>8,M[SP+65534&65535]=PC&255,SP+=65534,PC=0));; # RST 0
207)((M[SP+65535&65535]=PC>>8,M[SP+65534&65535]=PC&255,SP+=65534,PC=8));; # RST 1
215)((M[SP+65535&65535]=PC>>8,M[SP+65534&65535]=PC&255,SP+=65534,PC=16));; # RST 2
223)((M[SP+65535&65535]=PC>>8,M[SP+65534&65535]=PC&255,SP+=65534,PC=24));; # RST 3
231)((M[SP+65535&65535]=PC>>8,M[SP+65534&65535]=PC&255,SP+=65534,PC=32));; # RST 4
239)((M[SP+65535&65535]=PC>>8,M[SP+65534&65535]=PC&255,SP+=65534,PC=40));; # RST 5
247)((M[SP+65535&65535]=PC>>8,M[SP+65534&65535]=PC&255,SP+=65534,PC=48));; # RST 6
255)((M[SP+65535&65535]=PC>>8,M[SP+65534&65535]=PC&255,SP+=65534,PC=56));; # RST 7
esac
((PC&=65535,SP&=65535))
}
echo
echo 'HALTed the 8080 emulator'
echo 'Bye!'