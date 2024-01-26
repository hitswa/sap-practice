*&-------------------------------------------------------*
*& Report ZHPROG003
*&-------------------------------------------------------*
*&  STRING OPERATIONS
*&-------------------------------------------------------*
REPORT ZHPROG003.

*&-------------------------------------------------------*
*&  CONDENSE - Remove leading and trailing space
*&-------------------------------------------------------*

DATA    : lv_string01 TYPE STRING VALUE '   This is a string with leading, trailing and in between             spaces    '.

WRITE   : / 'Before concense: ' ,   lv_string01.

CONDENSE lv_string01.

WRITE   : / 'After Concense: ', lv_string01.

ULINE.                  " this creates a horizontal line
SKIP 2.

*&-------------------------------------------------------*
*&  CONCATENATE - to combine strings
*&-------------------------------------------------------*

DATA    : lv_string02 TYPE STRING VALUE 'One',
          lv_string03 TYPE STRING VALUE ' Two',
          lv_string04 TYPE STRING VALUE ' Three'.

DATA    : lv_string05.

CONCATENATE lv_string02 lv_string03 lv_string04 INTO lv_string05 SEPARATED BY ','.

WRITE   : / 'After Concatinate: ', lv_string05. " OUTPUT: One , Two , Three

ULINE.                  " this creates a horizontal line
SKIP 2.

*&-------------------------------------------------------*
*&  SPLIT - split string into substring
*&-------------------------------------------------------*

DATA    : lv_string06 TYPE STRING VALUE 'One, Two, Three'.

DATA    : lv_string07 TYPE STRING,
          lv_string08 TYPE STRING,
          lv_string09 TYPE STRING.

SPLIT lv_string06 AT ',' INTO lv_string07 lv_string08 lv_string09.

WRITE   : / 'Sub-string one of string: ', lv_string07,
          / 'Sub-string two of string: ', lv_string08,
          / 'Sub-string three of string: ', lv_string09.

ULINE.                  " this creates a horizontal line
SKIP 2.

*&-------------------------------------------------------*
*&  STRLAN - to tell length of the string
*&-------------------------------------------------------*

DATA    : lv_string10 TYPE STRING VALUE 'Hello World',
          lv_integer01 TYPE I.   " Integer to hold length of string

lv_integer01 = STRLEN( lv_string10 ).

WRITE   : / 'String for which we are trying to find length of: ', lv_integer01,
          / 'Length of string is: ', lv_integer01.

ULINE.                  " this creates a horizontal line
SKIP 2.

*&-------------------------------------------------------*
*&  TRANSLATE - to translate uppercase to lowercase and vice versa
*&-------------------------------------------------------*

DATA    : lv_string11 TYPE STRING VALUE 'HELLO'.

WRITE   : / 'Before translating: ', lv_string11.

TRANSLATE lv_string11 TO LOWER CASE.

WRITE   : / 'After translating uppercase to lowercase: ', lv_string11.

TRANSLATE lv_string11 TO UPPER CASE.

WRITE   : / 'After translating lowercase back to uppercase: ', lv_string11.

ULINE.                  " this creates a horizontal line
SKIP 2.

*&-------------------------------------------------------*
*&  FIND - find suub string within a string
*&-------------------------------------------------------*

DATA    : lv_string12 TYPE STRING VALUE 'Hello user, Welcome to this world',
          lv_string13 TYPE STRING VALUE 'Welcome'.

DATA    : lv_integer02 TYPE I.  " to hold the index value of substring we are finding

FIND lv_string13 IN lv_string12 MATCH OFFSET lv_integer02.

WRITE   : / 'String in which we are trying to find substring: ', lv_string12,
          / 'Sub string we are trying to find: ', lv_string13,
          / 'Index value of substring is: ', lv_integer02.

ULINE.                  " this creates a horizontal line
SKIP 2.

*&------------------- IF-ELSE-ENDIF -----------------------*

DATA    : lv_string14 TYPE STRING VALUE 'Hello user, Welcome to this world'.

FIND 'user' IN lv_string14.

" using condition
IF SY-SUBRC = 0.
    WRITE   : / 'found'.
ELSE.
    WRITE   : / 'not found'.
ENDIF.

ULINE.                  " this creates a horizontal line
SKIP 2.

*&-------------------------------------------------------*
*&  REPLACE - replace all occurance of substring with another string
*&-------------------------------------------------------*

DATA    : lv_string15 TYPE STRING VALUE 'Hello user, Welcome to this world',
          lv_string16 TYPE STRING VALUE 'user',   " Integer to hold substring to replace with
          lv_string17 TYPE STRING VALUE 'hitesh'.   " Integer to hold substring to replace by

REPLACE lv_string16 IN lv_string15 WITH lv_string17.
" REPLACE FIRST OCCURRENCE OF lv_string16 IN lv_string15 WITH lv_string17. " <= to replace first occurance
" REPLACE ALL OCCURRENCE OF lv_string16 IN lv_string15 WITH lv_string17. " <= to replace all occurance

WRITE   : / 'String in which we are trying to replace substring: ', lv_string15,
          / 'Sub string we are trying to replace with: ', lv_string16,
          / 'Sub string we are trying to replace by: ', lv_string17,
          / 'String after replace: ', lv_string15.

ULINE.                  " this creates a horizontal line
SKIP 2.

*&-------------------------------------------------------*
*&  SHIFT
*&-------------------------------------------------------*

DATA    : lv_chatacter01(20) TYPE C VALUE '1234567890'.

WRITE   : / 'Before shift: ', lv_chatacter01.   " OUTPUT: 1234567890

SHIFT lv_chatacter01 LEFT BY 5 PLACES.

WRITE   : / 'After left shift by 5 places: ', lv_chatacter01.   " OUTPUT: 67890_______________

DATA    : lv_chatacter02(20) TYPE C VALUE '1234567890'.

SHIFT lv_chatacter02 RIGHT BY 2 PLACES.

WRITE   : / 'After right shift again by 2 places: ', lv_chatacter02.   " OUTPUT: __1234567890________

DATA    : lv_chatacter03(20) TYPE C VALUE '1234567890'.

SHIFT lv_chatacter03 CIRCULAR BY 2 PLACES.

WRITE   : / 'After circular shift again by 2 places: ', lv_chatacter03.   " OUTPUT: 34567890__________12

ULINE.                  " this creates a horizontal line
SKIP 2.
