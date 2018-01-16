﻿$PBExportHeader$n_errobj3_l2.sru
forward
global type n_errobj3_l2 from n_errobj3
end type
end forward

global type n_errobj3_l2 from n_errobj3
end type
global n_errobj3_l2 n_errobj3_l2

forward prototypes
public subroutine of_custom01 ()
end prototypes

public subroutine of_custom01 ();gs_output2 = "Descendant error object of_custom01 function triggered."
end subroutine

on n_errobj3_l2.create
call super::create
end on

on n_errobj3_l2.destroy
call super::destroy
end on

event constructor;call super::constructor;

gs_output2 = "Descendant constructor event triggered."
end event

event destructor;call super::destructor;

gs_output2 = "Descendant destructor event triggered."
end event

event ue_custom01;call super::ue_custom01;gs_output2 = "Descendant ue_custom01 event triggered."
end event

