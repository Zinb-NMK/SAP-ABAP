REPORT zmy_learn_01.

* Input price and quantity, display total amount.

PARAMETERS : 
    p_price TYPE i,
    p_quan TYPE i DEFAULT 1.
DATA total_amount TYPE i.

total_amount = p_price * p_quan.

WRITE : 'Total Amount: ',total_amount.


* Input basic salary and bonus, display final salary.

PARAMETERS :
    p_base TYPE p DECIMALS 2,
    p_bonus TYPE p DECIMALS 2 DEFAULT 0.

DATA final_salary TYPE p DECIMALS 2.

final_salary = p_base + p_bonus.

WRITE : / 'final salary: ', final_salary.
