*&-------------------------------------------------------*
*& Report ZHPROG001
*&-------------------------------------------------------*
*&  HELLO WORLD
*&-------------------------------------------------------*
REPORT ZHPROG001.

* this in how we write comment " and this is a inline comment

*&-------------------------------------------------------*
*&     WRITE STATEMENT, CHAIN OPERATOR, NEWLINE, 
*&     TABS/GAPS, SKIP, RESERVED CHARACTERS
*&-------------------------------------------------------*

WRITE 'Hello World'.

WRITE 'first line'.
WRITE 'second line'. " will print in same line as above

" chaining and newline operator
WRITE:   'This is how we use chain operator', / 'to write multiple statements in one go'.

" can be write in two lines as well
WRITE:   'or we can also write same',
       / 'in actual two lines'.

" using "skil" for making gap between lines 
WRITE 'to display gap between lines, we use skip'.
SKIP 2.

WRITE 'so this line will be shown after two line gap'.
SKIP 2.

" making space before starting line
WRITE:10 'this will leave 10 characters before start of statement.'.
SKIP 2.

* reserve charecters
WRITE:3(5) 'Hello World'.    " this reserves only 5 characters of the string so Output: 'Hello'
SKIP 2.

* to use reserve character with newline in chaining statements
WRITE:5(4) 'This is how', /5(7) 'game is played', /5(7) 'awesome if you play more.'.
SKIP 2.

* same as above
WRITE:5(4)   'This is how', 
       /5(7) 'game is played',
       /5(7) 'awesome if you play more.'.

ULINE. " this will create a line

*&--------------------------------------------------*
*&            COLOR CODE
*&--------------------------------------------------*
*      COL_BACKGROUND       0      GUI-dependent
*      COL_HEADING          1      Gray-Blue
*      COL_NORMAL           2      Light-Gray
*      COL_TOTAL            3      Yellow
*      COL_KEY              4      Blue-Green
*      COL_POSITIVE         5      Green
*      COL_NEGATIVE         6      Red
*      COL_GROUP            7      Orange
*&-------------------------------------------------*

" FORMAT COLOR COL_HEADING INTENSIFIED OFF.
" WRITE: 'Write and highlight', / 'all your strings', / 'with awesome colors.'.
" FORMAT COLOR OFF.

" FORMAT COLOR 1 INTENSIFIED OFF.
" WRITE: 'Write and highlight', / 'all your strings', / 'with awesome colors.'.
" FORMAT COLOR OFF.

" WRITE:   'This is how', COLOR COL_HEADING,
"        / 'We color each string', COLOR COL_POSITIVE,
"        / 'with separate colors', COLOR COL_NEGATIVE.

" ULINE. " this will create a line

*&-------------------------------------------------------*
*&     SYSTEM FIELDS
*&-------------------------------------------------------*


WRITE:  / 'CURRENT SERVER DATE: ', SY-DATUM,
        / 'CURRENT SERVER TIME: ', SY-UZEIT,
        / 'LOGGED-IN USER NAME: ', SY-UNAME.

ULINE. " this will create a line

*&-------------------------------------------------------*
*&     VARIABLES AND DATA TYPE
*&-------------------------------------------------------*

DATA   LV_VAR1 TYPE I.             " Integer
DATA   LV_VAR2 TYPE C.             " Character
DATA   LV_VAR3 TYPE STRING.        " String

WRITE :/ 'Default value of Integer is: ', LV_VAR1,      " Output: 0
       / 'Default value of Character is: ', LV_VAR2,    " Output: space
       / 'Default value of String is: ', LV_VAR3.       " Output: space

ULINE. " this will create a line

*&-------------------------------------------------------*
*&     ASSIGNING DEFAULT VALUE
*&-------------------------------------------------------*

DATA : LV_VAR4 TYPE I VALUE 5,
       LV_VAR5 TYPE C VALUE 'ABC',
       LV_VAR6 TYPE STRING VALUE 'Hello'.

WRITE :/ 'Default value of Integer is: ', LV_VAR4,      " Output: 5
       / 'Default value of Character is: ', LV_VAR5,    " Output: A
       / 'Default value of String is: ', LV_VAR6.       " Output: Hello

ULINE. " this will create a line

*&-------------------------------------------------------*
*&     CHARACTER LENGTH
*&-------------------------------------------------------*

DATA   LV_VAR7(3) TYPE C VALUE 'ABC'.                   " Defining character length

WRITE :/ 'Default value of Character is: ', LV_VAR7.    " Output: ABC

ULINE. " this will create a line

*&-------------------------------------------------------*
*&     ASSIGNGMENT OPERATOR
*&-------------------------------------------------------*

LV_VAR4 = 9.
LV_VAR5 = 'P'.
LV_VAR6 = 'Good Bye'.

WRITE :/ 'New value of LV_VAR4 is: ', LV_VAR4,    " Output: 9
       / 'New value of LV_VAR5 is: ', LV_VAR5,    " Output: P
       / 'New value of LV_VAR6 is: ', LV_VAR6.    " Output: Good Bye


*&-------------------------------------------------------*
*&     TEXT ALIGNMENT
*&-------------------------------------------------------*

DATA LV_VAR8 TYPE STRING VALUE 'abc'.

WRITE :/ 'Text align to left: ', LV_VAR8 LEFT-JUSTIFIED,       " left align
       / 'Text align to centre: ', LV_VAR8 CENTERED,           " center align
       / 'Text align to right:', LV_VAR8 RIGHT-JUSTIFIED.      " right align

ULINE. " this will create a line


*&-------------------------------------------------------*
*&     CONSTANTS: non modifiable value
*&-------------------------------------------------------*

CONSTANTS CV_VAR9 TYPE I VALUE 20.        " aligning value is required while declaration

WRITE :  'Constant Value of CV_VAR0: ', CV_VAR9.

ULINE. " this will create a line


*&-------------------------------------------------------*
*&     PARAMETERS: receive value from selection screen
*&-------------------------------------------------------*

PARAMETER:    P_DATA1 TYPE I,      " to receive integral value from selection screen.
              P_DATA2 TYPE C,      " to receive character value from selection screen.
              P_DATA3 TYPE String. " to receive string value from selection screen.

WRITE :/ 'P_DATA1 Value from input is: ', P_DATA1,
       / 'P_DATA2 Value from input is: ', P_DATA2,
       / 'P_DATA3 Value from input is: ', P_DATA3.

ULINE. " this will create a line      