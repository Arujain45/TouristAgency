Dim WshShell
Dim var

On Error Resume Next

Set WshShell = CreateObject("WScript.Shell")

var = WshShell.RegRead _ 
  ("HKEY_CURRENT_USER\Software\ODBC\ODBC.INI\ODBC Data Sources\TouristAgency Base")

If Not IsEmpty(var) Then
    MsgBox "���������������� DSN 'TouristAgency Base' ����������."
Else
    MsgBox "�� ����������."
End If