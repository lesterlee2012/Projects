VERSION 5.00
Begin VB.Form DotaEmulator 
   Caption         =   "DotaӢ��ս��ģ����"
   ClientHeight    =   8385
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   13395
   LinkTopic       =   "Form1"
   ScaleHeight     =   8385
   ScaleWidth      =   13395
   StartUpPosition =   3  '����ȱʡ
   Begin VB.TextBox HrBRes 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   10560
      Locked          =   -1  'True
      TabIndex        =   140
      Top             =   7680
      Width           =   735
   End
   Begin VB.TextBox HrARes 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   138
      Top             =   7680
      Width           =   735
   End
   Begin VB.TextBox HrBEva 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   12360
      Locked          =   -1  'True
      TabIndex        =   136
      Top             =   7680
      Width           =   735
   End
   Begin VB.TextBox HrAEva 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   134
      Top             =   7680
      Width           =   735
   End
   Begin VB.Frame Frame4 
      BorderStyle     =   0  'None
      Caption         =   "Frame3"
      Height          =   2415
      Left            =   11640
      TabIndex        =   97
      Top             =   3720
      Width           =   1695
      Begin VB.OptionButton CmdB 
         Caption         =   "��ͨ����"
         Height          =   375
         Index           =   0
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   133
         Top             =   480
         Width           =   1215
      End
      Begin VB.OptionButton CmdB 
         Caption         =   "����D"
         Height          =   375
         Index           =   4
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   132
         Top             =   1920
         Width           =   1215
      End
      Begin VB.OptionButton CmdB 
         Caption         =   "����C"
         Height          =   375
         Index           =   3
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   131
         Top             =   1560
         Width           =   1215
      End
      Begin VB.OptionButton CmdB 
         Caption         =   "����B"
         Height          =   375
         Index           =   2
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   130
         Top             =   1200
         Width           =   1215
      End
      Begin VB.OptionButton CmdB 
         Caption         =   "����A"
         Height          =   375
         Index           =   1
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   129
         Top             =   840
         Width           =   1215
      End
      Begin VB.Label Label53 
         Alignment       =   2  'Center
         Caption         =   "����P2"
         Height          =   255
         Left            =   240
         TabIndex        =   111
         Top             =   120
         Width           =   975
      End
   End
   Begin VB.Frame Frame3 
      BorderStyle     =   0  'None
      Caption         =   "Frame3"
      Height          =   2415
      Left            =   2280
      TabIndex        =   96
      Top             =   3720
      Width           =   1695
      Begin VB.OptionButton CmdA 
         Caption         =   "��ͨ����"
         Height          =   375
         Index           =   0
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   128
         Top             =   480
         Width           =   1215
      End
      Begin VB.OptionButton CmdA 
         Caption         =   "����D"
         Height          =   375
         Index           =   4
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   127
         Top             =   1920
         Width           =   1215
      End
      Begin VB.OptionButton CmdA 
         Caption         =   "����C"
         Height          =   375
         Index           =   3
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   126
         Top             =   1560
         Width           =   1215
      End
      Begin VB.OptionButton CmdA 
         Caption         =   "����B"
         Height          =   375
         Index           =   2
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   125
         Top             =   1200
         Width           =   1215
      End
      Begin VB.OptionButton CmdA 
         Caption         =   "����A"
         Height          =   375
         Index           =   1
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   124
         Top             =   840
         Width           =   1215
      End
      Begin VB.Label Label52 
         Alignment       =   2  'Center
         Caption         =   "����P1"
         Height          =   255
         Left            =   360
         TabIndex        =   110
         Top             =   120
         Width           =   975
      End
   End
   Begin VB.Frame Frame2 
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Enabled         =   0   'False
      Height          =   1455
      Left            =   9240
      TabIndex        =   95
      Top             =   1920
      Width           =   4095
      Begin VB.ComboBox ShopB 
         Height          =   300
         ItemData        =   "Dota.frx":0000
         Left            =   240
         List            =   "Dota.frx":002E
         TabIndex        =   143
         Top             =   0
         Width           =   1335
      End
      Begin VB.OptionButton ItemSpB 
         Caption         =   "Sp"
         Height          =   375
         Index           =   1
         Left            =   1680
         Style           =   1  'Graphical
         TabIndex        =   123
         Top             =   360
         Width           =   375
      End
      Begin VB.OptionButton ItemSpB 
         Caption         =   "Sp"
         Height          =   375
         Index           =   2
         Left            =   1680
         Style           =   1  'Graphical
         TabIndex        =   122
         Top             =   720
         Width           =   375
      End
      Begin VB.OptionButton ItemSpB 
         Caption         =   "Sp"
         Height          =   375
         Index           =   3
         Left            =   1680
         Style           =   1  'Graphical
         TabIndex        =   121
         Top             =   1080
         Width           =   375
      End
      Begin VB.OptionButton ItemSpB 
         Caption         =   "Sp"
         Height          =   375
         Index           =   4
         Left            =   3600
         Style           =   1  'Graphical
         TabIndex        =   120
         Top             =   360
         Width           =   375
      End
      Begin VB.OptionButton ItemSpB 
         Caption         =   "Sp"
         Height          =   375
         Index           =   5
         Left            =   3600
         Style           =   1  'Graphical
         TabIndex        =   119
         Top             =   720
         Width           =   375
      End
      Begin VB.OptionButton ItemSpB 
         Caption         =   "Sp"
         Height          =   375
         Index           =   6
         Left            =   3600
         Style           =   1  'Graphical
         TabIndex        =   118
         Top             =   1080
         Width           =   375
      End
      Begin VB.ComboBox HrBItem 
         Height          =   300
         Index           =   4
         Left            =   2160
         Sorted          =   -1  'True
         TabIndex        =   109
         Top             =   720
         Width           =   1335
      End
      Begin VB.ComboBox HrBItem 
         Height          =   300
         Index           =   6
         Left            =   2160
         Sorted          =   -1  'True
         TabIndex        =   108
         Top             =   1080
         Width           =   1335
      End
      Begin VB.ComboBox HrBItem 
         Height          =   300
         Index           =   5
         Left            =   240
         Sorted          =   -1  'True
         TabIndex        =   107
         Top             =   1080
         Width           =   1335
      End
      Begin VB.ComboBox HrBItem 
         Height          =   300
         Index           =   2
         Left            =   2160
         Sorted          =   -1  'True
         TabIndex        =   106
         Top             =   360
         Width           =   1335
      End
      Begin VB.ComboBox HrBItem 
         Height          =   300
         Index           =   3
         Left            =   240
         Sorted          =   -1  'True
         TabIndex        =   105
         Top             =   720
         Width           =   1335
      End
      Begin VB.ComboBox HrBItem 
         Height          =   300
         Index           =   1
         Left            =   240
         Sorted          =   -1  'True
         TabIndex        =   104
         Top             =   360
         Width           =   1335
      End
   End
   Begin VB.Frame Frame1 
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Enabled         =   0   'False
      Height          =   1455
      Left            =   120
      TabIndex        =   94
      Top             =   1920
      Width           =   4095
      Begin VB.ComboBox ShopA 
         Height          =   300
         ItemData        =   "Dota.frx":00C2
         Left            =   120
         List            =   "Dota.frx":00F0
         TabIndex        =   142
         Top             =   0
         Width           =   1335
      End
      Begin VB.OptionButton ItemSpA 
         Caption         =   "Sp"
         Height          =   375
         Index           =   6
         Left            =   3480
         Style           =   1  'Graphical
         TabIndex        =   117
         Top             =   1080
         Width           =   375
      End
      Begin VB.OptionButton ItemSpA 
         Caption         =   "Sp"
         Height          =   375
         Index           =   5
         Left            =   3480
         Style           =   1  'Graphical
         TabIndex        =   116
         Top             =   720
         Width           =   375
      End
      Begin VB.OptionButton ItemSpA 
         Caption         =   "Sp"
         Height          =   375
         Index           =   4
         Left            =   3480
         Style           =   1  'Graphical
         TabIndex        =   115
         Top             =   360
         Width           =   375
      End
      Begin VB.OptionButton ItemSpA 
         Caption         =   "Sp"
         Height          =   375
         Index           =   3
         Left            =   1560
         Style           =   1  'Graphical
         TabIndex        =   114
         Top             =   1080
         Width           =   375
      End
      Begin VB.OptionButton ItemSpA 
         Caption         =   "Sp"
         Height          =   375
         Index           =   2
         Left            =   1560
         Style           =   1  'Graphical
         TabIndex        =   113
         Top             =   720
         Width           =   375
      End
      Begin VB.OptionButton ItemSpA 
         Caption         =   "Sp"
         Height          =   375
         Index           =   1
         Left            =   1560
         Style           =   1  'Graphical
         TabIndex        =   112
         Top             =   360
         Width           =   375
      End
      Begin VB.ComboBox HrAItem 
         Height          =   300
         Index           =   4
         Left            =   2040
         Sorted          =   -1  'True
         TabIndex        =   103
         Top             =   720
         Width           =   1335
      End
      Begin VB.ComboBox HrAItem 
         Height          =   300
         Index           =   6
         Left            =   2040
         Sorted          =   -1  'True
         TabIndex        =   102
         Top             =   1080
         Width           =   1335
      End
      Begin VB.ComboBox HrAItem 
         Height          =   300
         Index           =   5
         Left            =   120
         Sorted          =   -1  'True
         TabIndex        =   101
         Top             =   1080
         Width           =   1335
      End
      Begin VB.ComboBox HrAItem 
         Height          =   300
         Index           =   2
         Left            =   2040
         Sorted          =   -1  'True
         TabIndex        =   100
         Top             =   360
         Width           =   1335
      End
      Begin VB.ComboBox HrAItem 
         Height          =   300
         Index           =   3
         Left            =   120
         Sorted          =   -1  'True
         TabIndex        =   99
         Top             =   720
         Width           =   1335
      End
      Begin VB.ComboBox HrAItem 
         Height          =   300
         Index           =   1
         Left            =   120
         Sorted          =   -1  'True
         TabIndex        =   98
         Top             =   360
         Width           =   1335
      End
   End
   Begin VB.CommandButton Reset 
      Caption         =   "Reset"
      Height          =   495
      Left            =   7200
      TabIndex        =   87
      Top             =   7200
      Width           =   615
   End
   Begin VB.Timer BattleTimer 
      Left            =   6360
      Top             =   0
   End
   Begin VB.TextBox HrAAttMax 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   86
      Top             =   6960
      Width           =   735
   End
   Begin VB.TextBox HrBAttMax 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   12000
      Locked          =   -1  'True
      TabIndex        =   85
      Top             =   6960
      Width           =   735
   End
   Begin VB.TextBox HrBDef 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   10560
      Locked          =   -1  'True
      TabIndex        =   83
      Top             =   7320
      Width           =   735
   End
   Begin VB.TextBox HrADef 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   81
      Top             =   7320
      Width           =   735
   End
   Begin VB.ListBox EmuPace 
      BeginProperty Font 
         Name            =   "����"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1020
      ItemData        =   "Dota.frx":0184
      Left            =   5640
      List            =   "Dota.frx":0194
      TabIndex        =   80
      Top             =   6600
      Width           =   1095
   End
   Begin VB.TextBox BattleLog 
      Height          =   5415
      Left            =   4200
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   77
      Top             =   480
      Width           =   4815
   End
   Begin VB.CommandButton Start 
      Caption         =   "��ʼ"
      Height          =   975
      Left            =   7200
      TabIndex        =   76
      Top             =   6120
      Width           =   1575
   End
   Begin VB.OptionButton P1P2M 
      Caption         =   "P1 vs P2"
      Height          =   375
      Left            =   4320
      TabIndex        =   75
      Top             =   7440
      Width           =   1215
   End
   Begin VB.OptionButton P1M 
      Caption         =   "P1 vs COM"
      Height          =   375
      Left            =   4320
      TabIndex        =   74
      Top             =   6960
      Width           =   1215
   End
   Begin VB.OptionButton AutoM 
      Caption         =   "�Զ�"
      Height          =   375
      Left            =   4320
      TabIndex        =   73
      Top             =   6480
      Value           =   -1  'True
      Width           =   1215
   End
   Begin VB.TextBox HrAAttMin 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   68
      Top             =   6960
      Width           =   735
   End
   Begin VB.TextBox HrADPS 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   67
      Top             =   8040
      Width           =   735
   End
   Begin VB.TextBox HrAV 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   66
      Top             =   7320
      Width           =   735
   End
   Begin VB.ComboBox HrATp 
      Height          =   300
      ItemData        =   "Dota.frx":01A9
      Left            =   240
      List            =   "Dota.frx":01B9
      TabIndex        =   48
      Top             =   720
      Width           =   1215
   End
   Begin VB.TextBox HrALv 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      Height          =   270
      Left            =   2160
      TabIndex        =   47
      Text            =   "1"
      Top             =   1320
      Width           =   735
   End
   Begin VB.TextBox HrASpLv 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      Height          =   270
      Index           =   1
      Left            =   1560
      TabIndex        =   46
      Text            =   "0"
      Top             =   4560
      Width           =   495
   End
   Begin VB.TextBox HrASpLv 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      Height          =   270
      Index           =   3
      Left            =   1560
      TabIndex        =   45
      Text            =   "0"
      Top             =   5280
      Width           =   495
   End
   Begin VB.TextBox HrAMaxHP 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   44
      Top             =   6240
      Width           =   735
   End
   Begin VB.TextBox HrAMaxMP 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   43
      Top             =   6600
      Width           =   735
   End
   Begin VB.TextBox HrACurMP 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   42
      Top             =   6600
      Width           =   735
   End
   Begin VB.TextBox HrACurHP 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   41
      Top             =   6240
      Width           =   735
   End
   Begin VB.TextBox HrASpLv 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      Height          =   270
      Index           =   4
      Left            =   1560
      TabIndex        =   40
      Text            =   "0"
      Top             =   5640
      Width           =   495
   End
   Begin VB.TextBox HrASpLv 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      Height          =   270
      Index           =   2
      Left            =   1560
      TabIndex        =   39
      Text            =   "0"
      Top             =   4920
      Width           =   495
   End
   Begin VB.TextBox HrABonus 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      Height          =   270
      Left            =   1560
      TabIndex        =   38
      Text            =   "0"
      Top             =   4200
      Width           =   495
   End
   Begin VB.ComboBox HrANm 
      Height          =   300
      Left            =   240
      Sorted          =   -1  'True
      TabIndex        =   37
      Top             =   1320
      Width           =   1575
   End
   Begin VB.TextBox HrASt 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   36
      Top             =   8040
      Width           =   735
   End
   Begin VB.TextBox HrBAttMin 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   10920
      Locked          =   -1  'True
      TabIndex        =   32
      Top             =   6960
      Width           =   735
   End
   Begin VB.TextBox HrBDPS 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   10560
      Locked          =   -1  'True
      TabIndex        =   31
      Top             =   8040
      Width           =   735
   End
   Begin VB.TextBox HrBV 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   12360
      Locked          =   -1  'True
      TabIndex        =   30
      Top             =   7320
      Width           =   735
   End
   Begin VB.ComboBox HrBTp 
      Height          =   300
      ItemData        =   "Dota.frx":01D5
      Left            =   9480
      List            =   "Dota.frx":01E5
      TabIndex        =   12
      Top             =   720
      Width           =   1215
   End
   Begin VB.TextBox HrBLv 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      Height          =   270
      Left            =   11400
      TabIndex        =   11
      Text            =   "1"
      Top             =   1320
      Width           =   735
   End
   Begin VB.TextBox HrBSpLv 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      Height          =   270
      Index           =   1
      Left            =   10920
      TabIndex        =   10
      Text            =   "0"
      Top             =   4560
      Width           =   495
   End
   Begin VB.TextBox HrBSpLv 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      Height          =   270
      Index           =   3
      Left            =   10920
      TabIndex        =   9
      Text            =   "0"
      Top             =   5280
      Width           =   495
   End
   Begin VB.TextBox HrBMaxHP 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   12000
      Locked          =   -1  'True
      TabIndex        =   8
      Top             =   6240
      Width           =   735
   End
   Begin VB.TextBox HrBMaxMP 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   12000
      Locked          =   -1  'True
      TabIndex        =   7
      Top             =   6600
      Width           =   735
   End
   Begin VB.TextBox HrBCurMP 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   10920
      Locked          =   -1  'True
      TabIndex        =   6
      Top             =   6600
      Width           =   735
   End
   Begin VB.TextBox HrBCurHP 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   10920
      Locked          =   -1  'True
      TabIndex        =   5
      Top             =   6240
      Width           =   735
   End
   Begin VB.TextBox HrBSpLv 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      Height          =   270
      Index           =   4
      Left            =   10920
      TabIndex        =   4
      Text            =   "0"
      Top             =   5640
      Width           =   495
   End
   Begin VB.TextBox HrBSpLv 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      Height          =   270
      Index           =   2
      Left            =   10920
      TabIndex        =   3
      Text            =   "0"
      Top             =   4920
      Width           =   495
   End
   Begin VB.TextBox HrBBonus 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      Height          =   270
      Left            =   10920
      TabIndex        =   2
      Text            =   "0"
      Top             =   4200
      Width           =   495
   End
   Begin VB.ComboBox HrBNm 
      Height          =   300
      Left            =   9480
      Sorted          =   -1  'True
      TabIndex        =   1
      Top             =   1320
      Width           =   1575
   End
   Begin VB.TextBox HrBSt 
      Alignment       =   2  'Center
      Height          =   270
      Left            =   12360
      Locked          =   -1  'True
      TabIndex        =   0
      Top             =   8040
      Width           =   735
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      Caption         =   "ħ������"
      Height          =   255
      Left            =   9720
      TabIndex        =   141
      Top             =   7680
      Width           =   855
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Caption         =   "ħ������"
      Height          =   255
      Left            =   360
      TabIndex        =   139
      Top             =   7680
      Width           =   855
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "������"
      Height          =   255
      Left            =   11280
      TabIndex        =   137
      Top             =   7680
      Width           =   1095
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "������"
      Height          =   255
      Left            =   2040
      TabIndex        =   135
      Top             =   7680
      Width           =   855
   End
   Begin VB.Label Label65 
      Alignment       =   2  'Center
      Caption         =   "~"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   135
      Left            =   11760
      TabIndex        =   93
      Top             =   7080
      Width           =   135
   End
   Begin VB.Label Label64 
      Alignment       =   2  'Center
      Caption         =   "/"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   135
      Left            =   11760
      TabIndex        =   92
      Top             =   6720
      Width           =   135
   End
   Begin VB.Label Label63 
      Alignment       =   2  'Center
      Caption         =   "/"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   135
      Left            =   11760
      TabIndex        =   91
      Top             =   6360
      Width           =   135
   End
   Begin VB.Label Label58 
      Alignment       =   2  'Center
      Caption         =   "~"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   135
      Left            =   2400
      TabIndex        =   90
      Top             =   7080
      Width           =   135
   End
   Begin VB.Label Label27 
      Alignment       =   2  'Center
      Caption         =   "/"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   135
      Left            =   2400
      TabIndex        =   89
      Top             =   6720
      Width           =   135
   End
   Begin VB.Label Label26 
      Alignment       =   2  'Center
      Caption         =   "/"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   135
      Left            =   2400
      TabIndex        =   88
      Top             =   6360
      Width           =   135
   End
   Begin VB.Label LabelBDef 
      Alignment       =   2  'Center
      Caption         =   "����"
      Height          =   255
      Left            =   9600
      TabIndex        =   84
      Top             =   7320
      Width           =   1095
   End
   Begin VB.Label LabelADef 
      Alignment       =   2  'Center
      Caption         =   "����"
      Height          =   255
      Left            =   240
      TabIndex        =   82
      Top             =   7320
      Width           =   1095
   End
   Begin VB.Label Label55 
      Alignment       =   2  'Center
      Caption         =   "ģ���ٶ�"
      Height          =   375
      Left            =   5640
      TabIndex        =   79
      Top             =   6120
      Width           =   975
   End
   Begin VB.Label Label54 
      Alignment       =   2  'Center
      Caption         =   "ս����¼"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   4200
      TabIndex        =   78
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Label51 
      Alignment       =   2  'Center
      Caption         =   "ģ��ģʽ"
      Height          =   375
      Left            =   4440
      TabIndex        =   72
      Top             =   6120
      Width           =   975
   End
   Begin VB.Label Label48 
      Alignment       =   2  'Center
      Caption         =   "��ʱDPS"
      Height          =   255
      Left            =   240
      TabIndex        =   71
      Top             =   8040
      Width           =   1095
   End
   Begin VB.Label LabelAV 
      Alignment       =   2  'Center
      Caption         =   "�����ٶ�"
      Height          =   255
      Left            =   1920
      TabIndex        =   70
      Top             =   7320
      Width           =   1095
   End
   Begin VB.Label Label23 
      Alignment       =   2  'Center
      Caption         =   "������"
      Height          =   255
      Left            =   240
      TabIndex        =   69
      Top             =   6960
      Width           =   1095
   End
   Begin VB.Label Label22 
      Alignment       =   2  'Center
      Caption         =   "Ӣ��A"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   240
      TabIndex        =   65
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Label21 
      Caption         =   "ѡ��Ӣ������"
      Height          =   255
      Left            =   360
      TabIndex        =   64
      Top             =   480
      Width           =   1215
   End
   Begin VB.Label Label20 
      Caption         =   "ѡ��Ӣ������"
      Height          =   255
      Left            =   360
      TabIndex        =   63
      Top             =   1080
      Width           =   1215
   End
   Begin VB.Label Label19 
      Alignment       =   2  'Center
      Caption         =   "��Ʒ��"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   120
      TabIndex        =   62
      Top             =   1680
      Width           =   1455
   End
   Begin VB.Label Label18 
      Alignment       =   2  'Center
      Caption         =   "������"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   240
      TabIndex        =   61
      Top             =   3480
      Width           =   1215
   End
   Begin VB.Label Label17 
      Alignment       =   2  'Center
      Caption         =   "���Ը��ӵ�"
      Height          =   255
      Left            =   240
      TabIndex        =   60
      Top             =   4200
      Width           =   1095
   End
   Begin VB.Label Label16 
      Alignment       =   2  'Center
      Caption         =   "��������"
      Height          =   255
      Left            =   240
      TabIndex        =   59
      Top             =   3840
      Width           =   1095
   End
   Begin VB.Label Label15 
      Alignment       =   2  'Center
      Caption         =   "���ܵȼ�"
      Height          =   255
      Left            =   1440
      TabIndex        =   58
      Top             =   3840
      Width           =   735
   End
   Begin VB.Label Label12 
      Alignment       =   2  'Center
      Caption         =   "HP"
      Height          =   255
      Left            =   240
      TabIndex        =   57
      Top             =   6240
      Width           =   1095
   End
   Begin VB.Label Label11 
      Alignment       =   2  'Center
      Caption         =   "MP"
      Height          =   255
      Left            =   240
      TabIndex        =   56
      Top             =   6600
      Width           =   1095
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      Caption         =   "ս��״̬��"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   120
      TabIndex        =   55
      Top             =   6000
      Width           =   1455
   End
   Begin VB.Label HrASpNm 
      Alignment       =   2  'Center
      Caption         =   "����C"
      Height          =   255
      Index           =   3
      Left            =   240
      TabIndex        =   54
      Top             =   5280
      Width           =   1095
   End
   Begin VB.Label HrASpNm 
      Alignment       =   2  'Center
      Caption         =   "����D"
      Height          =   255
      Index           =   4
      Left            =   240
      TabIndex        =   53
      Top             =   5640
      Width           =   1095
   End
   Begin VB.Label HrASpNm 
      Alignment       =   2  'Center
      Caption         =   "����B"
      Height          =   255
      Index           =   2
      Left            =   240
      TabIndex        =   52
      Top             =   4920
      Width           =   1095
   End
   Begin VB.Label HrASpNm 
      Alignment       =   2  'Center
      Caption         =   "����A"
      Height          =   255
      Index           =   1
      Left            =   240
      TabIndex        =   51
      Top             =   4560
      Width           =   1095
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "����ȼ�"
      Height          =   255
      Left            =   2160
      TabIndex        =   50
      Top             =   1080
      Width           =   735
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "����״̬"
      Height          =   255
      Left            =   1920
      TabIndex        =   49
      Top             =   8040
      Width           =   1095
   End
   Begin VB.Label Label50 
      Alignment       =   2  'Center
      Caption         =   "��ʱDPS"
      Height          =   255
      Left            =   9600
      TabIndex        =   35
      Top             =   8040
      Width           =   1095
   End
   Begin VB.Label LabelBV 
      Alignment       =   2  'Center
      Caption         =   "�����ٶ�"
      Height          =   255
      Left            =   11280
      TabIndex        =   34
      Top             =   7320
      Width           =   1095
   End
   Begin VB.Label Label47 
      Alignment       =   2  'Center
      Caption         =   "������"
      Height          =   255
      Left            =   9600
      TabIndex        =   33
      Top             =   6960
      Width           =   1095
   End
   Begin VB.Label Label46 
      Alignment       =   2  'Center
      Caption         =   "Ӣ��B"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   9480
      TabIndex        =   29
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Label45 
      Caption         =   "ѡ��Ӣ������"
      Height          =   255
      Left            =   9600
      TabIndex        =   28
      Top             =   480
      Width           =   1095
   End
   Begin VB.Label Label44 
      Caption         =   "ѡ��Ӣ������"
      Height          =   255
      Left            =   9600
      TabIndex        =   27
      Top             =   1080
      Width           =   1095
   End
   Begin VB.Label Label43 
      Alignment       =   2  'Center
      Caption         =   "��Ʒ��"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   9480
      TabIndex        =   26
      Top             =   1680
      Width           =   1455
   End
   Begin VB.Label Label42 
      Alignment       =   2  'Center
      Caption         =   "������"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   9480
      TabIndex        =   25
      Top             =   3480
      Width           =   1455
   End
   Begin VB.Label Label41 
      Alignment       =   2  'Center
      Caption         =   "���Ը��ӵ�"
      Height          =   255
      Left            =   9600
      TabIndex        =   24
      Top             =   4200
      Width           =   1095
   End
   Begin VB.Label Label40 
      Alignment       =   2  'Center
      Caption         =   "��������"
      Height          =   255
      Left            =   9600
      TabIndex        =   23
      Top             =   3840
      Width           =   1095
   End
   Begin VB.Label Label39 
      Alignment       =   2  'Center
      Caption         =   "���ܵȼ�"
      Height          =   255
      Left            =   10800
      TabIndex        =   22
      Top             =   3840
      Width           =   735
   End
   Begin VB.Label Label36 
      Alignment       =   2  'Center
      Caption         =   "HP"
      Height          =   255
      Left            =   9600
      TabIndex        =   21
      Top             =   6240
      Width           =   1095
   End
   Begin VB.Label Label35 
      Alignment       =   2  'Center
      Caption         =   "MP"
      Height          =   255
      Left            =   9600
      TabIndex        =   20
      Top             =   6600
      Width           =   1095
   End
   Begin VB.Label Label30 
      Alignment       =   2  'Center
      Caption         =   "ս��״̬��"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   9480
      TabIndex        =   19
      Top             =   6000
      Width           =   1455
   End
   Begin VB.Label HrBSpNm 
      Alignment       =   2  'Center
      Caption         =   "����C"
      Height          =   255
      Index           =   3
      Left            =   9600
      TabIndex        =   18
      Top             =   5280
      Width           =   1095
   End
   Begin VB.Label HrBSpNm 
      Alignment       =   2  'Center
      Caption         =   "����D"
      Height          =   255
      Index           =   4
      Left            =   9600
      TabIndex        =   17
      Top             =   5640
      Width           =   1095
   End
   Begin VB.Label HrBSpNm 
      Alignment       =   2  'Center
      Caption         =   "����B"
      Height          =   255
      Index           =   2
      Left            =   9600
      TabIndex        =   16
      Top             =   4920
      Width           =   1095
   End
   Begin VB.Label HrBSpNm 
      Alignment       =   2  'Center
      Caption         =   "����A"
      Height          =   255
      Index           =   1
      Left            =   9600
      TabIndex        =   15
      Top             =   4560
      Width           =   1095
   End
   Begin VB.Label Label25 
      Alignment       =   2  'Center
      Caption         =   "����ȼ�"
      Height          =   255
      Left            =   11400
      TabIndex        =   14
      Top             =   1080
      Width           =   735
   End
   Begin VB.Label Label24 
      Alignment       =   2  'Center
      Caption         =   "����״̬"
      Height          =   255
      Left            =   11280
      TabIndex        =   13
      Top             =   8040
      Width           =   1095
   End
End
Attribute VB_Name = "DotaEmulator"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit:
Dim HeroAtri(0 To 40, 0 To 18)  '�Ʊ�(Ӣ������)
Dim ItemAtri(0 To 40, 0 To 21)  '�Ʊ�(��������)
Dim ItemA%(1 To 6) 'Ӣ��A�������
Dim ItemB%(1 To 6) 'Ӣ��B�������
Dim A%, AHP!, ARHP!, AMP!, ARMP!, AHPM!, AMPM!, AMin%, AMax%, ADef!, AaInt!, Va!, AbAt!, AbCast!, Astate$, AEva!, ARes! 'HeroAģ���ñ���
Dim B%, BHP!, BRHP!, BMP!, BRMP!, BHPM!, BMPM!, BMin%, BMax%, BDef!, BaInt!, Vb!, BbAt!, BbCast!, BState$, BEva!, BRes! 'HeroBģ���ñ���
Dim ACHChance!, ACHTimes!, AShChance!, AShDamage%, Aabsorb!, AStunChance!, AStunTime!, APoisonSt%, APoisonDamage!, APoisonTime! 'HeroA���������ñ���
Dim BCHChance!, BCHTimes!, BShChance!, BShDamage%, Babsorb!, BStunChance!, BStunTime!, BPoisonSt%, BPoisonDamage!, BPoisonTime! 'HeroB���������ñ���

Dim ADamage!, ALv%, Abonus%, Apow!, Aagi!, Awit!, ContainerA! 'HeroA��ʾ�ñ���
Dim BDamage!, BLv%, Bbonus%, Bpow!, Bagi!, Bwit!, ContainerB! 'HeroB��ʾ�ñ���
Dim Aattack%, BAttack%, AStun%, Bstun%, APoison%, BPoison%, Counter%, EvaCounter% 'ģ������ü���������

'���ڳ�ʼ��
Private Sub Form_Load()
DotaEmulator.Left = (Screen.Width - DotaEmulator.Width) / 2
DotaEmulator.Top = (Screen.Height - DotaEmulator.Height) / 2
EmuPace.Text = EmuPace.List(0)

'�Ʊ�(Ӣ������)
HeroAtri(0, 0) = "����������": HeroAtri(0, 1) = "����": HeroAtri(0, 2) = "��ս": HeroAtri(0, 3) = "�����̤": HeroAtri(0, 4) = "˫�н�": HeroAtri(0, 5) = "����": HeroAtri(0, 6) = "���㲻��": HeroAtri(0, 7) = "55": HeroAtri(0, 8) = "57": HeroAtri(0, 9) = "3.1": HeroAtri(0, 10) = "23": HeroAtri(0, 11) = "15": HeroAtri(0, 12) = "15": HeroAtri(0, 13) = "2.6": HeroAtri(0, 14) = "2": HeroAtri(0, 15) = "1.6": HeroAtri(0, 16) = "1.7": HeroAtri(0, 17) = "0.3": HeroAtri(0, 18) = "0.5"
HeroAtri(1, 0) = "����": HeroAtri(1, 1) = "����": HeroAtri(1, 2) = "��ս": HeroAtri(1, 3) = "����": HeroAtri(1, 4) = "��ϫʹ��": HeroAtri(1, 5) = "���": HeroAtri(1, 6) = "���鴬": HeroAtri(1, 7) = "53": HeroAtri(1, 8) = "63": HeroAtri(1, 9) = "2.6": HeroAtri(1, 10) = "24": HeroAtri(1, 11) = "14": HeroAtri(1, 12) = "16": HeroAtri(1, 13) = "2.7": HeroAtri(1, 14) = "1.3": HeroAtri(1, 15) = "1.5": HeroAtri(1, 16) = "1.7": HeroAtri(1, 17) = "0.4": HeroAtri(1, 18) = "0.4"
HeroAtri(2, 0) = "������ţ": HeroAtri(2, 1) = "����": HeroAtri(2, 2) = "��ս": HeroAtri(2, 3) = "����": HeroAtri(2, 4) = "ǿ��ͼ��": HeroAtri(2, 5) = "����": HeroAtri(2, 6) = "������": HeroAtri(2, 7) = "46": HeroAtri(2, 8) = "56": HeroAtri(2, 9) = "2.7": HeroAtri(2, 10) = "22": HeroAtri(2, 11) = "12": HeroAtri(2, 12) = "16": HeroAtri(2, 13) = "2.5": HeroAtri(2, 14) = "1.4": HeroAtri(2, 15) = "1.8": HeroAtri(2, 16) = "1.7": HeroAtri(2, 17) = "0.467": HeroAtri(2, 18) = "0.69"
HeroAtri(3, 0) = "��������": HeroAtri(3, 1) = "����": HeroAtri(3, 2) = "Զ��": HeroAtri(3, 3) = "����": HeroAtri(3, 4) = "����": HeroAtri(3, 5) = "�Ĺ�֮�� ": HeroAtri(3, 6) = "����֮��": HeroAtri(3, 7) = "33": HeroAtri(3, 8) = "37": HeroAtri(3, 9) = "1": HeroAtri(3, 10) = "17": HeroAtri(3, 11) = "14": HeroAtri(3, 12) = "23": HeroAtri(3, 13) = "1.7": HeroAtri(3, 14) = "1.6": HeroAtri(3, 15) = "1.9": HeroAtri(3, 16) = "1.7": HeroAtri(3, 17) = "0.15": HeroAtri(3, 18) = "0.001"
HeroAtri(4, 0) = "���˽���": HeroAtri(4, 1) = "����": HeroAtri(4, 2) = "��ս": HeroAtri(4, 3) = "�籩֮��": HeroAtri(4, 4) = "��������": HeroAtri(4, 5) = "ս�� ": HeroAtri(4, 6) = "��֮����": HeroAtri(4, 7) = "54": HeroAtri(4, 8) = "56": HeroAtri(4, 9) = "1.9": HeroAtri(4, 10) = "23": HeroAtri(4, 11) = "21": HeroAtri(4, 12) = "14": HeroAtri(4, 13) = "2.7": HeroAtri(4, 14) = "2": HeroAtri(4, 15) = "1.3": HeroAtri(4, 16) = "1.7": HeroAtri(4, 17) = "0.4": HeroAtri(4, 18) = "0.3"
HeroAtri(5, 0) = "������ʿ": HeroAtri(5, 1) = "����": HeroAtri(5, 2) = "��ս": HeroAtri(5, 3) = "��������": HeroAtri(5, 4) = "���ȶ�������": HeroAtri(5, 5) = "�ؾ���̰��": HeroAtri(5, 6) = "��ѧ��": HeroAtri(5, 7) = "49": HeroAtri(5, 8) = "53": HeroAtri(5, 9) = "1.1": HeroAtri(5, 10) = "25": HeroAtri(5, 11) = "11": HeroAtri(5, 12) = "25": HeroAtri(5, 13) = "1.8": HeroAtri(5, 14) = "1.2": HeroAtri(5, 15) = "1.8": HeroAtri(5, 16) = "1.7": HeroAtri(5, 17) = "0.35": HeroAtri(5, 18) = "0.4"
HeroAtri(6, 0) = "ţͷ������": HeroAtri(6, 1) = "����": HeroAtri(6, 2) = "��ս": HeroAtri(6, 3) = "������̤ ": HeroAtri(6, 4) = "����֮��": HeroAtri(6, 5) = "��Ȼ����": HeroAtri(6, 6) = "�ѵ���": HeroAtri(6, 7) = "47": HeroAtri(6, 8) = "57": HeroAtri(6, 9) = "3": HeroAtri(6, 10) = "24": HeroAtri(6, 11) = "14": HeroAtri(6, 12) = "23": HeroAtri(6, 13) = "2.3": HeroAtri(6, 14) = "1.5": HeroAtri(6, 15) = "1.6": HeroAtri(6, 16) = "1.7": HeroAtri(6, 17) = "0.35": HeroAtri(6, 18) = "0.4"
HeroAtri(7, 0) = "ȫ����ʿ": HeroAtri(7, 1) = "����": HeroAtri(7, 2) = "��ս": HeroAtri(7, 3) = "ϴ�� ": HeroAtri(7, 4) = "����": HeroAtri(7, 5) = "�˻��⻷": HeroAtri(7, 6) = "�ػ���ʹ ": HeroAtri(7, 7) = "51": HeroAtri(7, 8) = "61": HeroAtri(7, 9) = "4.1": HeroAtri(7, 10) = "20": HeroAtri(7, 11) = "15": HeroAtri(7, 12) = "17": HeroAtri(7, 13) = "2.65": HeroAtri(7, 14) = "1.75": HeroAtri(7, 15) = "1.8": HeroAtri(7, 16) = "1.7": HeroAtri(7, 17) = "0.433": HeroAtri(7, 18) = "0.5"
HeroAtri(8, 0) = "������ʿ": HeroAtri(8, 1) = "����": HeroAtri(8, 2) = "��ս": HeroAtri(8, 3) = "����Ȼ���ڻ� ": HeroAtri(8, 4) = "��������": HeroAtri(8, 5) = "���廤��": HeroAtri(8, 6) = "������� ": HeroAtri(8, 7) = "59": HeroAtri(8, 8) = "67": HeroAtri(8, 9) = "3.1": HeroAtri(8, 10) = "27": HeroAtri(8, 11) = "15": HeroAtri(8, 12) = "17": HeroAtri(8, 13) = "3.4": HeroAtri(8, 14) = "2": HeroAtri(8, 15) = "1.8": HeroAtri(8, 16) = "1.7": HeroAtri(8, 17) = "0.6": HeroAtri(8, 18) = "0.5"
HeroAtri(9, 0) = "ɽ�����": HeroAtri(9, 1) = "����": HeroAtri(9, 2) = "��ս": HeroAtri(9, 3) = "ɽ�� ": HeroAtri(9, 4) = "Ͷ��": HeroAtri(9, 5) = "������": HeroAtri(9, 6) = "���� ": HeroAtri(9, 7) = "61": HeroAtri(9, 8) = "67": HeroAtri(9, 9) = "0.3": HeroAtri(9, 10) = "24": HeroAtri(9, 11) = "9": HeroAtri(9, 12) = "14": HeroAtri(9, 13) = "3": HeroAtri(9, 14) = "0.9": HeroAtri(9, 15) = "1.6": HeroAtri(9, 16) = "1.7": HeroAtri(9, 17) = "0.49": HeroAtri(9, 18) = "0.001"
HeroAtri(10, 0) = "����": HeroAtri(10, 1) = "����": HeroAtri(10, 2) = "��ս": HeroAtri(10, 3) = "Ұ��֮��": HeroAtri(10, 4) = "Ұ�Ժ���": HeroAtri(10, 5) = "Ұ��֮��": HeroAtri(10, 6) = "ԭʼ���� ": HeroAtri(10, 7) = "56": HeroAtri(10, 8) = "60": HeroAtri(10, 9) = "4.6": HeroAtri(10, 10) = "23": HeroAtri(10, 11) = "18": HeroAtri(10, 12) = "16": HeroAtri(10, 13) = "2.2": HeroAtri(10, 14) = "1.6": HeroAtri(10, 15) = "1.9": HeroAtri(10, 16) = "1.7": HeroAtri(10, 17) = "0.3": HeroAtri(10, 18) = "0.5"
HeroAtri(11, 0) = "��è����": HeroAtri(11, 1) = "����": HeroAtri(11, 2) = "��ս": HeroAtri(11, 3) = "����һ��": HeroAtri(11, 4) = "�������": HeroAtri(11, 5) = "��ȭ": HeroAtri(11, 6) = "Ԫ�ط��� ": HeroAtri(11, 7) = "52": HeroAtri(11, 8) = "55": HeroAtri(11, 9) = "3.3": HeroAtri(11, 10) = "23": HeroAtri(11, 11) = "16": HeroAtri(11, 12) = "14": HeroAtri(11, 13) = "2.9": HeroAtri(11, 14) = "1.95": HeroAtri(11, 15) = "1.25": HeroAtri(11, 16) = "1.7": HeroAtri(11, 17) = "0.35": HeroAtri(11, 18) = "0.4"
HeroAtri(12, 0) = "���˾ѻ���": HeroAtri(12, 1) = "����": HeroAtri(12, 2) = "Զ��": HeroAtri(12, 3) = "ɢ��": HeroAtri(12, 4) = "��ͷ": HeroAtri(12, 5) = "��׼": HeroAtri(12, 6) = "��ɱ": HeroAtri(12, 7) = "36": HeroAtri(12, 8) = "42": HeroAtri(12, 9) = "2": HeroAtri(12, 10) = "16": HeroAtri(12, 11) = "21": HeroAtri(12, 12) = "15": HeroAtri(12, 13) = "1.7": HeroAtri(12, 14) = "2.9": HeroAtri(12, 15) = "2.6": HeroAtri(12, 16) = "1.7": HeroAtri(12, 17) = "0.17": HeroAtri(12, 18) = "0.3"
HeroAtri(13, 0) = "����ֱ����": HeroAtri(13, 1) = "����": HeroAtri(13, 2) = "Զ��": HeroAtri(13, 3) = "�ٻ��ɵ�": HeroAtri(13, 4) = "�������": HeroAtri(13, 5) = "׷�ٵ���": HeroAtri(13, 6) = "�����Ļ": HeroAtri(13, 7) = "41": HeroAtri(13, 8) = "51": HeroAtri(13, 9) = "2.4": HeroAtri(13, 10) = "18": HeroAtri(13, 11) = "24": HeroAtri(13, 12) = "23": HeroAtri(13, 13) = "1.8": HeroAtri(13, 14) = "2.8": HeroAtri(13, 15) = "2.1": HeroAtri(13, 16) = "1.7": HeroAtri(13, 17) = "0.2": HeroAtri(13, 18) = "0.5"
HeroAtri(14, 0) = "���徫��": HeroAtri(14, 1) = "����": HeroAtri(14, 2) = "Զ��": HeroAtri(14, 3) = "������̬": HeroAtri(14, 4) = "���幥��": HeroAtri(14, 5) = "����": HeroAtri(14, 6) = "����": HeroAtri(14, 7) = "38": HeroAtri(14, 8) = "42": HeroAtri(14, 9) = "2.7": HeroAtri(14, 10) = "19": HeroAtri(14, 11) = "19": HeroAtri(14, 12) = "17": HeroAtri(14, 13) = "2": HeroAtri(14, 14) = "3": HeroAtri(14, 15) = "1.5": HeroAtri(14, 16) = "1.7": HeroAtri(14, 17) = "0.5": HeroAtri(14, 18) = "0.3"
HeroAtri(15, 0) = "�з�ʦ": HeroAtri(15, 1) = "����": HeroAtri(15, 2) = "����": HeroAtri(15, 3) = "�������": HeroAtri(15, 4) = "��˸": HeroAtri(15, 5) = "��������": HeroAtri(15, 6) = "�������": HeroAtri(15, 7) = "49": HeroAtri(15, 8) = "53": HeroAtri(15, 9) = "3.1": HeroAtri(15, 10) = "20": HeroAtri(15, 11) = "22": HeroAtri(15, 12) = "15": HeroAtri(15, 13) = "1.2": HeroAtri(15, 14) = "2.8": HeroAtri(15, 15) = "1.8": HeroAtri(15, 16) = "1.45": HeroAtri(15, 17) = "0.3": HeroAtri(15, 18) = "0.3"
HeroAtri(16, 0) = "��³��": HeroAtri(18, 1) = "����": HeroAtri(18, 2) = "Զ��": HeroAtri(18, 3) = "�ٻ�����": HeroAtri(18, 4) = "����": HeroAtri(18, 5) = "Эͬ": HeroAtri(18, 6) = "������": HeroAtri(18, 7) = "46": HeroAtri(18, 8) = "50": HeroAtri(18, 9) = "3.4": HeroAtri(18, 10) = "17": HeroAtri(18, 11) = "24": HeroAtri(18, 12) = "13": HeroAtri(18, 13) = "2.1": HeroAtri(18, 14) = "2.7": HeroAtri(18, 15) = "1.4": HeroAtri(18, 16) = "1.7": HeroAtri(18, 17) = "0.33": HeroAtri(18, 18) = "0.5"
HeroAtri(17, 0) = "��Ӱ��ì��": HeroAtri(17, 1) = "����": HeroAtri(17, 2) = "����": HeroAtri(17, 3) = "���֮ì": HeroAtri(17, 4) = "�����û": HeroAtri(17, 5) = "����": HeroAtri(17, 6) = "�û�֮��": HeroAtri(17, 7) = "45": HeroAtri(17, 8) = "67": HeroAtri(17, 9) = "3.3": HeroAtri(17, 10) = "18": HeroAtri(17, 11) = "23": HeroAtri(17, 12) = "21": HeroAtri(17, 13) = "1.7": HeroAtri(17, 14) = "2.8": HeroAtri(17, 15) = "2": HeroAtri(17, 16) = "1.7": HeroAtri(17, 17) = "0.3": HeroAtri(17, 18) = "0.3"
HeroAtri(18, 0) = "��ħս��": HeroAtri(18, 1) = "����": HeroAtri(18, 2) = "Զ��": HeroAtri(18, 3) = "ս��רע": HeroAtri(18, 4) = "��սʿ֮ŭ": HeroAtri(18, 5) = "����ɸ�": HeroAtri(18, 6) = "��Ѫս��": HeroAtri(18, 7) = "38": HeroAtri(18, 8) = "56": HeroAtri(18, 9) = "1.9": HeroAtri(18, 10) = "17": HeroAtri(18, 11) = "21": HeroAtri(18, 12) = "13": HeroAtri(18, 13) = "2.2": HeroAtri(18, 14) = "2.75": HeroAtri(18, 15) = "1": HeroAtri(18, 16) = "1.7": HeroAtri(18, 17) = "0.3": HeroAtri(18, 18) = "0.51"
HeroAtri(19, 0) = "��ʥ": HeroAtri(19, 1) = "����": HeroAtri(19, 2) = "����": HeroAtri(19, 3) = "���з籩": HeroAtri(19, 4) = "��������": HeroAtri(19, 5) = "����": HeroAtri(19, 6) = "�޵�ն": HeroAtri(19, 7) = "44": HeroAtri(19, 8) = "48": HeroAtri(19, 9) = "3.8": HeroAtri(19, 10) = "20": HeroAtri(19, 11) = "20": HeroAtri(19, 12) = "14": HeroAtri(19, 13) = "1.9": HeroAtri(19, 14) = "2.85": HeroAtri(19, 15) = "1.4": HeroAtri(19, 16) = "1.7": HeroAtri(19, 17) = "0.3": HeroAtri(19, 18) = "0.3"
HeroAtri(20, 0) = "���Ⱥ���": HeroAtri(20, 1) = "����": HeroAtri(20, 2) = "����": HeroAtri(20, 3) = "����": HeroAtri(20, 4) = "�ղ�": HeroAtri(20, 5) = "����": HeroAtri(20, 6) = "����֮��": HeroAtri(20, 7) = "51": HeroAtri(20, 8) = "53": HeroAtri(20, 9) = "5.9": HeroAtri(20, 10) = "21": HeroAtri(20, 11) = "21": HeroAtri(20, 12) = "18": HeroAtri(20, 13) = "2.3": HeroAtri(20, 14) = "2.75": HeroAtri(20, 15) = "1.65": HeroAtri(20, 16) = "1.7": HeroAtri(20, 17) = "0.5": HeroAtri(20, 18) = "0.5"
HeroAtri(21, 0) = "���δ̿�": HeroAtri(21, 1) = "����": HeroAtri(21, 2) = "����": HeroAtri(21, 3) = "��Ļ": HeroAtri(21, 4) = "��˸ͻϮ": HeroAtri(21, 5) = "����": HeroAtri(21, 6) = "��������": HeroAtri(21, 7) = "48": HeroAtri(21, 8) = "52": HeroAtri(21, 9) = "6.4": HeroAtri(21, 10) = "17": HeroAtri(21, 11) = "24": HeroAtri(21, 12) = "14": HeroAtri(21, 13) = "2": HeroAtri(21, 14) = "2.9": HeroAtri(21, 15) = "1.3": HeroAtri(21, 16) = "1.7": HeroAtri(21, 17) = "0.3": HeroAtri(21, 18) = "0.4"
HeroAtri(22, 0) = "��֮Ů��˾": HeroAtri(22, 1) = "����": HeroAtri(22, 2) = "Զ��": HeroAtri(22, 3) = "Ⱥ��׹��": HeroAtri(22, 4) = "����֮��": HeroAtri(22, 5) = "��Ծ": HeroAtri(22, 6) = "��֮����": HeroAtri(22, 7) = "38": HeroAtri(22, 8) = "43": HeroAtri(22, 9) = "1.9": HeroAtri(22, 10) = "17": HeroAtri(22, 11) = "20": HeroAtri(22, 12) = "17": HeroAtri(22, 13) = "1.85": HeroAtri(22, 14) = "2.75": HeroAtri(22, 15) = "1.65": HeroAtri(22, 16) = "1.7": HeroAtri(22, 17) = "0.3": HeroAtri(22, 18) = "0.5"
HeroAtri(23, 0) = "��֮��ʿ": HeroAtri(23, 1) = "����": HeroAtri(23, 2) = "Զ��": HeroAtri(23, 3) = "�¹�": HeroAtri(23, 4) = "����": HeroAtri(23, 5) = "��֮ף��": HeroAtri(23, 6) = "��ʴ": HeroAtri(23, 7) = "43": HeroAtri(23, 8) = "49": HeroAtri(23, 9) = "3.1": HeroAtri(23, 10) = "15": HeroAtri(23, 11) = "22": HeroAtri(23, 12) = "16": HeroAtri(23, 13) = "1.9": HeroAtri(23, 14) = "2.78": HeroAtri(23, 15) = "1.85": HeroAtri(23, 16) = "1.7": HeroAtri(23, 17) = "0.46": HeroAtri(23, 18) = "0.6"
HeroAtri(24, 0) = "������": HeroAtri(24, 1) = "����": HeroAtri(24, 2) = "Զ��": HeroAtri(24, 3) = "����֮��": HeroAtri(24, 4) = "ǿ��һ��": HeroAtri(24, 5) = "������-����": HeroAtri(24, 6) = "�����۽�": HeroAtri(24, 7) = "44": HeroAtri(24, 8) = "56": HeroAtri(24, 9) = "1.4": HeroAtri(24, 10) = "15": HeroAtri(24, 11) = "17": HeroAtri(24, 12) = "22": HeroAtri(24, 13) = "2.5": HeroAtri(24, 14) = "1.4": HeroAtri(24, 15) = "2.6": HeroAtri(24, 16) = "1.5": HeroAtri(24, 17) = "0.4": HeroAtri(24, 18) = "0.3"
HeroAtri(25, 0) = "ˮ����Ů": HeroAtri(25, 1) = "����": HeroAtri(25, 2) = "Զ��": HeroAtri(25, 3) = "��˪����": HeroAtri(25, 4) = "�������": HeroAtri(25, 5) = "�Ի͹⻷": HeroAtri(25, 6) = "��������": HeroAtri(25, 7) = "38": HeroAtri(25, 8) = "44": HeroAtri(25, 9) = "1.2": HeroAtri(25, 10) = "16": HeroAtri(25, 11) = "16": HeroAtri(25, 12) = "21": HeroAtri(25, 13) = "1.7": HeroAtri(25, 14) = "1.6": HeroAtri(25, 15) = "2.9": HeroAtri(25, 16) = "1.7": HeroAtri(25, 17) = "0.53": HeroAtri(25, 18) = "0.5"
HeroAtri(26, 0) = "��Ĭ��ʿ": HeroAtri(26, 1) = "����": HeroAtri(26, 2) = "Զ��": HeroAtri(26, 3) = "��Ĭ����": HeroAtri(26, 4) = "�ǻ�֮��": HeroAtri(26, 5) = "�������": HeroAtri(26, 6) = "ȫ����Ĭ": HeroAtri(26, 7) = "43": HeroAtri(26, 8) = "57": HeroAtri(26, 9) = "1.2": HeroAtri(26, 10) = "17": HeroAtri(26, 11) = "16": HeroAtri(26, 12) = "21": HeroAtri(26, 13) = "1.7": HeroAtri(26, 14) = "2.1": HeroAtri(26, 15) = "2.5": HeroAtri(26, 16) = "1.7": HeroAtri(26, 17) = "0.5": HeroAtri(26, 18) = "0.3"
HeroAtri(27, 0) = "�籩֮��": HeroAtri(27, 1) = "����": HeroAtri(27, 2) = "Զ��": HeroAtri(27, 3) = "��Ӱ": HeroAtri(27, 4) = "��������": HeroAtri(27, 5) = "������": HeroAtri(27, 6) = "��״����": HeroAtri(27, 7) = "41": HeroAtri(27, 8) = "51": HeroAtri(27, 9) = "5.1": HeroAtri(27, 10) = "17": HeroAtri(27, 11) = "22": HeroAtri(27, 12) = "23": HeroAtri(27, 13) = "1.5": HeroAtri(27, 14) = "1.8": HeroAtri(27, 15) = "2.6": HeroAtri(27, 16) = "1.7": HeroAtri(27, 17) = "0.5": HeroAtri(27, 18) = "0.3"
HeroAtri(28, 0) = "��֮����": HeroAtri(28, 1) = "����": HeroAtri(28, 2) = "Զ��": HeroAtri(28, 3) = "�����": HeroAtri(28, 4) = "������ʧ": HeroAtri(28, 5) = "�����ħ��": HeroAtri(28, 6) = "�����̬": HeroAtri(28, 7) = "38": HeroAtri(28, 8) = "54": HeroAtri(28, 9) = "1.1": HeroAtri(28, 10) = "16": HeroAtri(28, 11) = "15": HeroAtri(28, 12) = "22": HeroAtri(28, 13) = "1.8": HeroAtri(28, 14) = "1.6": HeroAtri(28, 15) = "2.8": HeroAtri(28, 16) = "1.7": HeroAtri(28, 17) = "0.3": HeroAtri(28, 18) = "0.3"
HeroAtri(29, 0) = "��Ů��": HeroAtri(29, 1) = "����": HeroAtri(29, 2) = "Զ��": HeroAtri(29, 3) = "������": HeroAtri(29, 4) = "����֮��": HeroAtri(29, 5) = "��λת��": HeroAtri(29, 6) = "�ξ�����": HeroAtri(29, 7) = "44": HeroAtri(29, 8) = "49": HeroAtri(29, 9) = "2.1": HeroAtri(29, 10) = "15": HeroAtri(29, 11) = "22": HeroAtri(29, 12) = "25": HeroAtri(29, 13) = "1.7": HeroAtri(29, 14) = "1.7": HeroAtri(29, 15) = "2.4": HeroAtri(29, 16) = "1.7": HeroAtri(29, 17) = "0.5": HeroAtri(29, 18) = "0.1"
HeroAtri(30, 0) = "�㶺ħ��ʦ": HeroAtri(30, 1) = "����": HeroAtri(30, 2) = "Զ��": HeroAtri(30, 3) = "����ն": HeroAtri(30, 4) = "��֮��": HeroAtri(30, 5) = "���": HeroAtri(30, 6) = "����ն": HeroAtri(30, 7) = "32": HeroAtri(30, 8) = "50": HeroAtri(30, 9) = "1.2": HeroAtri(30, 10) = "18": HeroAtri(30, 11) = "16": HeroAtri(30, 12) = "24": HeroAtri(30, 13) = "1.5": HeroAtri(30, 14) = "1.5": HeroAtri(30, 15) = "3.2": HeroAtri(30, 16) = "1.7": HeroAtri(30, 17) = "0.75": HeroAtri(30, 18) = "0.45"
HeroAtri(31, 0) = "ʥ��ʿ": HeroAtri(31, 1) = "����": HeroAtri(31, 2) = "Զ��": HeroAtri(31, 3) = "����": HeroAtri(31, 4) = "�ҳϿ���": HeroAtri(31, 5) = "��ʥȰ��": HeroAtri(31, 6) = "�ϵ�֮��": HeroAtri(31, 7) = "43": HeroAtri(31, 8) = "53": HeroAtri(31, 9) = "1.1": HeroAtri(31, 10) = "20": HeroAtri(31, 11) = "15": HeroAtri(31, 12) = "21": HeroAtri(31, 13) = "1.5": HeroAtri(31, 14) = "2.1": HeroAtri(31, 15) = "2.8": HeroAtri(31, 16) = "1.7": HeroAtri(31, 17) = "0.5": HeroAtri(31, 18) = "0.3"
HeroAtri(32, 0) = "�Ȼ�ħŮ": HeroAtri(32, 1) = "����": HeroAtri(32, 2) = "Զ��": HeroAtri(32, 3) = "�����ַ�": HeroAtri(32, 4) = "�Ȼ�": HeroAtri(32, 5) = "��Ȼ֮��": HeroAtri(32, 6) = "�ƽ�": HeroAtri(32, 7) = "47": HeroAtri(32, 8) = "57": HeroAtri(32, 9) = "1.7": HeroAtri(32, 10) = "16": HeroAtri(32, 11) = "19": HeroAtri(32, 12) = "16": HeroAtri(32, 13) = "1": HeroAtri(32, 14) = "1.8": HeroAtri(32, 15) = "2.8": HeroAtri(32, 16) = "1.7": HeroAtri(32, 17) = "0.3": HeroAtri(32, 18) = "0.3"
HeroAtri(33, 0) = "��֪": HeroAtri(33, 1) = "����": HeroAtri(33, 2) = "Զ��": HeroAtri(33, 3) = "�ƽ�": HeroAtri(33, 4) = "����": HeroAtri(33, 5) = "��Ȼ֮��": HeroAtri(33, 6) = "��Ȼ֮ŭ": HeroAtri(33, 7) = "41": HeroAtri(33, 8) = "55": HeroAtri(33, 9) = "1.5": HeroAtri(33, 10) = "17": HeroAtri(33, 11) = "18": HeroAtri(33, 12) = "21": HeroAtri(33, 13) = "1.9": HeroAtri(33, 14) = "1.5": HeroAtri(33, 15) = "2.9": HeroAtri(33, 16) = "1.7": HeroAtri(33, 17) = "0.4": HeroAtri(33, 18) = "0.5"
HeroAtri(34, 0) = "����": HeroAtri(34, 1) = "����": HeroAtri(34, 2) = "Զ��": HeroAtri(34, 3) = "����֮��": HeroAtri(34, 4) = "����Ƴ��": HeroAtri(34, 5) = "��̬����": HeroAtri(34, 6) = "��̬�籩": HeroAtri(34, 7) = "49": HeroAtri(34, 8) = "53": HeroAtri(34, 9) = "1.1": HeroAtri(34, 10) = "19": HeroAtri(34, 11) = "15": HeroAtri(34, 12) = "22": HeroAtri(34, 13) = "1.9": HeroAtri(34, 14) = "1.4": HeroAtri(34, 15) = "2.5": HeroAtri(34, 16) = "1.7": HeroAtri(34, 17) = "0.25": HeroAtri(34, 18) = "0.6"
HeroAtri(35, 0) = "����֮��": HeroAtri(35, 1) = "����": HeroAtri(35, 2) = "Զ��": HeroAtri(35, 3) = "��������": HeroAtri(35, 4) = "�׻�": HeroAtri(35, 5) = "��������": HeroAtri(35, 6) = "����֮ŭ": HeroAtri(35, 7) = "41": HeroAtri(35, 8) = "49": HeroAtri(35, 9) = "1.5": HeroAtri(35, 10) = "19": HeroAtri(35, 11) = "11": HeroAtri(35, 12) = "20": HeroAtri(35, 13) = "1.8": HeroAtri(35, 14) = "1.2": HeroAtri(35, 15) = "2.7": HeroAtri(35, 16) = "1.7": HeroAtri(35, 17) = "0.633": HeroAtri(35, 18) = "0.4"


'�Ʊ�(��������)
ItemAtri(0, 0) = "��"
ItemAtri(1, 0) = "����": ItemAtri(1, 1) = "ʥ��ؿ�": ItemAtri(1, 2) = "����: ����3������� ��������3������ 3�㹥���� ": ItemAtri(1, 3) = "6": ItemAtri(1, 4) = "3": ItemAtri(1, 5) = "3": ItemAtri(1, 10) = "3":
ItemAtri(2, 0) = "������": ItemAtri(2, 1) = "ʥ��ؿ�": ItemAtri(2, 2) = "����: ����10��Ĺ����� ���5��/��������ظ��ٶ� ���125%��ħ���ָ��ٶ�": ItemAtri(2, 8) = "5": ItemAtri(2, 9) = "125": ItemAtri(2, 10) = "10":
ItemAtri(3, 0) = "���ȣ����ݣ�": ItemAtri(3, 1) = "ʥ��ؿ�": ItemAtri(3, 2) = "����: ����60�Ĺ����ٶ� ����25%�Ĺ����ٶ� ����8���������� ": ItemAtri(3, 4) = "8": ItemAtri(3, 13) = "25": ItemAtri(3, 15) = "60":
ItemAtri(4, 0) = "������": ItemAtri(4, 1) = "ʥ��ؿ�": ItemAtri(4, 2) = "����: ����6������ ����15�㹥���� ���75%��ħ���ظ��ٶ� ����10%�Ĺ����ٶ�": ItemAtri(4, 5) = "6": ItemAtri(4, 9) = "75": ItemAtri(4, 10) = "15": ItemAtri(4, 13) = "10":
ItemAtri(5, 0) = "���֮��": ItemAtri(5, 1) = "ʥ��ؿ�": ItemAtri(5, 2) = "����: +3/��������ظ��ٶ�    +50%��ħ���ظ��ٶ�    ������������   ��ȴʱ�䣺30��     ����ʱ�䣺10��       ʹ����˲������150����������Ϊ�Լ��ṩ150�����ħ����������ħ��ֻ����10�룬���10������150��ħ��û�����꣬10��� ������������ʣ��ħ��Ҳ�ᱻ�۳�������ʱ�����κ�ħ�����󶼻����ȴ�������õĶ���ħ����ȡ��": ItemAtri(5, 8) = "3": ItemAtri(5, 9) = "50":
ItemAtri(6, 0) = "����˹֮��": ItemAtri(6, 1) = "ʥ��ؿ�": ItemAtri(6, 2) = "���ԣ�����30%�Ĺ����ٶ�    ���ƣ����������ɽ��κη�Զ�ŵ�λת��Ϊ��Ǯ�����κ�Ŀ�� ͳһ����190��Ǯ������˹֮������Ϊ������Ǯ": ItemAtri(6, 13) = "30":
ItemAtri(7, 0) = "ħ��": ItemAtri(7, 1) = "ʥ��ؿ�": ItemAtri(7, 2) = "���ԣ�����3���������ԡ� ���ܣ���������ʹ�ú�Ϊ�㲹��������ħ��������Ч��ȡ��������������ÿ�������㲹��15��������ħ����������1500��Χ�ез�Ӣ�۵�λʩչ����ʱ���Զ����ܣ�����15�Σ�     ��ȴʱ�䣺15��": ItemAtri(7, 3) = "3": ItemAtri(7, 4) = "3": ItemAtri(7, 5) = "3":
ItemAtri(8, 0) = "����": ItemAtri(8, 2) = "����: ����6������     �˺��͵� (����):�ܵ���ͨ�����ֵ�20��Ӣ������˺���Զ��Ӣ��ʹ�õֵ�10��Ӣ����ɵ��˺�����ͬʱ��60%�ĸ��ʵֵ�20���Ӣ����ɵ��˺���": ItemAtri(8, 16) = "�ֵ�": ItemAtri(8, 4) = "6": ItemAtri(8, 17) = "100": ItemAtri(8, 18) = "20"
ItemAtri(9, 0) = "����Ҽ�": ItemAtri(9, 1) = "ʥ��ؿ�": ItemAtri(9, 2) = "����:����3������� ��������3������ 3�㹥����": ItemAtri(9, 3) = "3": ItemAtri(9, 4) = "3": ItemAtri(9, 5) = "6": ItemAtri(9, 10) = "3":
ItemAtri(10, 0) = "��λѥ": ItemAtri(10, 1) = "ʥ��ؿ�": ItemAtri(10, 2) = "����:����60���ٶȣ�24�㹥����    ��λ��������������16%���ƶ��ٶȣ���ײ���Ϊ0�����Դ�Խ�ˣ����������ӵ��Σ���������ʹ�ü��ܺ�buff��ʧ��     ��ȴʱ�䣺8��       ����ʱ�䣺4�� ": ItemAtri(10, 10) = "24": ItemAtri(10, 15) = "60":
ItemAtri(11, 0) = "����ϵ��": ItemAtri(11, 1) = "ʥ��ؿ�": ItemAtri(11, 2) = "����:����3������� ��������3������ 3�㹥����": ItemAtri(11, 3) = "3": ItemAtri(11, 4) = "6": ItemAtri(11, 5) = "3": ItemAtri(11, 10) = "3":
ItemAtri(12, 0) = "Զ��Ь": ItemAtri(12, 1) = "ʥ��ؿ�": ItemAtri(12, 2) = "���ԣ�����95���ƶ��ٶȡ�   ���ͣ��������������Ժ������ѷ���һ���������Ӣ�۵�λ��  ��ȴʱ�䣺60��      ʩ��ʱ�䣺3��       ħ�����ģ�75��          ����Ч�����ܺ��ٶ�֮ѥ������Ь������������Զ��Ь���ӡ�": ItemAtri(12, 15) = "95":
ItemAtri(13, 0) = "������ʹ-����": ItemAtri(13, 1) = "֧Ԯ����": ItemAtri(13, 2) = "δ���":
ItemAtri(14, 0) = "�ظ�ͷ��-����": ItemAtri(14, 1) = "֧Ԯ����": ItemAtri(14, 2) = "���ԣ�����2����������ԡ�     �ظ��⻷�������������500��Χ�ڵ������ѷ���λ2��/��������ظ��ٶȡ�": ItemAtri(14, 3) = "2": ItemAtri(14, 4) = "2": ItemAtri(14, 5) = "2": ItemAtri(14, 8) = "2":
ItemAtri(15, 0) = "����֮���쳤��-����": ItemAtri(15, 1) = "֧Ԯ����": ItemAtri(15, 2) = "���ԣ�����10��/��������ظ��ٶȡ�����30%��ħ������     ħ�����ϣ�������������������Ʒ���ܺ����������������������Ѿ���ʹ���ǿ��Եֵ�400�㷨���˺���     50���ڲ��ܵ���     ��ȴʱ�䣺60��     ����ʱ�䣺10��     ���÷�Χ��700": ItemAtri(15, 8) = "10": ItemAtri(15, 12) = "30":
ItemAtri(16, 0) = "Ӱ֮����-����": ItemAtri(16, 1) = "֧Ԯ����": ItemAtri(16, 2) = "���ԣ�����50%��ħ�ٶȡ�����6������     ��������ʹ��     �ϳɺ�û��������ÿ�εз�Ӣ��������Χ����ɱ��Ӱ֮����õ�һ��������������0��һ������ʱ���Ϊ2������ ǰ��Ѫ��ʯ���ƣ������������������ַ�ʽ������0/2/3/4/5/...ÿʹ��һ����������1��ÿ��Ӣ������ֻ�ܸ�1��Ӱ֮������ܡ����Զ��Ѿ�ʹ���ṩ����Ч�����ᱻ����С�����˺���ϡ�Ҳ�ɶԵз�ʹ�����һ����˺���     ���ƣ�8���ڻظ�400 HP     ��ȴʱ�䣺10��": ItemAtri(16, 3) = "6": ItemAtri(16, 9) = "50":
ItemAtri(17, 0) = "�ط�Ь-����": ItemAtri(17, 1) = "֧Ԯ����": ItemAtri(17, 2) = "���ԣ�����65���ƶ��ٶȡ�����250���ħ��ֵ��     �ָ�ħ�������������ָ���Χ600��Χ�����ѷ���λ135���ħ����     ��ȴʱ�䣺45��     ħ�����ģ�25��": ItemAtri(17, 7) = "250": ItemAtri(17, 15) = "65":
ItemAtri(18, 0) = "÷��˹ķ-����": ItemAtri(18, 1) = "֧Ԯ����": ItemAtri(18, 2) = "���ԣ�����5����������ԣ�5��Ļ��ס�     �ظ��⻷�������������500��Χ�ڵ������ѷ���λ4��/��������ظ��ٶȡ�     ���������������ָ�750��Χ�ڵ��ѷ���λ250�������������2�㻤�ס��ڳ���ʱ�����޷����ӡ�     ����ʱ�䣺25��     ��ȴʱ�䣺45��     ħ�����ģ�150�� ": ItemAtri(18, 3) = "5": ItemAtri(18, 4) = "5": ItemAtri(18, 5) = "5": ItemAtri(18, 8) = "4": ItemAtri(18, 11) = "5":
ItemAtri(19, 0) = "��֮���ͽ���": ItemAtri(19, 1) = "֧Ԯ����": ItemAtri(19, 2) = "+8��������      +8������     ����ͨ���ٴι���������     �;ù⻷��+5%�ƶ��ٶȺ͹����ٶ�     ս�ģ��ܹ�ʹ��3�Σ�ʹ��֮�������Χ�ĵ�λ���10%���ƶ��ٶȺ͹����ٶȼӳɣ�����6��     CD:30��": ItemAtri(19, 3) = "8": ItemAtri(19, 4) = "8": ItemAtri(19, 5) = "8": ItemAtri(19, 10) = "8": ItemAtri(19, 13) = "5": ItemAtri(19, 15) = "5":
ItemAtri(20, 0) = "ʥ��ָ��": ItemAtri(20, 1) = "֧Ԯ����": ItemAtri(20, 2) = "δ���":
ItemAtri(21, 0) = "��ڤ����-����": ItemAtri(21, 1) = "֧Ԯ����": ItemAtri(21, 2) = "���ԣ�����5��Ļ��ס�����2����������ԡ�     �����������������������������Χ�ѷ���λ2��Ļ��� (700 ��Ч��Χ) ��     ħ�����ģ�50��     ��ȴʱ�䣺15��     ����ʱ�䣺25�루�Է�Ӣ�۵�λ����30�룩": ItemAtri(21, 3) = "2": ItemAtri(21, 4) = "2": ItemAtri(21, 5) = "2": ItemAtri(21, 11) = "5":
ItemAtri(22, 0) = "��Ѫ��ļ�Ʒ-����": ItemAtri(22, 1) = "֧Ԯ����": ItemAtri(22, 2) = "δ���":
ItemAtri(23, 0) = "����ѫ��": ItemAtri(23, 1) = "֧Ԯ����": ItemAtri(23, 2) = "+6����     +50%ħ���ָ��ٶ�     ��עһ�����Եз���λʹ�ã�ʹ��֮����͸õ�λͬʱ����6�㻤�ף�����7�룬CD7��     ʩ����Χ��800": ItemAtri(23, 9) = "50": ItemAtri(23, 11) = "6":
ItemAtri(24, 0) = "Aghanim������": ItemAtri(24, 1) = "�ط�ʥ��": ItemAtri(24, 2) = "���ԣ�����10��ȫ���ԣ����200�������ޣ����150ħ������    ���������������������ĳЩӢ�۴��е�����": ItemAtri(24, 3) = "10": ItemAtri(24, 4) = "10": ItemAtri(24, 5) = "10": ItemAtri(24, 6) = "200": ItemAtri(24, 7) = "150":
ItemAtri(25, 0) = "Dagon֮����": ItemAtri(25, 1) = "�ط�ʥ��": ItemAtri(25, 2) = "���ԣ�����3���������ԣ�����9������������12/14/16/18/20������������180/160/140/120/100��ħ������ȴʱ��40/36/32/28/24�룩���400/500/600/700/800���˺����ͷž���600/650/700/750/800������ͨ����������������������4������3���������ԣ�����9������������12/14/16/18/20������������180/160/140/120/100��ħ������ȴʱ��40/36/32/28/24�룩���400/500/600/700/800���˺����ͷž���600/650/700/750/800������ͨ����������������������4��     ���������������": ItemAtri(25, 3) = "3": ItemAtri(25, 4) = "3": ItemAtri(25, 5) = "15/17/19/21/23":
ItemAtri(26, 0) = "������ɴ": ItemAtri(26, 1) = "�ط�ʥ��": ItemAtri(26, 2) = "+5 ����     +5�ָ�����     +12 ����     AOE���ܣ�����Ŀ�������ڵз���λ��ħ������     ħ������������25%     ���÷�Χ��475     ʩ�����룺800     ����ʱ�䣺15     ħ�����ģ�75     ��ȴʱ�䣺30": ItemAtri(26, 5) = "12": ItemAtri(26, 8) = "5": ItemAtri(26, 11) = "5":
ItemAtri(27, 0) = "������": ItemAtri(27, 1) = "�ط�ʥ��": ItemAtri(27, 2) = "���ԣ�����15����������6������     �ٻ����飨������+8/12/16������+15/21/24���������������50ħ������ȴʱ��90�룩���������飬�ٻ�ӵ������������1����ħսʿ��400/600/800����ֵ��21/41/61����ͨ������6/8/10�Ļ��ף�40%ħ���˺����⣬25/50/75�����ķ�����٣�ͬʱ����60%ħ����ٵ�����ֵ������ɱ�����ĵ�λ���400/500/600�˺��������Ը��������ʱӵ��ħ�����ڣ���Ұ1000������������������1����ħ���֣�400/600/800����ֵ��31/61/91�Ĵ��̹�������350/450/550�Ĺ�����̣�6/8/10�Ļ��ף�40%ħ���˺����⣬+3/6/9%�������ƶ��ٶȵ��;ù⻷��900��Ч��Χ����200/250/300�ķ���ȼ�գ�ͬʱ��ɵ����˺���ʩ������250����Ϊ��ս����ͬһʱ��ֻ���ٻ�һ�飬�޷�����Զ�ŵ�λ������ɱ�����100��ң�������ʱ��35�룬���Թ�������������������2�Ρ�": ItemAtri(27, 3) = "6": ItemAtri(27, 5) = "15":
ItemAtri(28, 0) = "Eul����ʥ����": ItemAtri(28, 1) = "�ط�ʥ��": ItemAtri(28, 2) = "���ԣ�����10����������125%ħ���ظ��ٶȣ�����25�ƶ��ٶ�     ����磨������     ���������ʹ�ã���ȴʱ��30�룩����磨��ɶԷ�ͣ���ڿ���3.5�룩��ʩ������700�������Զ��Լ�": ItemAtri(28, 5) = "10": ItemAtri(28, 9) = "125": ItemAtri(28, 15) = "25":
ItemAtri(29, 0) = "ˢ����": ItemAtri(29, 1) = "�ط�ʥ��": ItemAtri(29, 2) = "��ħ��ʦAghanim�Ľ�����     ���ԣ����5��/��������ظ��ٶȡ�     ���150%��ħ���ظ��ٶȡ�     ����40��Ĺ�������     ˢ�£���������ʹ�����̽������м���/��Ʒ����ȴʱ��(������ˢ��������     ��ȴʱ�䣺160��     ħ�����ģ�375��": ItemAtri(29, 8) = "5": ItemAtri(29, 9) = "150": ItemAtri(29, 10) = "40":
ItemAtri(30, 0) = "���䷨��": ItemAtri(30, 1) = "�ط�ʥ��": ItemAtri(30, 2) = "���䷨�����ԣ�����10������������10%�����ٶȣ�����10������     ���䣨������     ��һ��Ŀ��������Է����ƽ�600����     ʩ������ 800     ����ħ�� 25     ��ȴʱ�� 25��": ItemAtri(30, 5) = "10": ItemAtri(30, 10) = "10": ItemAtri(30, 13) = "10":
ItemAtri(31, 0) = "Guinsoo��а������": ItemAtri(31, 1) = "�ط�ʥ��": ItemAtri(31, 2) = "���ԣ�����35����������10������������10�����ݡ�����150%��ħ���ظ��ٶ�     �����������������������100ħ������ȴʱ��35�룩��Ŀ����һֻ�����ڼ�ֻ�ܱ������ֱ�������Ч���Ҳ��ܹ�����ֻ�л������ƶ��ٶȣ�����3.5��": ItemAtri(31, 3) = "10": ItemAtri(31, 4) = "10": ItemAtri(31, 5) = "35": ItemAtri(31, 9) = "150":
ItemAtri(32, 0) = "��Թ": ItemAtri(32, 1) = "�ط�ʥ��": ItemAtri(32, 2) = "���ԣ�+20������     +40�㹥����     +30%�����ٶ�     ���225%��ħ���ظ��ٶȡ�     ���ȼ�գ�����������Ĭ���Ŀ��5���Ӳ���֮���������25%��ħ���˺�,��ȴʱ��18��": ItemAtri(32, 5) = "20": ItemAtri(32, 9) = "225": ItemAtri(32, 10) = "40": ItemAtri(32, 13) = "30":

End Sub

'Ӣ������¼���ӹ���
Private Sub HrNmEnroll(x As String, HrTp, HrNm)
Dim i#
If HrTp.Text = x Then
HrNm.Clear
Do While HeroAtri(i, 0) <> ""
If HeroAtri(i, 1) = x Then
HrNm.AddItem HeroAtri(i, 0)
End If
i = i + 1
Loop
End If
End Sub


'ѡ��Ӣ������
Private Sub HeroType(HrTp, HrNm)
Dim i%
If HrTp.Text = "ȫ��" Then
HrNm.Clear
Do While HeroAtri(i, 0) <> ""
HrNm.AddItem HeroAtri(i, 0)
i = i + 1
Loop
End If
Call HrNmEnroll("����", HrTp, HrNm)
Call HrNmEnroll("����", HrTp, HrNm)
Call HrNmEnroll("����", HrTp, HrNm)
End Sub


'ѡ��Ӣ��A����
Private Sub HrATp_Click()
HeroType HrATp, HrANm
End Sub

'ѡ��Ӣ��B����
Private Sub HrBTp_Click()
HeroType HrBTp, HrBNm
End Sub

'��������¼���ӹ���(x�̵���)
Private Sub ItemEnroll(x As String, Shop, HrItem)
Dim i#, Index#
i = 1
For Index = 1 To 6
If Shop.Text = x Then
HrItem(Index).Clear
Do While ItemAtri(i, 0) <> ""
If ItemAtri(i, 1) = x Then
HrItem(Index).AddItem ItemAtri(i, 0)
End If
i = i + 1
Loop
End If
i = 1
Next
End Sub


'ѡ������̵�
Private Sub ItemShop(Shop, HrItem)
Dim i%, Index%
For Index = 1 To 6
If Shop.Text = "ȫ��" Then
HrItem(Index).Clear
Do While ItemAtri(i, 0) <> ""
HrItem(Index).AddItem ItemAtri(i, 0)
i = i + 1
Loop
End If
Call ItemEnroll("ʥ��ؿ�", Shop, HrItem)
Call ItemEnroll("֧Ԯ����", Shop, HrItem)
Call ItemEnroll("�ط�ʥ��", Shop, HrItem)
Call ItemEnroll("�������", Shop, HrItem)
Call ItemEnroll("�Ȼ�����", Shop, HrItem)
Call ItemEnroll("Զ�ű���", Shop, HrItem)
Call ItemEnroll("��Ʒ����", Shop, HrItem)
Call ItemEnroll("��������", Shop, HrItem)
Call ItemEnroll("����ɪ��������", Shop, HrItem)
Call ItemEnroll("�漣����", Shop, HrItem)
Call ItemEnroll("��������", Shop, HrItem)
Call ItemEnroll("�ؾ�ʵ����", Shop, HrItem)
Call ItemEnroll("�ؾ��̵�", Shop, HrItem)
i = 0
Next
End Sub

'ѡ��Ӣ��A�����̵�
Private Sub ShopA_Click()
ItemShop ShopA, HrAItem
End Sub

'ѡ��Ӣ��B�����̵�
Private Sub Shopb_Click()
ItemShop ShopB, HrBItem
End Sub


'���㼰��ʾ״̬���̼�

'ȷ�ϵȼ�
Private Sub ConfirmLevel(HrLv, Lv)
HrLv.Enabled = True
If HrLv.Text = "" Then
Lv = 0
Else
Lv = Val(HrLv.Text)
End If
End Sub

'ȷ��bonus��
Private Sub ConfirmBonus(Hrbonus, bonus)
Hrbonus.Enabled = True
If Hrbonus.Text = "" Then
bonus = 0
Else
bonus = Val(Hrbonus.Text)
End If
End Sub

'������������
Private Sub TriAtributes(pow, agi, wit, Lv, N, bonus, ItemN)
'����
pow = HeroAtri(N, 10) + (Lv - 1) * HeroAtri(N, 13) + bonus * 2
Dim i
For i = 1 To 6
pow = pow + ItemAtri(ItemN(i), 3)
Next

'����
agi = HeroAtri(N, 11) + (Lv - 1) * HeroAtri(N, 14) + bonus * 2
For i = 1 To 6
pow = pow + ItemAtri(ItemN(i), 4)
Next

 '����
wit = HeroAtri(N, 12) + (Lv - 1) * HeroAtri(N, 15) + bonus * 2
For i = 1 To 6
pow = pow + ItemAtri(ItemN(i), 5)
Next

End Sub

'����Ѫ����Ѫ�ظ�
Private Sub CalcuHP(pow, HP, HPM, RHP, HrCurHP, HrMaxHP, ItemN)
HPM = pow * 19 + 150

Dim i
For i = 1 To 6
HPM = HPM + ItemAtri(ItemN(i), 6)
Next

HP = HPM
HrMaxHP.Text = Int(HPM)
If Int(HP) <= 0 Then
HrCurHP.Text = 0
Else
HrCurHP.Text = Int(HP)
End If
'Ѫ���ظ�
RHP = pow * 0.03

For i = 1 To 6
RHP = RHP + ItemAtri(ItemN(i), 8)
Next

End Sub

'�������������ظ�
Private Sub CalcuMP(wit, MP, MPM, RMP, HrCurMP, HrMaxMP, ItemN)
MPM = wit * 13

Dim i
For i = 1 To 6
MPM = MPM + ItemAtri(ItemN(i), 7)
Next

MP = MPM
HrMaxMP.Text = Int(MPM)
If Int(MP) <= 0 Then
HrCurMP.Text = 0
Else
HrCurMP.Text = Int(MP)
End If
'�����ظ�
RMP = wit * 0.04

For i = 1 To 6
RMP = RMP * (1 + ItemAtri(ItemN(i), 9) / 100)
Next
End Sub

'���㹥����
Private Sub CalcuAttack(N, pow, agi, wit, min, max, HrAttMin, HrAttMax, ItemN)
If HeroAtri(N, 1) = "����" Then
min = HeroAtri(N, 7) - HeroAtri(N, 10) + pow

Dim i
For i = 1 To 6
min = min + ItemAtri(ItemN(i), 10)
Next

HrAttMin.Text = Int(min)
max = HeroAtri(N, 8) - HeroAtri(N, 10) + pow

For i = 1 To 6
max = max + ItemAtri(ItemN(i), 10)
Next
HrAttMax.Text = Int(max)

ElseIf HeroAtri(N, 1) = "����" Then
min = HeroAtri(N, 7) - HeroAtri(N, 11) + agi
For i = 1 To 6
min = min + ItemAtri(ItemN(i), 10)
Next
HrAttMin.Text = Int(min)

max = HeroAtri(N, 8) - HeroAtri(N, 11) + agi

For i = 1 To 6
max = max + ItemAtri(ItemN(i), 10)
Next
HrAttMax.Text = Int(max)

ElseIf HeroAtri(N, 1) = "����" Then
min = HeroAtri(N, 7) - HeroAtri(N, 12) + wit

For i = 1 To 6
min = min + ItemAtri(ItemN(i), 10)
Next
HrAttMin.Text = Int(min)
max = HeroAtri(N, 8) - HeroAtri(N, 12) + wit

For i = 1 To 6
max = max + ItemAtri(ItemN(i), 10)
Next
HrAttMax.Text = Int(max)
End If
End Sub

'���㻤�׼�tag����
Private Sub CalcuDefence(N, agi, Def, HrDef, LabelDef, ItemN)
Def = HeroAtri(N, 9) - HeroAtri(N, 11) * 0.14 + agi * 0.14

Dim i
For i = 1 To 6
Def = Def + ItemAtri(ItemN(i), 11)
Next
HrDef.Text = Int(Def)

LabelDef.ToolTipText = "�������" & Int(6 / (1 / Def + 0.06) * 10) / 10 & "%"
End Sub

'����ħ��
Private Sub CalcuResistance(HrRes, Res, ItemN)
'ħ������
Dim i, ResMax, ResStore
For i = 1 To 6
ResStore = ItemAtri(ItemN(i), 12)
If ResStore > ResMax Then
ResMax = ResStore
End If
Next

Res = 1 - 0.75 * (1 - ResMax * 0.01)
HrRes.Text = Int(Res * 100 * 10) / 10 & "%"
End Sub

'����ر���
Private Sub CalcuEvasion(HrEva, Eva, ItemN)
Dim i
For i = 1 To 6
Eva = Eva + ItemAtri(ItemN(i), 14) * 0.01
Next
HrEva.Text = Int(Eva * 100 * 10) / 10 & "%"
End Sub

'���㹥���ٶȼ�tag�������(�ٷ�����С�����һλ)
Private Sub CalcuAttackSpeed(N, agi, V, HrV, aint, LabelV, min, max, ItemN)
V = agi * 0.01
Dim i
For i = 1 To 6
V = V + ItemAtri(ItemN(i), 13) * 0.01
Next
HrV.Text = Int(100 * V * 10) / 10 & "%"
aint = Int((HeroAtri(N, 16) / (1 + V)) * 100) / 100
If aint < 1 Then
LabelV.ToolTipText = "�������=0" & aint & "��"
Else
LabelV.ToolTipText = "�������=" & aint & "��"
End If
End Sub

'ԭʼ����dps
Private Sub RudeDPS(min, max, aint, HrDPS)
HrDPS.Text = Int((max + min) / 2 / aint * 10) / 10
End Sub

'��ʾ����״̬
Private Sub ConfirmState(state, HrSt)
state = "����"
HrSt.Text = state
 End Sub

'ȷ��Ӣ���Լ�Ӣ�ۼ���¼��
Private Sub HrSpEnroll(HrNm, HrSpNm, N)
'ȷ��Ӣ���к�
Dim i%
Do While HeroAtri(i, 0) <> ""
If HrNm.Text = HeroAtri(i, 0) Then
N = i
End If
i = i + 1
Loop
'������ʾ
HrSpNm(1).Caption = HeroAtri(N, 3)
HrSpNm(2).Caption = HeroAtri(N, 4)
HrSpNm(3).Caption = HeroAtri(N, 5)
HrSpNm(4).Caption = HeroAtri(N, 6)
End Sub


'ѡ��Ӣ��A��Ӣ��A����¼�뼰״̬��ʾ��
Private Sub HrANm_Click()
Frame1.Enabled = True
Call HrSpEnroll(HrANm, HrASpNm, A)
HrALv_change
End Sub

'ѡ��Ӣ��B��Ӣ��B����¼�뼰״̬��ʾ��
Private Sub HrBNm_Click()
Frame2.Enabled = True
Call HrSpEnroll(HrBNm, HrBSpNm, B)
HrBLv_change
End Sub

'Ӣ��A�ȼ�Ӱ��
Private Sub HrALv_change()
'ȷ�ϵȼ�
Call ConfirmLevel(HrALv, ALv)
'ȷ��bonus��
Call ConfirmBonus(HrABonus, Abonus)
'������������
Call TriAtributes(Apow, Aagi, Awit, ALv, A, Abonus, ItemA)
'����Ѫ����Ѫ�ظ�
Call CalcuHP(Apow, AHP, AHPM, ARHP, HrACurHP, HrAMaxHP, ItemA)
'�������������ظ�
Call CalcuMP(Awit, AMP, AMPM, ARMP, HrACurMP, HrAMaxMP, ItemA)
'���㹥����
Call CalcuAttack(A, Apow, Aagi, Awit, AMin, AMax, HrAAttMin, HrAAttMax, ItemA)
'���㻤�׼�tag����
Call CalcuDefence(A, Aagi, ADef, HrADef, LabelADef, ItemA)
'����ħ�����ر�
Call CalcuResistance(HrARes, ARes, ItemA)
Call CalcuEvasion(HrAEva, AEva, ItemA)
'���㹥���ٶȼ�tag�������(�ٷ�����С�����һλ)
Call CalcuAttackSpeed(A, Aagi, Va, HrAV, AaInt, LabelAV, AMin, AMax, ItemA)
'ԭʼ����dps
Call RudeDPS(AMin, AMax, AaInt, HrADPS)
'��ʾ����״̬
Call ConfirmState(Astate, HrASt)
End Sub

'Ӣ��B�ȼ�Ӱ��
Private Sub HrBLv_change()
'ȷ�ϵȼ�
Call ConfirmLevel(HrBLv, BLv)
'ȷ��bonus��
Call ConfirmBonus(HrBBonus, Bbonus)
'������������
Call TriAtributes(Bpow, Bagi, Bwit, BLv, B, Bbonus, ItemB)
'����Ѫ����Ѫ�ظ�
Call CalcuHP(Bpow, BHP, BHPM, BRHP, HrBCurHP, HrBMaxHP, ItemB)
'�������������ظ�
Call CalcuMP(Bwit, BMP, BMPM, BRMP, HrBCurMP, HrBMaxMP, ItemB)
'���㹥����
Call CalcuAttack(B, Bpow, Bagi, Bwit, BMin, BMax, HrBAttMin, HrBAttMax, ItemB)
'���㻤�׼�tag����
Call CalcuDefence(B, Bagi, BDef, HrBDef, LabelBDef, ItemB)
'����ħ�����ر�
Call CalcuResistance(HrBRes, BRes, ItemB)
Call CalcuEvasion(HrBEva, BEva, ItemB)
'���㹥���ٶȼ�tag�������(�ٷ�����С�����һλ)
Call CalcuAttackSpeed(B, Bagi, Vb, HrBV, BaInt, LabelBV, BMin, BMax, ItemB)
'ԭʼ����dps
Call RudeDPS(BMin, BMax, BaInt, HrBDPS)
'��ʾ����״̬
Call ConfirmState(BState, HrBSt)
End Sub

'Ӣ��A������Ӱ��
Private Sub HrAbonus_change()
HrALv_change
End Sub

'Ӣ��B������Ӱ��
Private Sub HrBbonus_change()
HrBLv_change
End Sub


'ȷ�ϵ����Լ����߼���¼�루�������Ƹ��谴ť��
Private Sub ItemSpEnroll(HrItem, ItemSp, ItemN)
'ȷ�ϵ����к�
Dim i%, Index%
For Index = 1 To 6
Do While ItemAtri(i, 0) <> ""
If HrItem(Index).Text = ItemAtri(i, 0) Then
ItemN(Index) = i
End If
i = i + 1
Loop
i = 0
Next

'���߼��ܣ�δ��ɣ�
For Index = 1 To 6
ItemSp(Index).ToolTipText = ItemAtri(ItemN(Index), 2)
Next
End Sub


Private Sub HrAItem_Click(Index As Integer)
Call ItemSpEnroll(HrAItem, ItemSpA, ItemA)
HrALv_change
End Sub

Private Sub HrBItem_Click(Index As Integer)
Call ItemSpEnroll(HrBItem, ItemSpB, ItemB)
HrBLv_change
End Sub


'ս������״̬��ʾ�ӹ��̣�ֻ��ʾ�����㣬������ر�����ֵ��

'��ʾѪ��
Private Sub ShowHP(HP, HPM, HrCurHP, HrMaxHP)
HrMaxHP.Text = HPM
If Int(HP) <= 0 Then
HrCurHP.Text = 0
Else
HrCurHP.Text = Int(HP)
End If
End Sub

'��ʾ����
Private Sub ShowMP(MP, MPM, HrCurMP, HrMaxMP)
HrMaxMP.Text = MPM
HrCurMP.Text = Int(MP)
If Int(MP) <= 0 Then
HrCurMP.Text = 0
Else
HrCurMP.Text = Int(MP)
End If
End Sub

'��ʾ������
Private Sub ShowAttack(min, max, HrAttMin, HrAttMax)
HrAttMin.Text = Int(min)
HrAttMax.Text = Int(max)
End Sub

'��ʾ���׼�tag����
Private Sub ShowDefence(Def, HrDef, LabelDef)
HrDef.Text = Int(Def)
LabelDef.ToolTipText = "�������" & Int(6 / (1 / Def + 0.06) * 10) / 10 & "%"
End Sub

'��ʾħ��
Private Sub ShowResistance(HrRes, Res)
HrRes.Text = Int(Res * 100 * 10) / 10 & "%"
End Sub

'��ʾ�ر���
Private Sub ShowEvasion(HrEva, Eva)
HrEva.Text = Int(Eva * 100 * 10) / 10 & "%"
End Sub

'��ʾ�����ٶȼ�tag�������(�ٷ�����С�����һλ)
Private Sub ShowAttackSpeed(V, HrV, aint, LabelV)
HrV.Text = 100 * V & "%"
LabelV.ToolTipText = "�������" & aint & "��"
End Sub

'���㲢��ʾ����dps
Private Sub RealDPS(Container, HrDPS)
HrDPS.Text = Int(Container / Counter * 100 * 10) / 10
End Sub

'��ʾս��״̬
Private Sub BattleState(state, HrSt)
HrSt.Text = state
 End Sub
 

'��ʼģ�⣨����0.01�룩
Private Sub Start_Click()
'��ֵ
AbAt = HeroAtri(A, 17)
AbCast = HeroAtri(A, 18)
BbAt = HeroAtri(B, 17)
BbCast = HeroAtri(B, 18)
ContainerA = 0
ContainerB = 0

'�������߱������ܣ�������£�
'��ҫ�⻷
Call HYHalo(ItemA, BRHP)
'�ظ��⻷
Call HPHalo(ItemA, ARHP)
'�Ի͹⻷
Call RMPHalo(ItemA, ARMP)
'רע�⻷
Call IDefHalo(ItemA, ADef)
'˪��⻷
Call HailHalo(ItemA, Vb)

'��ҫ�⻷
Call HYHalo(ItemB, ARHP)
'�ظ��⻷
Call HPHalo(ItemB, BRHP)
'�Ի͹⻷
Call RMPHalo(ItemB, BRMP)
'רע�⻷
Call IDefHalo(ItemB, BDef)
'˪��⻷
Call HailHalo(ItemB, Va)

'����һ��
Call CriticalHitValue(ItemA, ACHChance, ACHTimes)
Call CriticalHitValue(ItemB, BCHChance, BCHTimes)
'�ػ�
Call HeavyHitValue(ItemA, AStunChance, AStunTime)
Call HeavyHitValue(ItemB, BStunChance, BStunTime)
'����
Call PoisonValue(ItemA, APoisonDamage, APoisonTime)
Call PoisonValue(ItemB, BPoisonDamage, BPoisonTime)
'�ֵ�
Call ShieldValue(ItemA, AShChance, AShDamage)
Call ShieldValue(ItemB, BShChance, BShDamage)
'��Ѫ
Call AbsorbValue(ItemA, Aabsorb)
Call AbsorbValue(ItemB, Babsorb)

'�������ʲ���ʼ��ʱ
If EmuPace.Text = "1x" Then
BattleTimer.Interval = 10
ElseIf EmuPace.Text = "2x" Then
BattleTimer.Interval = 5
ElseIf EmuPace.Text = "5x" Then
BattleTimer.Interval = 2
ElseIf EmuPace.Text = "10x" Then
BattleTimer.Interval = 1
End If
End Sub

'�⻷����������ģ��

'��ҫ�⻷
Private Sub HYHalo(ItemN, obRHP)
Dim i, storage
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "��ҫ" Then
storage = storage + ItemAtri(ItemN(i), 17)
End If
Next
obRHP = obRHP - storage
End Sub

'�ظ��⻷
Private Sub HPHalo(ItemN, RHP)
Dim i, storage
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "�ظ��⻷" Then
storage = storage + ItemAtri(ItemN(i), 17)
End If
Next
RHP = RHP + storage
End Sub

'�Ի͹⻷
Private Sub RMPHalo(ItemN, RMP)
Dim i, storage
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "�Ի͹⻷" Then
storage = storage + ItemAtri(ItemN(i), 17)
End If
Next
RMP = RMP + storage
End Sub

'רע�⻷
Private Sub IDefHalo(ItemN, Def)
Dim i, storage
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "רע�⻷" Then
storage = storage + ItemAtri(ItemN(i), 17)
End If
Next
Def = Def + storage
End Sub

'˪��⻷
Private Sub HailHalo(ItemN, obV)
Dim i, storage
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "˪��⻷" Then
storage = storage + ItemAtri(ItemN(i), 17)
End If
Next
obV = obV - storage
End Sub

'����һ��
Private Sub CriticalHitValue(ItemN, CHChance, CHtimes)
Dim i
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "����һ��" Then
If ItemAtri(ItemN(i), 17) >= CHChance Then
CHChance = ItemAtri(ItemN(i), 17)
CHtimes = ItemAtri(ItemN(i), 18)
End If
End If
Next
End Sub

'�ػ�
Private Sub HeavyHitValue(ItemN, StunChance, Stuntime)
Dim i
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "�ػ�" Then
If ItemAtri(ItemN(i), 17) >= StunChance Then
StunChance = ItemAtri(ItemN(i), 17)
Stuntime = ItemAtri(ItemN(i), 18)
End If
End If
Next
End Sub

'����
Private Sub PoisonValue(ItemN, PoisonDamage, PoisonTime)
Dim i
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "����" Then
If ItemAtri(ItemN(i), 17) >= PoisonDamage Then
PoisonDamage = ItemAtri(ItemN(i), 17)
PoisonTime = ItemAtri(ItemN(i), 18)
End If
End If
Next
End Sub

'�ֵ�
Private Sub ShieldValue(ItemN, ShChance, ShDamage)
Dim i
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "�ֵ�" Then
If ItemAtri(ItemN(i), 17) >= ShChance Then
ShChance = ItemAtri(ItemN(i), 17)
ShDamage = ItemAtri(ItemN(i), 18)
End If
End If
Next
End Sub

'��Ѫ
Private Sub AbsorbValue(ItemN, absorb)
Dim i, storage
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "��Ѫ" Then
storage = storage + ItemAtri(ItemN(i), 17)
End If
Next
absorb = storage
End Sub

'����
Private Sub Revive(ItemN, HrItem, HP, HPM, MP, MPM, Hero)
Dim i, storage
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "����" Then
storage = i
End If
Next
If storage <> 0 Then
If HP <= 0 Then
HP = HPM
MP = MPM
ItemN(storage) = 0
HrItem(storage).Text = ""
BattleLog.Text = BattleLog.Text & Int(Counter / 10) / 10 & "�룺" & Hero & "�Ŵ���ԭ�ظ��˸����" & vbCrLf & vbCrLf
End If
End If
End Sub

'ѣ���ж�ģ��
Private Sub StunJudge(state, Stun, Stuntime)
If state = "ѣ��" Then
If Counter = Stun + Stuntime * 100 Then
state = "����"
End If
End If
End Sub

'�ж��ж�ģ��
Private Sub PoisonJudge(PoisonSt, Poison, obRHP, PoisonDamage, PoisonTime)
If PoisonSt = 1 Then
If Counter = Poison + 100 * PoisonTime Then
PoisonSt = 0
obRHP = obRHP + PoisonDamage
End If
End If
End Sub

'������Ѫģ��
Private Sub Recovery(HP, HPM, RHP, MP, MPM, RMP)
If HP < HPM Then
HP = HP + RHP / 100
End If
If HP > HPM Then
HP = HPM
End If
If MP < MPM Then
MP = MP + RMP / 100
End If
If MP > MPM Then
MP = MPM
End If
End Sub


'����ģ����

'�ж�״̬�����ж���ѡ��(�Զ�ר��)(δ���)
Private Sub Priority(state, attack)
If state = "����" Then
state = "������"
attack = 0
End If
End Sub

'��ͨ����ģ��+���߱�������

'������������ʼ
Private Sub NACounter(state, attack)
If state = "������" Then
attack = attack + 1
End If
End Sub

'�˺�����ʱ ������

'Miss�ж�
Private Sub Miss(obEva, attacker)
Dim Missrandom
Randomize
Missrandom = Int(Rnd * 100) + 1
If Missrandom <= Int(obEva) Then
If Int(Counter / 10) / 10 < 1 Then
BattleLog.Text = BattleLog.Text & Int(Counter / 10) / 10 & "�룺" & attacker & "Miss����" & vbCrLf & vbCrLf
Else
BattleLog.Text = BattleLog.Text & "0" & Int(Counter / 10) / 10 & "�룺" & attacker & "Miss����" & vbCrLf & vbCrLf
End If
EvaCounter = 0
Else: EvaCounter = 1
End If
End Sub

'ԭʼ��������ͱ����ж�
Private Sub PureDMG(bat, V, attack, min, max, Def, damage, CHChance, CHtimes, attacker)
Dim i%, decrease
i = Int(bat / (1 + V) * 100)
If attack = i Then
Dim random, CHrandom
Randomize
random = Int(Rnd * (max - min + 1)) + min
decrease = 6 / (1 / Def + 0.06) / 100
Randomize
CHrandom = Int(Rnd * 100) + 1
If CHrandom <= Int(100 * CHChance) Then
If Int(Counter / 10) / 10 < 1 Then
BattleLog.Text = BattleLog.Text & Int(Counter / 10) / 10 & "�룺" & attacker & "���������һ������" & vbCrLf & vbCrLf
Else
BattleLog.Text = BattleLog.Text & "0" & Int(Counter / 10) / 10 & "�룺" & attacker & "���������һ������" & vbCrLf & vbCrLf
End If
damage = random * CHtimes * (1 - decrease)
Else
damage = random * (1 - decrease)
End If

End If
End Sub

'
'�ػ��ж�
Private Sub HeavyCalcu(bat, V, attack, StunChance, Stun, obstate, attacker, defender)
Dim i%, Stunrandom
i = Int(bat / (1 + V) * 100)
If attack = i Then
Randomize
Stunrandom = Int(Rnd * 100) + 1
If Stunrandom <= Int(100 * StunChance) Then
obstate = "ѣ��"
Stun = Counter
If Int(Counter / 10) / 10 < 1 Then
BattleLog.Text = BattleLog.Text & Int(Counter / 10) / 10 & "�룺" & defender & "��" & attacker & "�����ˣ���" & vbCrLf & vbCrLf
Else
BattleLog.Text = BattleLog.Text & "0" & Int(Counter / 10) / 10 & "�룺" & defender & "��" & attacker & "�����ˣ���" & vbCrLf & vbCrLf
End If
End If
End If
End Sub

'�����ж�
Private Sub PoisonCalcu(bat, V, attack, PoisonDamage, PoisonSt, Poison, obRHP, defender)
Dim i%
i = Int(bat / (1 + V) * 100)
If attack = i Then
If PoisonDamage <> 0 And PoisonSt = 0 Then
Poison = Counter
PoisonSt = 1
obRHP = obRHP - PoisonDamage
If Int(Counter / 10) / 10 < 1 Then
BattleLog.Text = BattleLog.Text & "0" & Int(Counter / 10) / 10 & "�룺" & defender & "�ж��ˣ���" & vbCrLf & vbCrLf
Else
BattleLog.Text = BattleLog.Text & Int(Counter / 10) / 10 & "�룺" & defender & "�ж��ˣ���" & vbCrLf & vbCrLf
End If
End If
End If
End Sub

'�ֵ��ж�
Private Sub ShieldCalcu(bat, V, attack, obShChance, obShDamage, defender, damage)
Dim i%, SHrandom
i = Int(bat / (1 + V) * 100)
If attack = i Then
SHrandom = Int(Rnd * 100) + 1
If SHrandom <= Int(100 * obShChance) Then
If Int(Counter / 10) / 10 < 1 Then
BattleLog.Text = BattleLog.Text & "0" & Int(Counter / 10) / 10 & "�룺" & defender & "��ס�˹�������" & vbCrLf & vbCrLf
Else
BattleLog.Text = BattleLog.Text & Int(Counter / 10) / 10 & "�룺" & defender & "��ס�˹�������" & vbCrLf & vbCrLf
End If
damage = damage - obShDamage
End If
End If
End Sub

'��Ѫ����ʾս����¼
Private Sub HPCalcu(bat, V, attack, Container, damage, obHP, attacker, defender)
Dim i%
i = Int(bat / (1 + V) * 100)
If attack = i Then
Container = Container + damage
obHP = obHP - damage
'�˺���ʾ
If Int(Counter / 10) / 10 < 1 Then
BattleLog.Text = BattleLog.Text & "0" & Int(Counter / 10) / 10 & "�룺" & attacker & "����ͨ������" & defender & "�����" & Int(damage) + 1 & "���˺�" & vbCrLf & vbCrLf
Else
BattleLog.Text = BattleLog.Text & Int(Counter / 10) / 10 & "�룺" & attacker & "����ͨ������" & defender & "�����" & Int(damage) + 1 & "���˺�" & vbCrLf & vbCrLf
End If
End If
End Sub

'��Ѫ�ж�
Private Sub AbsorbCalcu(bat, V, attack, damage, absorb, HP, attacker, defender)
Dim i%
i = Int(bat / (1 + V) * 100)
If attack = i Then
Dim absorbSto
If absorb <> 0 Then
absorbSto = Int(damage * absorb * 10) / 10
HP = HP + absorbSto
If Int(Counter / 10) / 10 < 1 Then
BattleLog.Text = BattleLog.Text & "0" & Int(Counter / 10) / 10 & "�룺" & attacker & "��ȡ��" & defender & Int(absorbSto) + 1 & "������" & vbCrLf & vbCrLf
Else
BattleLog.Text = BattleLog.Text & Int(Counter / 10) / 10 & "�룺" & attacker & "��ȡ��" & defender & Int(absorbSto) + 1 & "������" & vbCrLf & vbCrLf
End If
End If
End If
End Sub

'һ�ֹ�������
Private Sub BattleEnd(attack, aint, Cmd, state)
If attack = aint * 100 Then
attack = 0
Cmd(0).Value = False
state = "����"
End If
End Sub

'������ʾ��(�ֶ�ר��)
Private Sub ModeTips(Player, Cmd)
If Cmd(0).Value = False And Cmd(1).Value = False And Cmd(2).Value = False And Cmd(3).Value = False And Cmd(4).Value = False Then
BattleLog.Text = BattleLog.Text & Player & "�����״̬��ʾ���²�����Ӧ��ť" & vbCrLf & vbCrLf
End If
End Sub


'����ж�ģ��
Private Sub result(HP1, HP2)
Dim Winner$, Loser$
If HP2 < 1 Then
BattleTimer.Interval = 0
Winner = HeroAtri(A, 0)
Loser = HeroAtri(B, 0)
BattleLog.Text = BattleLog.Text & Int(Counter / 10) / 10 & "�룺" & Loser & "������ֵΪ0��ʤ������" & Winner
HrASt = "ս������"
HrBSt = "ս������"
End If
If HP1 < 1 Then
BattleTimer.Interval = 0
Winner = HeroAtri(B, 0)
Loser = HeroAtri(A, 0)
BattleLog.Text = BattleLog.Text & Int(Counter / 10) / 10 & "�룺" & Loser & "������ֵΪ0��ʤ������" & Winner
HrASt = "ս������"
HrBSt = "ս������"
End If
End Sub


'���ư�ť����״̬��
Private Sub CmdA_Click(Index As Integer)
Select Case Index
Case 0
CmdA(Index).Value = True
Astate = "������"
Case 1
CmdA(Index).Value = True
Astate = "ʩ����"
Case 2
CmdA(Index).Value = True
Astate = "ʩ����"
Case 3
CmdA(Index).Value = True
Astate = "ʩ����"
Case 4
CmdA(Index).Value = True
Astate = "ʩ����"
End Select
End Sub

Private Sub CmdB_Click(Index As Integer)
Select Case Index
Case 0
CmdB(Index).Value = True
BState = "������"
Case 1
CmdB(Index).Value = True
BState = "ʩ����"
Case 2
CmdB(Index).Value = True
BState = "ʩ����"
Case 3
CmdB(Index).Value = True
BState = "ʩ����"
Case 4
CmdB(Index).Value = True
BState = "ʩ����"
End Select
End Sub


'ģʽ��ť
Private Sub AutoM_Click()
BattleLog.Text = ""
End Sub

Private Sub P1M_Click()
BattleLog.Text = ""
BattleLog.Text = "P1Mode�����ڵ����ʼ������Ӧ������ʼģ��" & vbCrLf & vbCrLf
End Sub

Private Sub P1P2M_Click()
BattleLog.Text = ""
BattleLog.Text = "P1P2Mode�����ڵ����ʼ��ֱ�����Ӧ������ʼģ��" & vbCrLf & vbCrLf
End Sub

'�Զ�������ʾ
Private Sub BattleLog_Change()
If BattleLog.Text <> "" Then
BattleLog.SelStart = Len(BattleLog.Text)
End If
End Sub

'ʱ���¼�(ģ�����)
Private Sub BattleTimer_Timer()
'�Զ�ģʽ
If AutoM.Value = True Then
Counter = Counter + 1
Recovery AHP, AHPM, ARHP, AMP, AMPM, ARMP
Recovery BHP, BHPM, BRHP, BMP, BMPM, BRMP
'ѣ���ж�ģ��
Call StunJudge(Astate, AStun, AStunTime)
Call StunJudge(BState, Bstun, BStunTime)
'�ж��ж�ģ��
Call PoisonJudge(APoisonSt, APoison, BRHP, APoisonDamage, APoisonTime)
Call PoisonJudge(BPoisonSt, BPoison, ARHP, BPoisonDamage, BPoisonTime)

'�ж�״̬�����ж���ѡ��(�Զ�ר��)
Call Priority(Astate, Aattack)
'������������ʼ
Call NACounter(Astate, Aattack)

'Miss�ж�
Call Miss(BEva, HeroAtri(A, 0))
If EvaCounter = 1 Then
'ԭʼ��������ͱ����ж�
Call PureDMG(AbAt, Va, Aattack, AMin, AMax, ADef, ADamage, ACHChance, ACHTimes, HeroAtri(A, 0))
'�ػ��ж�
Call HeavyCalcu(AbAt, Va, Aattack, AStunChance, AStun, BState, HeroAtri(A, 0), HeroAtri(B, 0))
'�����ж�
Call PoisonCalcu(AbAt, Va, Aattack, APoisonDamage, APoisonSt, APoison, BRHP, HeroAtri(B, 0))
'�ֵ��ж�
Call ShieldCalcu(AbAt, Va, Aattack, BShChance, BShDamage, HeroAtri(B, 0), ADamage)
'��Ѫ����ʾս����¼
Call HPCalcu(AbAt, Va, Aattack, ContainerA, ADamage, BHP, HeroAtri(A, 0), HeroAtri(B, 0))
'��Ѫ�ж�
Call AbsorbCalcu(AbAt, Va, Aattack, ADamage, Aabsorb, AHP, HeroAtri(A, 0), HeroAtri(B, 0))

End If

'һ�ֹ�������
Call BattleEnd(Aattack, AaInt, CmdA, Astate)

'�ж�״̬�����ж���ѡ��(�Զ�ר��)
Call Priority(BState, BAttack)
'������������ʼ
Call NACounter(BState, BAttack)

'Miss�ж�
Call Miss(AEva, HeroAtri(B, 0))
If EvaCounter = 1 Then
'ԭʼ��������ͱ����ж�
Call PureDMG(BbAt, Vb, BAttack, BMin, BMax, BDef, BDamage, BCHChance, BCHTimes, HeroAtri(B, 0))
'�ػ��ж�
Call HeavyCalcu(BbAt, Vb, BAttack, BStunChance, Bstun, Astate, HeroAtri(B, 0), HeroAtri(A, 0))
'�����ж�
Call PoisonCalcu(BbAt, Vb, BAttack, BPoisonDamage, BPoisonSt, BPoison, ARHP, HeroAtri(A, 0))
'�ֵ��ж�
Call ShieldCalcu(BbAt, Vb, BAttack, AShChance, AShDamage, HeroAtri(A, 0), BDamage)
'��Ѫ����ʾս����¼
Call HPCalcu(BbAt, Vb, BAttack, ContainerB, BDamage, AHP, HeroAtri(B, 0), HeroAtri(A, 0))
'��Ѫ�ж�
Call AbsorbCalcu(BbAt, Vb, BAttack, BDamage, Babsorb, BHP, HeroAtri(B, 0), HeroAtri(A, 0))
End If

'һ�ֹ�������
Call BattleEnd(BAttack, BaInt, CmdB, BState)

'��ʾѪ��
Call ShowHP(AHP, AHPM, HrACurHP, HrAMaxHP)
'��ʾ����
Call ShowMP(AMP, AMPM, HrACurMP, HrAMaxMP)
'��ʾ������
Call ShowAttack(AMin, AMax, HrAAttMin, HrAAttMax)
'��ʾ���׼�tag����
Call ShowDefence(ADef, HrADef, LabelADef)
'����ħ�����ر�
Call ShowResistance(HrARes, ARes)
Call ShowEvasion(HrAEva, AEva)
'��ʾ�����ٶȼ�tag�������(�ٷ�����С�����һλ)
Call ShowAttackSpeed(Va, HrAV, AaInt, LabelAV)
'���㲢��ʾ����dps
Call RealDPS(ContainerA, HrADPS)
'��ʾս��״̬
Call BattleState(Astate, HrASt)

'��ʾѪ��
Call ShowHP(BHP, BHPM, HrBCurHP, HrBMaxHP)
'��ʾ����
Call ShowMP(BMP, BMPM, HrBCurMP, HrBMaxMP)
'��ʾ������
Call ShowAttack(BMin, BMax, HrBAttMin, HrBAttMax)
'��ʾ���׼�tag����
Call ShowDefence(BDef, HrBDef, LabelBDef)
'����ħ�����ر�
Call ShowResistance(HrBRes, BRes)
Call ShowEvasion(HrBEva, BEva)
'��ʾ�����ٶȼ�tag�������(�ٷ�����С�����һλ)
Call ShowAttackSpeed(Vb, HrBV, BaInt, LabelBV)
'���㲢��ʾ����dps
Call RealDPS(ContainerB, HrBDPS)
'��ʾս��״̬
Call BattleState(BState, HrBSt)

'����
Call Revive(ItemA, HrAItem, AHP, AHPM, AMP, AMPM, HeroAtri(A, 0))
Call Revive(ItemB, HrBItem, BHP, BHPM, BMP, BMPM, HeroAtri(B, 0))
result AHP, BHP

'P1 vs COMģʽ
ElseIf P1M.Value = True Then
If CmdA(0).Value = True Then
Counter = Counter + 1
Recovery AHP, AHPM, ARHP, AMP, AMPM, ARMP
Recovery BHP, BHPM, BRHP, BMP, BMPM, BRMP
'ѣ���ж�ģ��
Call StunJudge(Astate, AStun, AStunTime)
Call StunJudge(BState, Bstun, BStunTime)

'������������ʼ(����ֶ���״̬)
Call NACounter(Astate, Aattack)

'Miss�ж�
Call Miss(BEva, HeroAtri(A, 0))
If EvaCounter = 1 Then
'ԭʼ��������ͱ����ж�
Call PureDMG(AbAt, Va, Aattack, AMin, AMax, ADef, ADamage, ACHChance, ACHTimes, HeroAtri(A, 0))
'�ػ��ж�
Call HeavyCalcu(AbAt, Va, Aattack, AStunChance, AStun, BState, HeroAtri(A, 0), HeroAtri(B, 0))
'�����ж�
Call PoisonCalcu(AbAt, Va, Aattack, APoisonDamage, APoisonSt, APoison, BRHP, HeroAtri(B, 0))
'�ֵ��ж�
Call ShieldCalcu(AbAt, Va, Aattack, BShChance, BShDamage, HeroAtri(B, 0), ADamage)
'��Ѫ����ʾս����¼
Call HPCalcu(AbAt, Va, Aattack, ContainerA, ADamage, BHP, HeroAtri(A, 0), HeroAtri(B, 0))
'��Ѫ�ж�
Call AbsorbCalcu(AbAt, Va, Aattack, ADamage, Aabsorb, AHP, HeroAtri(A, 0), HeroAtri(B, 0))
End If

'һ�ֹ�������
Call BattleEnd(Aattack, AaInt, CmdA, Astate)


'��Ѫ����ʾս����¼
Call HPCalcu(AbAt, Va, Aattack, ContainerA, ADamage, BHP, HeroAtri(A, 0), HeroAtri(B, 0))
'��Ѫ�ж�
Call AbsorbCalcu(AbAt, Va, Aattack, ADamage, Aabsorb, AHP, HeroAtri(A, 0), HeroAtri(B, 0))
'һ�ֹ�������
Call BattleEnd(Aattack, AaInt, CmdA, Astate)
'ģʽ��ʾ��(�ֶ�ר��)
Call ModeTips("P1", CmdA)

'�ж�״̬�����ж���ѡ��(�Զ�ר��)
Call Priority(BState, BAttack)
'������������ʼ
Call NACounter(BState, BAttack)

'Miss�ж�
Call Miss(BEva, HeroAtri(A, 0))
If EvaCounter = 1 Then
'ԭʼ��������ͱ����ж�
Call PureDMG(BbAt, Vb, BAttack, BMin, BMax, BDef, BDamage, BCHChance, BCHTimes, HeroAtri(B, 0))
'�ػ��ж�
Call HeavyCalcu(BbAt, Vb, BAttack, BStunChance, Bstun, Astate, HeroAtri(B, 0), HeroAtri(A, 0))
'�����ж�
Call PoisonCalcu(BbAt, Vb, BAttack, BPoisonDamage, BPoisonSt, BPoison, ARHP, HeroAtri(A, 0))
'�ֵ��ж�
Call ShieldCalcu(BbAt, Vb, BAttack, AShChance, AShDamage, HeroAtri(A, 0), BDamage)
'��Ѫ����ʾս����¼
Call HPCalcu(BbAt, Vb, BAttack, ContainerB, BDamage, AHP, HeroAtri(B, 0), HeroAtri(A, 0))
'��Ѫ�ж�
Call AbsorbCalcu(BbAt, Vb, BAttack, BDamage, Babsorb, BHP, HeroAtri(B, 0), HeroAtri(A, 0))
End If

'һ�ֹ�������
Call BattleEnd(BAttack, BaInt, CmdB, BState)


'��Ѫ����ʾս����¼
Call HPCalcu(BbAt, Vb, BAttack, ContainerB, BDamage, AHP, HeroAtri(B, 0), HeroAtri(A, 0))
'��Ѫ�ж�
Call AbsorbCalcu(BbAt, Vb, BAttack, BDamage, Babsorb, BHP, HeroAtri(B, 0), HeroAtri(A, 0))
'һ�ֹ�������
Call BattleEnd(BAttack, BaInt, CmdB, BState)

'��ʾѪ��
Call ShowHP(AHP, AHPM, HrACurHP, HrAMaxHP)
'��ʾ����
Call ShowMP(AMP, AMPM, HrACurMP, HrAMaxMP)
'��ʾ������
Call ShowAttack(AMin, AMax, HrAAttMin, HrAAttMax)
'��ʾ���׼�tag����
Call ShowDefence(ADef, HrADef, LabelADef)
'����ħ�����ر�
Call ShowResistance(HrARes, ARes)
Call ShowEvasion(HrAEva, AEva)
'��ʾ�����ٶȼ�tag�������(�ٷ�����С�����һλ)
Call ShowAttackSpeed(Va, HrAV, AaInt, LabelAV)
'���㲢��ʾ����dps
Call RealDPS(ContainerA, HrADPS)
'��ʾս��״̬
Call BattleState(Astate, HrASt)

'��ʾѪ��
Call ShowHP(BHP, BHPM, HrBCurHP, HrBMaxHP)
'��ʾ����
Call ShowMP(BMP, BMPM, HrBCurMP, HrBMaxMP)
'��ʾ������
Call ShowAttack(BMin, BMax, HrBAttMin, HrBAttMax)
'��ʾ���׼�tag����
Call ShowDefence(BDef, HrBDef, LabelBDef)
'����ħ�����ر�
Call ShowResistance(HrBRes, BRes)
Call ShowEvasion(HrBEva, BEva)
'��ʾ�����ٶȼ�tag�������(�ٷ�����С�����һλ)
Call ShowAttackSpeed(Vb, HrBV, BaInt, LabelBV)
'���㲢��ʾ����dps
Call RealDPS(ContainerB, HrBDPS)
'��ʾս��״̬
Call BattleState(BState, HrBSt)

'����
Call Revive(ItemA, HrAItem, AHP, AHPM, AMP, AMPM, HeroAtri(A, 0))
Call Revive(ItemB, HrBItem, BHP, BHPM, BMP, BMPM, HeroAtri(B, 0))
result AHP, BHP
End If

'P1 vs P2ģʽ
Else: P1P2M.Value = True
If CmdA(0).Value = True And (CmdB(0).Value = True Or CmdB(1).Value = True Or CmdB(2).Value = True Or CmdB(3).Value = True Or CmdB(4).Value = True) Then
Counter = Counter + 1
Recovery AHP, AHPM, ARHP, AMP, AMPM, ARMP
Recovery BHP, BHPM, BRHP, BMP, BMPM, BRMP
'ѣ���ж�ģ��
Call StunJudge(Astate, AStun, AStunTime)
Call StunJudge(BState, Bstun, BStunTime)

'������������ʼ(����ֶ���״̬)
Call NACounter(Astate, Aattack)

'Miss�ж�
Call Miss(BEva, HeroAtri(A, 0))
If EvaCounter = 1 Then
'ԭʼ��������ͱ����ж�
Call PureDMG(AbAt, Va, Aattack, AMin, AMax, ADef, ADamage, ACHChance, ACHTimes, HeroAtri(A, 0))
'�ػ��ж�
Call HeavyCalcu(AbAt, Va, Aattack, AStunChance, AStun, BState, HeroAtri(A, 0), HeroAtri(B, 0))
'�����ж�
Call PoisonCalcu(AbAt, Va, Aattack, APoisonDamage, APoisonSt, APoison, BRHP, HeroAtri(B, 0))
'�ֵ��ж�
Call ShieldCalcu(AbAt, Va, Aattack, BShChance, BShDamage, HeroAtri(B, 0), ADamage)
'��Ѫ����ʾս����¼
Call HPCalcu(AbAt, Va, Aattack, ContainerA, ADamage, BHP, HeroAtri(A, 0), HeroAtri(B, 0))
'��Ѫ�ж�
Call AbsorbCalcu(AbAt, Va, Aattack, ADamage, Aabsorb, AHP, HeroAtri(A, 0), HeroAtri(B, 0))
End If

'һ�ֹ�������
Call BattleEnd(Aattack, AaInt, CmdA, Astate)


'��Ѫ����ʾս����¼
Call HPCalcu(AbAt, Va, Aattack, ContainerA, ADamage, BHP, HeroAtri(A, 0), HeroAtri(B, 0))
'��Ѫ�ж�
Call AbsorbCalcu(AbAt, Va, Aattack, ADamage, Aabsorb, AHP, HeroAtri(A, 0), HeroAtri(B, 0))
'һ�ֹ�������
Call BattleEnd(Aattack, AaInt, CmdA, Astate)
'ģʽ��ʾ��(�ֶ�ר��)
Call ModeTips("P1", CmdA)

'��ʾѪ��
Call ShowHP(AHP, AHPM, HrACurHP, HrAMaxHP)
'��ʾ����
Call ShowMP(AMP, AMPM, HrACurMP, HrAMaxMP)
'��ʾ������
Call ShowAttack(AMin, AMax, HrAAttMin, HrAAttMax)
'��ʾ���׼�tag����
Call ShowDefence(ADef, HrADef, LabelADef)
'����ħ�����ر�
Call ShowResistance(HrARes, ARes)
Call ShowEvasion(HrAEva, AEva)
'��ʾ�����ٶȼ�tag�������(�ٷ�����С�����һλ)
Call ShowAttackSpeed(Va, HrAV, AaInt, LabelAV)
'���㲢��ʾ����dps
Call RealDPS(ContainerA, HrADPS)
'��ʾս��״̬
Call BattleState(Astate, HrASt)

End If

If CmdB(0).Value = True And (CmdA(0).Value = True Or CmdA(1).Value = True Or CmdA(2).Value = True Or CmdA(3).Value = True Or CmdA(4).Value = True) Then

'������������ʼ(����ֶ���״̬)
Call NACounter(BState, BAttack)

'Miss�ж�
Call Miss(BEva, HeroAtri(A, 0))
If EvaCounter = 1 Then
'ԭʼ��������ͱ����ж�
Call PureDMG(BbAt, Vb, BAttack, BMin, BMax, BDef, BDamage, BCHChance, BCHTimes, HeroAtri(B, 0))
'�ػ��ж�
Call HeavyCalcu(BbAt, Vb, BAttack, BStunChance, Bstun, Astate, HeroAtri(B, 0), HeroAtri(A, 0))
'�����ж�
Call PoisonCalcu(BbAt, Vb, BAttack, BPoisonDamage, BPoisonSt, BPoison, ARHP, HeroAtri(A, 0))
'�ֵ��ж�
Call ShieldCalcu(BbAt, Vb, BAttack, AShChance, AShDamage, HeroAtri(A, 0), BDamage)
'��Ѫ����ʾս����¼
Call HPCalcu(BbAt, Vb, BAttack, ContainerB, BDamage, AHP, HeroAtri(B, 0), HeroAtri(A, 0))
'��Ѫ�ж�
Call AbsorbCalcu(BbAt, Vb, BAttack, BDamage, Babsorb, BHP, HeroAtri(B, 0), HeroAtri(A, 0))
End If

'һ�ֹ�������
Call BattleEnd(BAttack, BaInt, CmdB, BState)


'��Ѫ����ʾս����¼
Call HPCalcu(BbAt, Vb, BAttack, ContainerB, BDamage, AHP, HeroAtri(B, 0), HeroAtri(A, 0))
'��Ѫ�ж�
Call AbsorbCalcu(BbAt, Vb, BAttack, BDamage, Babsorb, BHP, HeroAtri(B, 0), HeroAtri(A, 0))
'һ�ֹ�������
Call BattleEnd(BAttack, BaInt, CmdB, BState)
'ģʽ��ʾ��(�ֶ�ר��)
Call ModeTips("P2", CmdB)



'��ʾѪ��
Call ShowHP(BHP, BHPM, HrBCurHP, HrBMaxHP)
'��ʾ����
Call ShowMP(BMP, BMPM, HrBCurMP, HrBMaxMP)
'��ʾ������
Call ShowAttack(BMin, BMax, HrBAttMin, HrBAttMax)
'��ʾ���׼�tag����
Call ShowDefence(BDef, HrBDef, LabelBDef)
'����ħ�����ر�
Call ShowResistance(HrBRes, BRes)
Call ShowEvasion(HrBEva, BEva)
'��ʾ�����ٶȼ�tag�������(�ٷ�����С�����һλ)
Call ShowAttackSpeed(Vb, HrBV, BaInt, LabelBV)
'���㲢��ʾ����dps
Call RealDPS(ContainerB, HrBDPS)
'��ʾս��״̬
Call BattleState(BState, HrBSt)

'����
Call Revive(ItemA, HrAItem, AHP, AHPM, AMP, AMPM, HeroAtri(A, 0))
Call Revive(ItemB, HrBItem, BHP, BHPM, BMP, BMPM, HeroAtri(B, 0))
result AHP, BHP
End If

End If
End Sub

'�ؼ���ʼ���ӹ���

'Ӣ�۳�ʼ��
Private Sub HeroReset(HrTp, HrNm, Lv, HrLv)
HrTp.Text = ""
HrNm.Text = ""

HrLv.Enabled = False
Lv = 1
HrLv.Text = "1"
End Sub

'���߳�ʼ��
Private Sub ItemReset(Shop, HrItem)
Dim Index%
Shop.Text = ""
For Index = 1 To 6
HrItem(Index).Enabled = False
HrItem(Index).Text = ""
Next
End Sub

'���ܳ�ʼ��
Private Sub SkillReset(HrSpNm, bonus, Hrbonus, HrSpLv)
Dim Index

HrSpNm(Index + 1).Caption = "����A"
HrSpNm(Index + 2).Caption = "����B"
HrSpNm(Index + 3).Caption = "����C"
HrSpNm(Index + 4).Caption = "����D"

Hrbonus.Enabled = False
bonus = 0
Hrbonus.Text = ""

For Index = 1 To 4
HrSpLv(Index).Enabled = False
HrSpLv(Index).Text = 0
Next
End Sub

'״̬��ʼ��
Private Sub StatementReset(HrCurHP, HrMaxHP, HrCurMP, HrMaxMP, HrAttMin, HrAttMax, HrV, LabelV, HrDef, LabelDef, HrRes, HrEva, HrDPS, HrSt)
HrCurHP.Text = ""
HrCurMP.Text = ""
HrMaxHP.Text = ""
HrMaxMP.Text = ""
HrAttMin.Text = ""
HrAttMax.Text = ""
HrV.Text = ""
LabelV.ToolTipText = ""
HrDef.Text = ""
LabelDef.ToolTipText = ""
HrRes.Text = ""
HrEva.Text = ""
HrDPS.Text = ""
HrSt.Text = ""

End Sub

Private Sub Reset_Click()
BattleTimer.Interval = 0
BattleLog.Text = ""
Counter = 0
Call HeroReset(HrATp, HrANm, ALv, HrALv)
Call ItemReset(ShopA, HrAItem)
Call SkillReset(HrASpNm, Abonus, HrABonus, HrASpLv)
Call StatementReset(HrACurHP, HrAMaxHP, HrACurMP, HrAMaxMP, HrAAttMin, HrAAttMax, HrAV, LabelAV, HrADef, LabelADef, HrARes, HrAEva, HrADPS, HrASt)
Call HeroReset(HrBTp, HrBNm, BLv, HrBLv)
Call ItemReset(ShopB, HrBItem)
Call SkillReset(HrBSpNm, Bbonus, HrBBonus, HrBSpLv)
Call StatementReset(HrBCurHP, HrBMaxHP, HrBCurMP, HrBMaxMP, HrBAttMin, HrBAttMax, HrBV, LabelBV, HrBDef, LabelBDef, HrBRes, HrBEva, HrBDPS, HrBSt)
End Sub


