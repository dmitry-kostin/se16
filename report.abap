*&---------------------------------------------------------------------*
*& Report  ZTEST_12
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT  ZTEST_12.
data tab type  SE16N_SELTAB occurs 0.
data line type SE16N_SELTAB.
*
**line-FIELD  = 'OBJECT'.
**line-SIGN   = 'I'.
**line-OPTION = 'EQ'.
**line-LOW    = 'RF_BELEG'.
**append line to tab.
**
*line-FIELD  = 'KTOPL'.
*line-SIGN   = 'I'.
*line-OPTION = 'EQ'.
*line-LOW    = 'GPNF'.
*append line to tab.
**
*line-FIELD  = 'WAERS'.
*line-SIGN   = 'I'.
*line-OPTION = 'CP'.
*line-LOW    = 'UE*'.
*append line to tab.
**
**line-FIELD  = 'BELNR'.
**line-SIGN   = 'I'.
**line-OPTION = 'EQ'.
**line-LOW    = '9920000013'.
**append line to tab.
**line-LOW    = '9920000011'.
**append line to tab.

*line-FIELD  = 'KTOSL'.
*line-SIGN   = 'I'.
*line-OPTION = 'EQ'.
*line-LOW    = 'HRT'.
*append line to tab.
*
*line-FIELD  = 'KTOPL'.
*line-SIGN   = 'I'.
*line-OPTION = 'EQ'.
*line-LOW    = 'GPNF'.
*append line to tab.

*line-FIELD  = 'PGMID'.
*line-SIGN   = 'I'.
*line-OPTION = 'EQ'.
*line-LOW    = 'R3TR'.
*append line to tab.
*
*line-FIELD  = 'OBJECT'.
*line-SIGN   = 'I'.
*line-OPTION = 'EQ'.
*line-LOW    = 'FUGR'.
*append line to tab.
*
line-FIELD  = 'OBJ_NAME'.
line-SIGN   = 'I'.
line-OPTION = 'EQ'.
line-LOW    = 'Z123456'.
append line to tab.

call function 'SE16N_INTERFACE'
exporting
     I_TAB    = 'TADIR'
     I_EDIT   = 'X'
*     I_SAPEDIT = 'X'
*"     VALUE(I_NO_TXT) TYPE  CHAR1 DEFAULT ' '
     I_MAX_LINES = '50000'
*"     VALUE(I_LINE_DET) TYPE  CHAR1 DEFAULT ' '
*"     VALUE(I_DISPLAY) TYPE  CHAR1 DEFAULT 'X'
*"     VALUE(I_CLNT_SPEZ) TYPE  CHAR1 DEFAULT ' '
*"     VALUE(I_CLNT_DEP) TYPE  CHAR1 DEFAULT ' '
*"     VALUE(I_VARIANT) TYPE  SLIS_VARI DEFAULT ' '
*"     VALUE(I_OLD_ALV) TYPE  CHAR1 DEFAULT ' '
*"     VALUE(I_CHECKKEY) TYPE  CHAR1 DEFAULT ' '
*"     VALUE(I_TECH_NAMES) TYPE  CHAR1 DEFAULT ' '
*"     VALUE(I_CWIDTH_OPT_OFF) TYPE  CHAR1 DEFAULT ' '
*"     VALUE(I_SCROLL) TYPE  CHAR1 DEFAULT ' '
*"     VALUE(I_NO_CONVEXIT) TYPE  CHAR1 DEFAULT ' '
*"     VALUE(I_LAYOUT_GET) TYPE  CHAR1 DEFAULT ' '
*"     VALUE(I_ADD_FIELD) TYPE  CHAR40 OPTIONAL
*"     VALUE(I_ADD_FIELDS_ON) TYPE  CHAR1 OPTIONAL
*"     VALUE(I_UNAME) TYPE  SY-UNAME OPTIONAL
*"  EXPORTING
*"     VALUE(E_LINE_NR) TYPE  SYTABIX
*"     VALUE(E_DREF)
  TABLES
      IT_SELFIELDS = tab[].
*"      IT_OUTPUT_FIELDS STRUCTURE  SE16N_OUTPUT OPTIONAL
*"      IT_OR_SELFIELDS TYPE  SE16N_OR_T OPTIONAL
*"      IT_CALLBACK_EVENTS TYPE  SE16N_EVENTS OPTIONAL
*"      IT_ADD_UP_CURR_FIELDS STRUCTURE  SE16N_OUTPUT OPTIONAL
*"      IT_ADD_UP_QUAN_FIELDS STRUCTURE  SE16N_OUTPUT OPTIONAL
*"  EXCEPTIONS
*"      NO_VALUES
