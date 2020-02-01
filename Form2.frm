VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   5745
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   9465
   LinkTopic       =   "Form2"
   ScaleHeight     =   5745
   ScaleWidth      =   9465
   StartUpPosition =   3  'Windows Default
   Begin VB.CheckBox Check1 
      BackColor       =   &H80000005&
      Caption         =   "  "
      Height          =   375
      Left            =   480
      TabIndex        =   1
      Top             =   1200
      Width           =   255
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000005&
      Height          =   495
      Left            =   720
      TabIndex        =   2
      Top             =   1200
      Width           =   4095
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000005&
      Caption         =   "ÌÇÈÑ ÈÇÈ˜í"
      Height          =   615
      Left            =   600
      TabIndex        =   0
      Top             =   2520
      Width           =   9135
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Type kala
     fn As String * 25
     nrkh As Double
End Type
Private Sub Form_Load()
 Dim k As kala
 Dim a As String * 50
 Print "jabdfdsgfdg"
Open "c:\ab3.txt" For Random As #1 Len = Len(k)

                Get #1, , k
               a = k.nrkh
               b = k.fn
               m = b + a
               Print a
                Label2.Caption = m
      
 Close
End Sub
