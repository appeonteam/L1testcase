﻿$PBExportHeader$n_cst_uso306_autouo.sru
forward
global type n_cst_uso306_autouo from nonvisualobject
end type
end forward

global type n_cst_uso306_autouo from nonvisualobject autoinstantiate
end type

type variables
String is_str = "Create"
end variables

on n_cst_uso306_autouo.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_uso306_autouo.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

