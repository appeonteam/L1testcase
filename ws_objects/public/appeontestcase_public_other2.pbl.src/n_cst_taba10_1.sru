﻿$PBExportHeader$n_cst_taba10_1.sru
forward
global type n_cst_taba10_1 from nonvisualobject
end type
end forward

global type n_cst_taba10_1 from nonvisualobject
end type
global n_cst_taba10_1 n_cst_taba10_1

type variables
n_cst_taba10_1  iuo_taba10
end variables

on n_cst_taba10_1.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_taba10_1.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

