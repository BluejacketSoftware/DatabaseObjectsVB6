VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "SQLValueExpression"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
' ___________________________________________________
'
'  � Hi-Integrity Systems 2014. All rights reserved.
'  www.hisystems.com.au - Toby Wicks
' ___________________________________________________
'

Option Explicit

Implements ISQLExpression

Public Value As Variant

Private Sub Class_Initialize()

    Value = Null

End Sub

Private Property Get ISQLExpression_SQL(ByVal eConnectionType As ConnectionTypeEnum) As String

    ISQLExpression_SQL = SQLConvertValue(Value, eConnectionType)

End Property
