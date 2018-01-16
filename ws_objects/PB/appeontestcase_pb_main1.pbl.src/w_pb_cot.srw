$PBExportHeader$w_pb_cot.srw
forward
global type w_pb_cot from w_base_case
end type
type cb_1 from commandbutton within w_pb_cot
end type
type n_errorobject3_1 from n_errorobject3 within w_pb_cot
end type
end forward

global type w_pb_cot from w_base_case
cb_1 cb_1
n_errorobject3_1 n_errorobject3_1
end type
global w_pb_cot w_pb_cot

type variables
error ie_err
end variables

forward prototypes
public subroutine of_testcase_point_module1 ()
end prototypes

public subroutine of_testcase_point_module1 ();string 		ls_array[], ls_item, ls_result, ls_temp, ls_temp2, ls_null
long			ll_bound, i , ll_tmp, ll_null, ll_position
string 		ls_file, ls_fullname,ls_return
integer 		li_rtn, li_col,li_parm1, li_Rtn07,li_parm2,li_InitVal01,li_InitVal02
boolean		lbn_flag,lbn_temp
Date			ld_date
Datetime		ldt_datatime
time			lt_time
Decimal		ldc_data
string 		ls_Rtn01,ls_Rtn02,ls_parm1,ls_parm2,ls_Rtn08,ls_InitVal03,ls_InitVal04,ls_InitVal05,ls_InitVal06

n_errorobject error1
n_errobj1_l2 error2
n_errobj2_l2 error3
n_errobj3_l2 error4
n_errorobject3 error5 



is_log = ''
ls_result = ''
ll_bound =0 
setnull(ll_null)
SetNull(ls_null)


ls_array[Upperbound(ls_array) + 1 ] = "error object constructor event"
ls_array[Upperbound(ls_array) + 1 ] = "error object destructor event"
ls_array[Upperbound(ls_array) + 1 ] = "error object custom event"
ls_array[Upperbound(ls_array) + 1 ] = "Ancester error object constructor event"
ls_array[Upperbound(ls_array) + 1 ] = "Ancester error object destructor event"
ls_array[Upperbound(ls_array) + 1 ] = "Ancester error object custom event"
ls_array[Upperbound(ls_array) + 1 ] = "Descendant error object constructor event"
ls_array[Upperbound(ls_array) + 1 ] = "Descendant error object destructor event"
ls_array[Upperbound(ls_array) + 1 ] = "Descendant error object custom event"
ls_array[Upperbound(ls_array) + 1 ] = "Ancester&Descendant error object constructor event"
ls_array[Upperbound(ls_array) + 1 ] = "Ancester&Descendant error object destructor event"
ls_array[Upperbound(ls_array) + 1 ] = "Ancester&Descendant error object custom event"
ls_array[Upperbound(ls_array) + 1 ] = "error object classname function"
ls_array[Upperbound(ls_array) + 1 ] = "error object classname function2"
ls_array[Upperbound(ls_array) + 1 ] = "error object getparent function"
ls_array[Upperbound(ls_array) + 1 ] = "error object postevent function"
ls_array[Upperbound(ls_array) + 1 ] = "error object triggerevent function"
ls_array[Upperbound(ls_array) + 1 ] = "error object typeof function"
ls_array[Upperbound(ls_array) + 1 ] = "error object default value of Line"
ls_array[Upperbound(ls_array) + 1 ] = "error object default value of Number"
ls_array[Upperbound(ls_array) + 1 ] = "error object default value of Object"
ls_array[Upperbound(ls_array) + 1 ] = "error object default value of ObjectEvent"
ls_array[Upperbound(ls_array) + 1 ] = "error object default value of Text"
ls_array[Upperbound(ls_array) + 1 ] = "error object default value of WindowMenu"
ls_array[Upperbound(ls_array) + 1 ] = "error object max value of Line"
ls_array[Upperbound(ls_array) + 1 ] = "error object edge value of Line"
ls_array[Upperbound(ls_array) + 1 ] = "error object edge value2 of Line"
ls_array[Upperbound(ls_array) + 1 ] = "error object max value of Number"
ls_array[Upperbound(ls_array) + 1 ] = "error object edge value of Number"
ls_array[Upperbound(ls_array) + 1 ] = "error object edge value2 of Number"
ls_array[Upperbound(ls_array) + 1 ] = "error object standard name of Object"
ls_array[Upperbound(ls_array) + 1 ] = "error object nonstandard name of Object"
ls_array[Upperbound(ls_array) + 1 ] = "error object standard name of ObjectEvent"
ls_array[Upperbound(ls_array) + 1 ] = "error object nonstandard name of ObjectEvent"
ls_array[Upperbound(ls_array) + 1 ] = "error object value of Text"
ls_array[Upperbound(ls_array) + 1 ] = "error object standard name of WindowMenu"
ls_array[Upperbound(ls_array) + 1 ] = "error object nonstandard name of WindowMenu"


ll_bound  = Upperbound(ls_array)
for i = 1 to ll_bound
	Yield ( )
	ls_item = ls_array[i]
	of_recordtestpoint(is_testcasename+ " "+ ls_array[i]+" today: "+string(today())+" now:"+string(now())+" ~r~n")	
	is_log = ''
	ls_temp = ''
	li_rtn = 0 
	ls_temp2 = ''
	ll_tmp = 0
	lbn_flag = false
	choose case lower(ls_item)
		case lower("error object constructor event")	//测试Constructor事件的触发，不使用继承
			error1=create n_errorobject
			gs_output = ''
			error1.TriggerEvent(Constructor!)
			ls_return = gs_output
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = "Error object constructor event triggered.")
			destroy error1
		
		case lower("error object destructor event")		//测试Destructor事件的触发，不使用继承
			error1=create n_errorobject
			gs_output = ''
			error1.TriggerEvent(Destructor!)
			ls_return = gs_output
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = "Error object destructor event triggered.")
			destroy error1
			
		case lower("error object custom event")			//测试用户自定义事件的触发，不使用继承
			error1=create n_errorobject
			gs_output = ''
			error1.TriggerEvent("ue_custom01")
			ls_return = gs_output
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = "Error object ue_custom01 event triggered.")
			destroy error1
			
		case lower("Ancester error object constructor event")	//测试Constructor事件的触发，使用继承，祖先有代码后代无代码
			error2=create n_errobj1_l2
			gs_output = ''
			error2.TriggerEvent(Constructor!)
			ls_return = gs_output
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = "Ancester error object constructor event triggered.")
			destroy error2
			
		case lower("Ancester error object destructor event")		//测试Destructor事件的触发，使用继承，祖先有代码后代无代码
			error2=create n_errobj1_l2
			gs_output = ''
			error2.TriggerEvent(Destructor!)
			ls_return = gs_output
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = "Ancester error object destructor event triggered.")
			destroy error2
			
		case lower("Ancester error object custom event")		//测试用户自定义事件的触发，使用继承，祖先有代码后代无代码
			error2=create n_errobj1_l2
			gs_output = ''
			error2.TriggerEvent("ue_custom01")
			ls_return = gs_output
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = "Ancester error object ue_custom01 event triggered.")
			destroy error2
			
		case lower("Descendant error object constructor event")		//测试Constructor事件的触发，使用继承，后代有代码祖先无代码
			error3=create n_errobj2_l2
			gs_output = ''
			error3.TriggerEvent(Constructor!)
			ls_return = gs_output
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = "Descendant error object constructor event triggered.")
			destroy error3
			
		case lower("Descendant error object destructor event")		//测试Destructor事件的触发，使用继承，后代有代码祖先无代码
			error3=create n_errobj2_l2
			gs_output = ''
			error3.TriggerEvent(Destructor!)
			ls_return = gs_output
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = "Descendant error object destructor event triggered.")
			destroy error3
			
		case lower("Descendant error object custom event")			//测试用户自定义事件的触发，使用继承，后代有代码祖先无代码
			error3=create n_errobj2_l2
			gs_output = ''
			error3.TriggerEvent("ue_custom01")
			ls_return = gs_output
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = "Descendant error object ue_custom01 event triggered.")
			destroy error3
			
		case lower("Ancester&Descendant error object constructor event")	//测试Constructor事件的触发，使用继承，祖先和后代均有代码
			error4=create n_errobj3_l2
			gs_output = ''
			gs_output2 = ''
			error4.TriggerEvent(Constructor!)
			ls_return = gs_output + gs_output2
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = "Ancester constructor event triggered.Descendant constructor event triggered.")
			destroy error4
			
		case lower("Ancester&Descendant error object destructor event")		//测试Destructor事件的触发，使用继承，祖先和后代均有代码
			error4=create n_errobj3_l2
			gs_output = ''
			gs_output2 = ''
			error4.TriggerEvent(Destructor!)
			ls_return = gs_output + gs_output2
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = "Ancester destructor event triggered.Descendant destructor event triggered.")
			destroy error4
			
		case lower("Ancester&Descendant error object custom event")		//测试用户自定义事件的触发，使用继承，祖先和后代均有代码
			error4=create n_errobj3_l2
			gs_output = ''
			gs_output2 = ''
			error4.TriggerEvent("ue_custom01")
			ls_return = gs_output + gs_output2
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = "Ancester ue_custom01 event triggered.Descendant ue_custom01 event triggered.")
			destroy error4
			
		case lower("error object classname function")     //测试Classname函数，使用controlname.Classname ( )语法
			error5=create n_errorobject3			
			ls_Rtn01 = Error.Classname()
			ls_return = "Error.Classname()=" + ls_Rtn01
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = "Error.Classname()=error")
			destroy error5
			
		case lower("error object classname function2")    //测试Classname函数，使用ClassName ( variable )语法
			error5=create n_errorobject3			
			ls_Rtn02 = Classname(error)
			ls_return = "Classname(error)=" + ls_Rtn02
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = "Classname(error)=error")
			destroy error5
			
		case lower("error object getparent function")    //测试GetParent函数			
			Window	win_obj
			win_obj = n_ErrorObject3_1.GetParent()
			ls_return = "n_ErrorObject3_1.GetParent()=" + win_obj.ClassName()
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = "n_ErrorObject3_1.GetParent()=w_pb_cot")		
			
		case lower("error object postevent function")    //测试PostEvent函数			
			n_errorObject3  n_errorObject3_4
			n_errorObject3_4 = Create n_errorObject3
			gs_output2 = ''
			lbn_temp=n_errorObject3_4.PostEvent("ue_custom01")
			//post wf_output(as_testpoint)			
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and lbn_temp=true)
			Destroy n_errorObject3_4
			
		case lower("error object triggerevent function")    //测试TriggerEvent函数
			n_errorObject3  n_errorObject3_5
			n_errorObject3_5 = Create n_errorObject3
			gs_output2 = ''
			n_errorObject3_5.TriggerEvent("ue_custom01")
			ls_return = gs_output2
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = "Error object ue_custom01 event triggered.")
			Destroy n_errorObject3_5
			
		case lower("error object typeof function")    //测试TypeOf函数
			Choose Case Error.TypeOf()
				Case	error!
					ls_return = "Error.TypeOf() = error"
				Case Else	
					ls_return = "Error.TypeOf() <> error"
			End Choose	
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = "Error.TypeOf() = error")
			
		case lower("error object custom function")    //测试用户自定义函数，不重载
			error5=create n_errorobject3			
			li_parm1 = 111
			ls_parm2 = "hello"
			li_Rtn07 = error5.of_custom02(li_parm1, ls_parm2)
			ls_return = gs_output + "parm1=" + string(li_Rtn07) + ' ' + "parm2=" + ls_parm2
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = "Error object of_custom02 function triggered.parm1=222 parm2=hello [World]")
			Destroy error5
			
		case lower("error object custom overloaded function")    //测试用户自定义函数，重载函数
			error5=create n_errorobject3
			li_parm2 = 100
			ls_parm1 = "Hello"
			ls_Rtn08 = error5.of_custom03(ls_parm1, li_parm2)
			ls_return = gs_output + "parm1=" + ls_Rtn08+ ' ' + "parm2=" + string(li_parm2)
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = "Error object of_custom03(integer ai_parm1, ref string as_parm2) function triggered.parm1=Hello[World] parm2=200")
			Destroy error5
			
		case lower("error object default value of Line")    //测试Line属性的系统默认初始值
			ie_err = create error			
			li_InitVal01 = ie_err.Line
			ls_result += wf_result_add(ls_item, " ", li_InitVal01 = 0)
			destroy ie_err
			
		case lower("error object default value of Number")    //测试Number属性的系统默认初始值
			ie_err = create error	
			li_InitVal02 = ie_err.Number
			ls_result += wf_result_add(ls_item, " ", li_InitVal02 = 0)
			destroy ie_err
			
		case lower("error object default value of Object")    //测试Object属性的系统默认初始值
			ie_err = create error	
			ls_InitVal03 = ie_err.object
			If ls_InitVal03 = '' then 
				ls_return = 'empty string("")'
			Else
				ls_return = ls_InitVal03
			End If 
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = 'empty string("")')
			destroy ie_err
			
		case lower("error object default value of ObjectEvent")    //测试ObjectEvent属性的系统默认初始值
			ie_err = create error	
			ls_InitVal04 = ie_err.objectevent
			If ls_InitVal04 = '' then 
				ls_return = 'empty string("")'
			Else
				ls_return = ls_InitVal04
			End If
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = 'empty string("")')
			destroy ie_err
			
		case lower("error object default value of Text")    //测试Text属性的系统默认初始值
			ie_err = create error	
			ls_InitVal05 = ie_err.Text
			If ls_InitVal05 = '' then 
				ls_return = 'empty string("")'
			Else
				ls_return = ls_InitVal05
			End If
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = 'empty string("")')
			destroy ie_err
			
		case lower("error object default value of WindowMenu")    //测试WindowMenu属性的系统默认初始值
			ie_err = create error	
			ls_InitVal06 = ie_err.windowMenu
			If ls_InitVal06 = '' then 
				ls_return = 'empty string("")'
			Else
				ls_return = ls_InitVal06
			End If
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = 'empty string("")')
			destroy ie_err
			
		case lower("error object max value of Line")   //Line属性值的最大值测试
			Error.Line = 32767
			ls_return = string(Error.Line)
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = '32767')
			
		case lower("error object edge value of Line")   //设置Line属性值 > 32767
			Error.Line = 32768
			ls_return = string(Error.Line)
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = '-32768')
			
		case lower("error object edge value2 of Line")   //设置Line属性值为负数
			Error.Line = -1
			ls_return = string(Error.Line)
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = '-1')
			
		case lower("error object max value of Number")   //Number属性值的最大值测试
			Error.Number = 32767
			ls_return = string(Error.Number)
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = '32767')
			
		case lower("error object edge value of Number")   //设置Number属性值 > 32767
			Error.Number = 32768
			ls_return = string(Error.Number)
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = '-32768')
			
		case lower("error object edge value2 of Number")   //设置Number属性值为负数
			Error.Number = -1
			ls_return = string(Error.Number)
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = '-1')
			
		case lower("error object standard name of Object")   //测试Object的规范命名
			Error.Object = "w_main"
			ls_return = Error.Object
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = 'w_main')
			
		case lower("error object nonstandard name of Object")   //测试Object的不规范命名
			Error.Object = "112 main"
			ls_return = Error.Object
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = '112 main')
			
		case lower("error object standard name of ObjectEvent")   //测试ObjectEvent的规范命名
			Error.ObjectEvent = "Clicked"
			ls_return = Error.ObjectEvent
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = 'Clicked')
			
		case lower("error object nonstandard name of ObjectEvent")   //测试ObjectEvent的不规范命名
			Error.ObjectEvent = "123 Clicked"
			ls_return = Error.ObjectEvent
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = '123 Clicked')
			
		case lower("error object value of Text")   //测试Text属性值
			Error.Text = "This is a Error.Text"
			ls_return = Error.Text
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = 'This is a Error.Text')
			
		case lower("error object standard name of WindowMenu")   //测试WindowMenu的规范命名
			Error.WindowMenu = "m_main"
			ls_return = Error.WindowMenu
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = 'm_main')
			
		case lower("error object nonstandard name of WindowMenu")   //测试WindowMenu的不规范命名
			Error.WindowMenu = "m _ main"
			ls_return = Error.WindowMenu
			ls_result += wf_result_add(ls_item, " ", not isnull(ls_return) and ls_return = 'm _ main')			
		
			
	end choose 
next 

is_resultlog += ls_result

end subroutine

on w_pb_cot.create
int iCurrent
call super::create
this.cb_1=create cb_1
this.n_errorobject3_1=create n_errorobject3_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_1
end on

on w_pb_cot.destroy
call super::destroy
destroy(this.cb_1)
destroy(this.n_errorobject3_1)
end on

event timer;call super::timer;if lower(is_type) = lower("browser") then 
	//wf_closepopwindow( "艾普阳软件（深圳）有限公司", 'Close')
	
end if
end event

type cb_1 from commandbutton within w_pb_cot
integer x = 192
integer y = 112
integer width = 457
integer height = 132
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "module"
end type

event clicked;of_testcase_point_module()
of_testcase_point_module1()
end event

type n_errorobject3_1 from n_errorobject3 within w_pb_cot descriptor "pb_nvo" = "true" 
end type

on n_errorobject3_1.create
call super::create
end on

on n_errorobject3_1.destroy
call super::destroy
end on

