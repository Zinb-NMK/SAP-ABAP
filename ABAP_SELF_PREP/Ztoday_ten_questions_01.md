REPORT ztoday_ten_questions_01.

"1. Input employee name and salary, display both.

PARAMETERS :
    lv_emp_name TYPE c LENGTH 20,
    lv_emp_salary TYPE p DECIMALS 2.


WRITE : 
    / 'Employee Name: ', lv_emp_name,
    / 'Employee Salary: ', lv_emp_salary.

"2. Input two numbers and display subtraction.

PARAMETERS :
    lv_num1 TYPE p DECIMALS 2,
    lv_num2 TYPE p DECIMALS 2.

lv_result = lv_num1 - lv_num2.

WRITE : 
    / 'Subtraction: ', lv_result.



"3. Input two numbers and display multiplication.

PARAMETERS :
    lv_num1 TYPE i,
    lv_num2 TYPE i.
DATA lv_mul TYPE i.



lv_mul = lv_num1 * lv_num2.


WRITE : / 'Multiplication: ', lv_mul.



* Input two numbers and display division.
DATA a TYPE i.
DATA b TYPE i.
DATA c TYPE i.

a = 20.
b = 2.
c = a / b.

WRITE : / 'DIVISION: ',c.

* Input marks of 3 subjects and display total marks.
DATA mark1 TYPE i.
DATA mark2 TYPE i.
DATA mark3 TYPE i.
DATA total_mark TYPE i.

mark1  = 89.
mark2 = 79.
mark3 = 98.

total_mark = mark1 + mark2 + mark3.

WRITE : / 'Total Marks: ', total_mark.


* Input marks of 3 subjects and display average.
PARAMETERS :
    mark1 TYPE i,
    mark2 TYPE i,
    mark3 TYPE i.

DATA average TYPE i.

average = (mark1 + mark2 + mark3) / 3.

WRITE : / 'Average Marks: ', average.
 
* Input radius and calculate area of circle.
DATA radius TYPE f.
DATA area TYPE f.

radius = 5.0.
area = 3.14 * radius * radius.

WRITE : / 'AREA OF CIRCLE: ', area.



* Input a number and display its square.
PARAMETERS :
    lv_num TYPE i.

DATA lv_square TYPE i.

lv_square = lv_num * lv_num.

WRITE : / 'SQUARE: ', lv_square.




* Input a number and display its cube.

PARAMETERS:
    lv_num TYPE i.

DATA cube TYPE i.

cube = lv_num * lv_num * lv_num.


WRITE : / 'CUBE: ', cube.



* Input first name and last name, display full name.

PARAMETERS:
    first_name TYPE c LENGTH 20 OBLIGATORY,
    last_name TYPE c LENGTH 20.

DATA full_name TYPE c LENGTH 40.

CONCATENATE first_name last_name INTO full_name SEPARATED BY space.

WRITE : / 'FULL NAME: ', full_name.