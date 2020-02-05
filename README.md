# File-handling-VB6
> Fall 2011

## File in VB6
There are generally two types of files in VB6:
Text files and Binary File

# Reade File
This part of the code reads the file and insert into the combo box

```VB6
Private Sub Combo1_Click()
  Dim v As std
  Dim z As String * 40
  For g = 0 To Combo2.ListCount - 1
     Combo2.RemoveItem 0
  Next
  For u = 0 To Combo1.ListCount - 1
    If Combo1.List(Combo1.ListIndex) = Combo1.List(u) Then
      Open "c:\ab2.txt" For Random As #1 Len = Len(v)
      For i = 0 To FileLen("c:\ab2.txt") \ Len(v)
          Get #1, , v
          t = v.family
          j = v.firstname
          n = t + j
          If Mid(t, 1, 1) = Combo1.List(Combo1.ListIndex) Then Combo2.AddItem n
      Next
      Close
   End If
  Next
End Sub
```
# Write file 

```VB6
Private Sub Command1_Click()
  Dim jaber As std
  Open "c:\ab2.txt" For Random As #1 Len = Len(jaber)
  Seek #1, FileLen("c:\ab2.txt") \ Len(jaber) + 1
  jaber.firstname = InputBox("نام ")
  jaber.family = InputBox("نام خانوادگي")
  Put #1, , jaber
  Close
End Sub
```


