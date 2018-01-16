$PBExportHeader$bhj.srw
forward
global type bhj from window
end type
type tv_1 from treeview within bhj
end type
end forward

global type bhj from window
integer width = 3959
integer height = 1648
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
tv_1 tv_1
end type
global bhj bhj

on bhj.create
this.tv_1=create tv_1
this.Control[]={this.tv_1}
end on

on bhj.destroy
destroy(this.tv_1)
end on

type tv_1 from treeview within bhj
integer x = 590
integer y = 364
integer width = 549
integer height = 476
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
long picturemaskcolor = 536870912
long statepicturemaskcolor = 536870912
end type

