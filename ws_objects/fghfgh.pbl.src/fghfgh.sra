$PBExportHeader$fghfgh.sra
$PBExportComments$Generated Application Object
forward
global type fghfgh from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type fghfgh from application
string appname = "fghfgh"
end type
global fghfgh fghfgh

on fghfgh.create
appname = "fghfgh"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on fghfgh.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

