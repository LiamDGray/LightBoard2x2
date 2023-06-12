** Imported from: C:\Users\Liam\Documents\Zetex Circuit Simulator\library\smcj36ca.txt
.SUBCKT smcj36ca 1 2
DF 9 90 DFMOD TEMP = 25
.MODEL DFMOD D N = 2 IS = 5E-008 RS = 0.00620179
+ EG = 1.11 XTI = 3
+ CJO = 1.048E-009 VJ = 6.78028 M = 0.35 FC = 0.5
+ TT = 1E-008 TNOM = 25
* Leakage
RLF 9 90 3.82894E+007 RLMOD
RLR 1 9 3.82894E+007 RLMOD
.MODEL RLMOD RES TC1 = 0 TC2 = 0 T_MEASURED = 25
* Breakdown
RBD 90 4 0.585662
EBD 4 3 10 20 1
DBD 3 9 DBDMOD TEMP = 25
* Reverse
DR 9 1 DFMOD TEMP = 25
RBDR 1 94 0.585662
EBDR 94 93 10 20 1
DBDR 93 9 DBDMOD TEMP = 25
.MODEL DBDMOD D IS = 1E-015 N = 0.5 T_MEASURED = 25
IBVC 0 10 0.001
RBVC 10 0 42100 RBVCMOD
.MODEL RBVCMOD RES TC1 = 0.0009 T_MEASURED = 25
RBDX 20 23 0.585662
DBVC 23 22 DBDMOD TEMP = 25
DBVF 22 0 DFMOD TEMP = 25
IBVD 0 20 0.001
L1 90 2 1E-015
.ENDS

** Imported from: C:\Users\Liam\Documents\Zetex Circuit Simulator\library\DIODE_ST_10.lib.txt
.MODEL BAT20JFILM D IS=191.05E-9 N=.97065 RS=.14831 IKF=402.03 CJO=68.280E-12
+ M=.46842 VJ=.3905 ISR=2.1080E-6 NR=4.9950 EG=.69 XTI=2 FC=0.5 TT=0
*$
*******************************************************************
* Model name       : BAT30JFILM
* Description      : Small Signal Schottky Diode
* Package type     : SOD-323
*******************************************************************

** Imported from: C:\Users\Liam\Documents\Zetex Circuit Simulator\library\LUXEON_Rebel_ES_H_and_5630_diode_models.txt
.model LXML-PWC2-VFBin_R D(Is=5.6664E-17 Rs=0.1919 N=2.9519 mfg=Lumileds type=LED)

** Imported from: C:\Users\Liam\Documents\Zetex Circuit Simulator\library\B340A.txt
.MODEL DI_B340A D  ( IS=9.90n RS=14.0m BV=40.0 IBV=500u
+ CJO=464p  M=0.333 N=0.775 TT=7.20n )

