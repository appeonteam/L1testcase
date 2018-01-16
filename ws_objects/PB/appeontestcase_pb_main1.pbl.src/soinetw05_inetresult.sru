﻿$PBExportHeader$soinetw05_inetresult.sru
forward
global type soinetw05_inetresult from internetresult
end type
end forward

global type soinetw05_inetresult from internetresult
end type
global soinetw05_inetresult soinetw05_inetresult

type variables
window iw_parent
end variables

forward prototypes
public subroutine of_getparent (window aw_window)
public function integer internetdata (blob data)
end prototypes

public subroutine of_getparent (window aw_window);//
iw_parent = aw_window
end subroutine

public function integer internetdata (blob data);//Return iw_parent.dynamic wf_process_result(data)
return 1
end function

on soinetw05_inetresult.create
call super::create
TriggerEvent( this, "constructor" )
end on

on soinetw05_inetresult.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

