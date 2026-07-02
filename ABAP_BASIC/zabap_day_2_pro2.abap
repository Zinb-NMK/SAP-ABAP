* THIS IS A SIMPLE ADD USING PARAMETERS IN ABAP
REPORT zPARAMETERS_abap_day_2_pro2.

" ADDING TWO NUMS USING PARAMETERS IN ABAP

PARAMETERS : 
    lv_num1 TYPE i,
    lv_num2 TYPE i.
DATA lv_add TYPE i.

* WE WILL ADD 
lv_add = lv_num1 + lv_num2.

WRITE lv_add.


* HERE WE ARE USING OBLIGATORY PARAMETERS IN ABAP

PARAMETERS :
    lv_num1 TYPE i OBLIGATORY,
    lv_num2 TYPE i OBLIGATORY.

DATA lv_add TYPE i.

lv_add = lv_num1 + lv_num2.

WRITE lv_add.


PARAMETERS : 
    lv_name TYPE C LENGTH 20 OBLIGATORY,
    lv_age TYPE i OBLIGATORY,
    lv_gender TYPE C LENGTH 1 OBLIGATORY.

WRITE : 
    / 'NAME: ', lv_name,
    / 'AGE: ', lv_age,
    / 'GENDER: ', lv_gender.