VERSION 5.00
Begin VB.Form ss 
   AutoRedraw      =   -1  'True
   Caption         =   "Form1"
   ClientHeight    =   6105
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   12720
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   178
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   6105
   ScaleWidth      =   12720
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "À»  ò«·«"
      Height          =   615
      Left            =   6360
      TabIndex        =   4
      Top             =   480
      Width           =   2295
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   975
      Left            =   840
      TabIndex        =   3
      Top             =   3840
      Width           =   1095
   End
   Begin VB.ComboBox Combo2 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   24
         Charset         =   178
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   705
      Left            =   1440
      TabIndex        =   2
      Text            =   "Combo2"
      Top             =   2520
      Width           =   10215
   End
   Begin VB.ComboBox Combo1 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   24
         Charset         =   178
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   705
      Left            =   1440
      MousePointer    =   4  'Icon
      TabIndex        =   1
      Text            =   "Combo1"
      Top             =   1560
      Width           =   10215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "À»  „‘ —Ì "
      Height          =   735
      Left            =   2880
      TabIndex        =   0
      Top             =   360
      Width           =   1455
   End
End
Attribute VB_Name = "ss"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Type std
    firstname As String * 25
    family As String * 15
    flag As Boolean
End Type
Private Type kala
     fn As String * 25
     nrkh As Double
End Type


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

Private Sub Command1_Click()
  Dim jaber As std
  Open "c:\ab2.txt" For Random As #1 Len = Len(jaber)
         Seek #1, FileLen("c:\ab2.txt") \ Len(jaber) + 1
        jaber.firstname = InputBox("‰«„ ")
        jaber.family = InputBox("‰«„ Œ«‰Ê«œêÌ")
        Put #1, , jaber
   Close
   
End Sub






Private Sub Command2_Click()
Form2.Show
End Sub

Private Sub Command3_Click()
Dim k As kala
Open "c:\ab3.txt" For Random As #1 Len = Len(k)
          Seek #1, FileLen("c:\ab3.txt") \ Len(k) + 1
        k.fn = InputBox("‰«„ ò«·« ")
        k.nrkh = InputBox("ﬁÌ„  ò«·«")
        Put #1, , k
 Close
End Sub

Private Sub Form_Load()
For i = 199 To 230
 If i = 201 Then Combo1.AddItem "Å" Else Combo1.AddItem Chr(i)
Next
Combo1.RemoveItem 16
Combo1.RemoveItem 20
Combo1.RemoveItem 23
Combo1.RemoveItem 25
Combo1.RemoveItem 24

'
Dim v As std
Dim a As String * 40
 Open "c:\ab2.txt" For Random As #1 Len = Len(v)
 While EOF(1) = False
     Get #1, , a
     Combo2.AddItem a
     
 Wend
 Close
End Sub

