﻿$PBExportHeader$n_cst_l1.sru
forward
global type n_cst_l1 from nonvisualobject
end type
end forward

global type n_cst_l1 from nonvisualobject
end type
global n_cst_l1 n_cst_l1

type variables

end variables

on n_cst_l1.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_l1.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

