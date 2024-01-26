*&-------------------------------------------------------*
*& Report ZHPROG002
*&-------------------------------------------------------*
*&  INTEGER VS NUMARIC VS PACKED DATA TYPE
*&-------------------------------------------------------*
REPORT ZHPROG002.

*&-------------------------------------------------------*
*&  INTEGER
*&-------------------------------------------------------*

DATA:   lv_integer TYPE I.  " Integer data type

WRITE: / 'Default value of integer lv_integer: ', lv_integer.     " Default value id 0

lv_integer = 230.       " assigning value
WRITE: / 'Assigned 230 to lv_integer, make it: ', lv_integer.     " Output: 230

lv_integer = '230.45'.  " assigninf floating point doesn't support
WRITE: / 'Assigned 230.45 to lv_integer, make it: ', lv_integer.  " Output: 230

lv_integer = -230.      " assigning negative value, supports
WRITE: / 'Assigned 230.45 to lv_integer, make it: ', lv_integer.  " Output: 230-

ULINE.                  " this creates a horizontal line
SKIP 2.

*&-------------------------------------------------------*
*&  NUMARIC DATA TYPE
*&-------------------------------------------------------*

DATA:   lv_numaric01 TYPE N.    " Numaric data type

WRITE: /  'Default value of Numaric data variable lv_numaric01: ', lv_numaric01.

lv_numaric01 = 250.             " assigning value, by default length is one
WRITE: / 'Assigned 250 to lv_numaric01, make it: ', lv_numaric01.      " Output: 2

DATA: lv_numaric02(2) TYPE N.   " Numaric data type with length

lv_numaric02 = 250.             " assigning value
WRITE: / 'Assigned 250 to lv_numaric02(2), make it: ', lv_numaric02.   " Output: 25

DATA: lv_numaric03(5) TYPE N.   " Numaric data type with length

lv_numaric03 = 250.             " assigning value
WRITE: / 'Assigned 250 to lv_numaric03(5), make it: ', lv_numaric03.   " Output: 00250

lv_numaric03 = -250.            " assigning negative value, doesn't support negative value
WRITE: / 'Re-assigned -250 to lv_numaric03, make it: ', lv_numaric03.  " Output: 00250

lv_numaric03 = '50.19'.         " assigning decimal value, ignores decimal, don't suport floating point value
WRITE: / 'Re-assigned 50.19 to lv_numaric03, make it: ', lv_numaric03. " Output: 05019

ULINE.                          " this creates a horizontal line
SKIP 2.

*&-------------------------------------------------------*
*&  PACKED DATA TYPE
*&-------------------------------------------------------*

DATA:   lv_packed01 TYPE P.             " Packed data type

lv_packed01 = 340.          " assigned integer value
WRITE: / 'Assigned 340 to lv_packed01, make it: ', lv_packed01.       " Output: 340

lv_packed01 = -340.         " assigned integer value
WRITE: / 'Assigned 340 to lv_packed01, make it: ', lv_packed01.       " Output: 340

lv_packed01 = '340.7'.      " assigned decimal value, it rounds the value
WRITE: / 'Assigned 340.7 to lv_packed01, make it: ', lv_packed01.     " Output: 341

lv_packed01 = '340.4'.      " assigned decimal value, it rounds the value
WRITE: / 'Assigned 340.4 to lv_packed01, make it: ', lv_packed01.     " Output: 340

DATA:   lv_packed02 TYPE P DECIMALS 2.  " Packed data type with decimal

lv_packed02 = '340.74'.     " assigned decimal value
WRITE: / 'Assigned 340.74 to lv_packed02, make it: ', lv_packed02.    " Output: 340.74

lv_packed02 = '340.747'.    " assigned decimal value, round off with decimal
WRITE: / 'Assigned 340.747 to lv_packed02, make it: ', lv_packed02.   " Output: 340.75

lv_packed02 = -350.         " assigned negative value, it supports it
WRITE: / 'Assigned 350 to lv_packed02, make it: ', lv_packed02.       " Output: 350.00-

ULINE.                      " this creates a horizontal line
SKIP 2.