**********************************
* Model created by               *
*   Uni.Dipl.-Ing. Arpad Buermen *
*   arpad.burmen@ieee.org        *
* Copyright:                     *
*   Thomatronik GmbH, Germany    *
*   info@thomatronik.de          *
**********************************
* April 2001
*   SPICE3
* Bidirectional
.SUBCKT smcj36ca 1 2
DF 9 90 DFMOD TEMP = 25
.MODEL DFMOD D N = 2 IS = 5E-008 RS = 0.00620179
+ EG = 1.11 XTI = 3
+ CJO = 1.048E-009 VJ = 6.78028 M = 0.35 FC = 0.5
+ TT = 1E-008 TNOM = 25
* Leakage
RLF 9 90 3.82894E+007 RLMOD
RLR 1 9 3.82894E+007 RLMOD
.MODEL RLMOD R TC1 = 0 TC2 = 0 TNOM = 25
* Breakdown
RBD 90 4 0.585662
EBD 4 3 10 20 1
DBD 3 9 DBDMOD TEMP = 25
* Reverse
DR 9 1 DFMOD TEMP = 25
RBDR 1 94 0.585662
EBDR 94 93 10 20 1
DBDR 93 9 DBDMOD TEMP = 25
.MODEL DBDMOD D IS = 1E-015 N = 0.5 TNOM = 25
IBVC 0 10 0.001
RBVC 10 0 42100 RBVCMOD
.MODEL RBVCMOD R TC1 = 0.0009 TNOM = 25
RBDX 20 23 0.585662
DBVC 23 22 DBDMOD TEMP = 25
DBVF 22 0 DFMOD TEMP = 25
IBVD 0 20 0.001
L1 90 2 1E-015
.ENDS
