VERSION 5.00
Begin VB.Form DotaEmulator 
   Caption         =   "Dota英雄战斗模拟器"
   ClientHeight    =   8385
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   13395
   LinkTopic       =   "Form1"
   ScaleHeight     =   8385
   ScaleWidth      =   13395
   StartUpPosition =   3  '窗口缺省
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
         Caption         =   "普通攻击"
         Height          =   375
         Index           =   0
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   133
         Top             =   480
         Width           =   1215
      End
      Begin VB.OptionButton CmdB 
         Caption         =   "技能D"
         Height          =   375
         Index           =   4
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   132
         Top             =   1920
         Width           =   1215
      End
      Begin VB.OptionButton CmdB 
         Caption         =   "技能C"
         Height          =   375
         Index           =   3
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   131
         Top             =   1560
         Width           =   1215
      End
      Begin VB.OptionButton CmdB 
         Caption         =   "技能B"
         Height          =   375
         Index           =   2
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   130
         Top             =   1200
         Width           =   1215
      End
      Begin VB.OptionButton CmdB 
         Caption         =   "技能A"
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
         Caption         =   "控制P2"
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
         Caption         =   "普通攻击"
         Height          =   375
         Index           =   0
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   128
         Top             =   480
         Width           =   1215
      End
      Begin VB.OptionButton CmdA 
         Caption         =   "技能D"
         Height          =   375
         Index           =   4
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   127
         Top             =   1920
         Width           =   1215
      End
      Begin VB.OptionButton CmdA 
         Caption         =   "技能C"
         Height          =   375
         Index           =   3
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   126
         Top             =   1560
         Width           =   1215
      End
      Begin VB.OptionButton CmdA 
         Caption         =   "技能B"
         Height          =   375
         Index           =   2
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   125
         Top             =   1200
         Width           =   1215
      End
      Begin VB.OptionButton CmdA 
         Caption         =   "技能A"
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
         Caption         =   "控制P1"
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
         Name            =   "宋体"
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
      Caption         =   "开始"
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
      Caption         =   "自动"
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
      Caption         =   "魔法抗性"
      Height          =   255
      Left            =   9720
      TabIndex        =   141
      Top             =   7680
      Width           =   855
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Caption         =   "魔法抗性"
      Height          =   255
      Left            =   360
      TabIndex        =   139
      Top             =   7680
      Width           =   855
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "闪避率"
      Height          =   255
      Left            =   11280
      TabIndex        =   137
      Top             =   7680
      Width           =   1095
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "闪避率"
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
         Name            =   "宋体"
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
         Name            =   "宋体"
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
         Name            =   "宋体"
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
         Name            =   "宋体"
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
         Name            =   "宋体"
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
         Name            =   "宋体"
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
      Caption         =   "护甲"
      Height          =   255
      Left            =   9600
      TabIndex        =   84
      Top             =   7320
      Width           =   1095
   End
   Begin VB.Label LabelADef 
      Alignment       =   2  'Center
      Caption         =   "护甲"
      Height          =   255
      Left            =   240
      TabIndex        =   82
      Top             =   7320
      Width           =   1095
   End
   Begin VB.Label Label55 
      Alignment       =   2  'Center
      Caption         =   "模拟速度"
      Height          =   375
      Left            =   5640
      TabIndex        =   79
      Top             =   6120
      Width           =   975
   End
   Begin VB.Label Label54 
      Alignment       =   2  'Center
      Caption         =   "战斗记录"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   4200
      TabIndex        =   78
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Label51 
      Alignment       =   2  'Center
      Caption         =   "模拟模式"
      Height          =   375
      Left            =   4440
      TabIndex        =   72
      Top             =   6120
      Width           =   975
   End
   Begin VB.Label Label48 
      Alignment       =   2  'Center
      Caption         =   "即时DPS"
      Height          =   255
      Left            =   240
      TabIndex        =   71
      Top             =   8040
      Width           =   1095
   End
   Begin VB.Label LabelAV 
      Alignment       =   2  'Center
      Caption         =   "攻击速度"
      Height          =   255
      Left            =   1920
      TabIndex        =   70
      Top             =   7320
      Width           =   1095
   End
   Begin VB.Label Label23 
      Alignment       =   2  'Center
      Caption         =   "攻击力"
      Height          =   255
      Left            =   240
      TabIndex        =   69
      Top             =   6960
      Width           =   1095
   End
   Begin VB.Label Label22 
      Alignment       =   2  'Center
      Caption         =   "英雄A"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   240
      TabIndex        =   65
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Label21 
      Caption         =   "选择英雄类型"
      Height          =   255
      Left            =   360
      TabIndex        =   64
      Top             =   480
      Width           =   1215
   End
   Begin VB.Label Label20 
      Caption         =   "选择英雄名称"
      Height          =   255
      Left            =   360
      TabIndex        =   63
      Top             =   1080
      Width           =   1215
   End
   Begin VB.Label Label19 
      Alignment       =   2  'Center
      Caption         =   "物品栏"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   120
      TabIndex        =   62
      Top             =   1680
      Width           =   1455
   End
   Begin VB.Label Label18 
      Alignment       =   2  'Center
      Caption         =   "技能栏"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   240
      TabIndex        =   61
      Top             =   3480
      Width           =   1215
   End
   Begin VB.Label Label17 
      Alignment       =   2  'Center
      Caption         =   "属性附加点"
      Height          =   255
      Left            =   240
      TabIndex        =   60
      Top             =   4200
      Width           =   1095
   End
   Begin VB.Label Label16 
      Alignment       =   2  'Center
      Caption         =   "技能名称"
      Height          =   255
      Left            =   240
      TabIndex        =   59
      Top             =   3840
      Width           =   1095
   End
   Begin VB.Label Label15 
      Alignment       =   2  'Center
      Caption         =   "技能等级"
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
      Caption         =   "战斗状态栏"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   120
      TabIndex        =   55
      Top             =   6000
      Width           =   1455
   End
   Begin VB.Label HrASpNm 
      Alignment       =   2  'Center
      Caption         =   "技能C"
      Height          =   255
      Index           =   3
      Left            =   240
      TabIndex        =   54
      Top             =   5280
      Width           =   1095
   End
   Begin VB.Label HrASpNm 
      Alignment       =   2  'Center
      Caption         =   "技能D"
      Height          =   255
      Index           =   4
      Left            =   240
      TabIndex        =   53
      Top             =   5640
      Width           =   1095
   End
   Begin VB.Label HrASpNm 
      Alignment       =   2  'Center
      Caption         =   "技能B"
      Height          =   255
      Index           =   2
      Left            =   240
      TabIndex        =   52
      Top             =   4920
      Width           =   1095
   End
   Begin VB.Label HrASpNm 
      Alignment       =   2  'Center
      Caption         =   "技能A"
      Height          =   255
      Index           =   1
      Left            =   240
      TabIndex        =   51
      Top             =   4560
      Width           =   1095
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "输入等级"
      Height          =   255
      Left            =   2160
      TabIndex        =   50
      Top             =   1080
      Width           =   735
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "人物状态"
      Height          =   255
      Left            =   1920
      TabIndex        =   49
      Top             =   8040
      Width           =   1095
   End
   Begin VB.Label Label50 
      Alignment       =   2  'Center
      Caption         =   "即时DPS"
      Height          =   255
      Left            =   9600
      TabIndex        =   35
      Top             =   8040
      Width           =   1095
   End
   Begin VB.Label LabelBV 
      Alignment       =   2  'Center
      Caption         =   "攻击速度"
      Height          =   255
      Left            =   11280
      TabIndex        =   34
      Top             =   7320
      Width           =   1095
   End
   Begin VB.Label Label47 
      Alignment       =   2  'Center
      Caption         =   "攻击力"
      Height          =   255
      Left            =   9600
      TabIndex        =   33
      Top             =   6960
      Width           =   1095
   End
   Begin VB.Label Label46 
      Alignment       =   2  'Center
      Caption         =   "英雄B"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   9480
      TabIndex        =   29
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Label45 
      Caption         =   "选择英雄类型"
      Height          =   255
      Left            =   9600
      TabIndex        =   28
      Top             =   480
      Width           =   1095
   End
   Begin VB.Label Label44 
      Caption         =   "选择英雄名称"
      Height          =   255
      Left            =   9600
      TabIndex        =   27
      Top             =   1080
      Width           =   1095
   End
   Begin VB.Label Label43 
      Alignment       =   2  'Center
      Caption         =   "物品栏"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   9480
      TabIndex        =   26
      Top             =   1680
      Width           =   1455
   End
   Begin VB.Label Label42 
      Alignment       =   2  'Center
      Caption         =   "技能栏"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   9480
      TabIndex        =   25
      Top             =   3480
      Width           =   1455
   End
   Begin VB.Label Label41 
      Alignment       =   2  'Center
      Caption         =   "属性附加点"
      Height          =   255
      Left            =   9600
      TabIndex        =   24
      Top             =   4200
      Width           =   1095
   End
   Begin VB.Label Label40 
      Alignment       =   2  'Center
      Caption         =   "技能名称"
      Height          =   255
      Left            =   9600
      TabIndex        =   23
      Top             =   3840
      Width           =   1095
   End
   Begin VB.Label Label39 
      Alignment       =   2  'Center
      Caption         =   "技能等级"
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
      Caption         =   "战斗状态栏"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   9480
      TabIndex        =   19
      Top             =   6000
      Width           =   1455
   End
   Begin VB.Label HrBSpNm 
      Alignment       =   2  'Center
      Caption         =   "技能C"
      Height          =   255
      Index           =   3
      Left            =   9600
      TabIndex        =   18
      Top             =   5280
      Width           =   1095
   End
   Begin VB.Label HrBSpNm 
      Alignment       =   2  'Center
      Caption         =   "技能D"
      Height          =   255
      Index           =   4
      Left            =   9600
      TabIndex        =   17
      Top             =   5640
      Width           =   1095
   End
   Begin VB.Label HrBSpNm 
      Alignment       =   2  'Center
      Caption         =   "技能B"
      Height          =   255
      Index           =   2
      Left            =   9600
      TabIndex        =   16
      Top             =   4920
      Width           =   1095
   End
   Begin VB.Label HrBSpNm 
      Alignment       =   2  'Center
      Caption         =   "技能A"
      Height          =   255
      Index           =   1
      Left            =   9600
      TabIndex        =   15
      Top             =   4560
      Width           =   1095
   End
   Begin VB.Label Label25 
      Alignment       =   2  'Center
      Caption         =   "输入等级"
      Height          =   255
      Left            =   11400
      TabIndex        =   14
      Top             =   1080
      Width           =   735
   End
   Begin VB.Label Label24 
      Alignment       =   2  'Center
      Caption         =   "人物状态"
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
Dim HeroAtri(0 To 40, 0 To 18)  '制表(英雄属性)
Dim ItemAtri(0 To 40, 0 To 21)  '制表(道具属性)
Dim ItemA%(1 To 6) '英雄A道具序号
Dim ItemB%(1 To 6) '英雄B道具序号
Dim A%, AHP!, ARHP!, AMP!, ARMP!, AHPM!, AMPM!, AMin%, AMax%, ADef!, AaInt!, Va!, AbAt!, AbCast!, Astate$, AEva!, ARes! 'HeroA模拟用变量
Dim B%, BHP!, BRHP!, BMP!, BRMP!, BHPM!, BMPM!, BMin%, BMax%, BDef!, BaInt!, Vb!, BbAt!, BbCast!, BState$, BEva!, BRes! 'HeroB模拟用变量
Dim ACHChance!, ACHTimes!, AShChance!, AShDamage%, Aabsorb!, AStunChance!, AStunTime!, APoisonSt%, APoisonDamage!, APoisonTime! 'HeroA被动技能用变量
Dim BCHChance!, BCHTimes!, BShChance!, BShDamage%, Babsorb!, BStunChance!, BStunTime!, BPoisonSt%, BPoisonDamage!, BPoisonTime! 'HeroB被动技能用变量

Dim ADamage!, ALv%, Abonus%, Apow!, Aagi!, Awit!, ContainerA! 'HeroA显示用变量
Dim BDamage!, BLv%, Bbonus%, Bpow!, Bagi!, Bwit!, ContainerB! 'HeroB显示用变量
Dim Aattack%, BAttack%, AStun%, Bstun%, APoison%, BPoison%, Counter%, EvaCounter% '模拟过程用计数器变量

'窗口初始化
Private Sub Form_Load()
DotaEmulator.Left = (Screen.Width - DotaEmulator.Width) / 2
DotaEmulator.Top = (Screen.Height - DotaEmulator.Height) / 2
EmuPace.Text = EmuPace.List(0)

'制表(英雄属性)
HeroAtri(0, 0) = "半人马酋长": HeroAtri(0, 1) = "力量": HeroAtri(0, 2) = "近战": HeroAtri(0, 3) = "马蹄践踏": HeroAtri(0, 4) = "双刃剑": HeroAtri(0, 5) = "反击": HeroAtri(0, 6) = "刚毅不屈": HeroAtri(0, 7) = "55": HeroAtri(0, 8) = "57": HeroAtri(0, 9) = "3.1": HeroAtri(0, 10) = "23": HeroAtri(0, 11) = "15": HeroAtri(0, 12) = "15": HeroAtri(0, 13) = "2.6": HeroAtri(0, 14) = "2": HeroAtri(0, 15) = "1.6": HeroAtri(0, 16) = "1.7": HeroAtri(0, 17) = "0.3": HeroAtri(0, 18) = "0.5"
HeroAtri(1, 0) = "船长": HeroAtri(1, 1) = "力量": HeroAtri(1, 2) = "近战": HeroAtri(1, 3) = "洪流": HeroAtri(1, 4) = "潮汐使者": HeroAtri(1, 5) = "标记": HeroAtri(1, 6) = "幽灵船": HeroAtri(1, 7) = "53": HeroAtri(1, 8) = "63": HeroAtri(1, 9) = "2.6": HeroAtri(1, 10) = "24": HeroAtri(1, 11) = "14": HeroAtri(1, 12) = "16": HeroAtri(1, 13) = "2.7": HeroAtri(1, 14) = "1.3": HeroAtri(1, 15) = "1.5": HeroAtri(1, 16) = "1.7": HeroAtri(1, 17) = "0.4": HeroAtri(1, 18) = "0.4"
HeroAtri(2, 0) = "撼地神牛": HeroAtri(2, 1) = "力量": HeroAtri(2, 2) = "近战": HeroAtri(2, 3) = "沟壑": HeroAtri(2, 4) = "强化图腾": HeroAtri(2, 5) = "余震": HeroAtri(2, 6) = "回音击": HeroAtri(2, 7) = "46": HeroAtri(2, 8) = "56": HeroAtri(2, 9) = "2.7": HeroAtri(2, 10) = "22": HeroAtri(2, 11) = "12": HeroAtri(2, 12) = "16": HeroAtri(2, 13) = "2.5": HeroAtri(2, 14) = "1.4": HeroAtri(2, 15) = "1.8": HeroAtri(2, 16) = "1.7": HeroAtri(2, 17) = "0.467": HeroAtri(2, 18) = "0.69"
HeroAtri(3, 0) = "精灵守卫": HeroAtri(3, 1) = "力量": HeroAtri(3, 2) = "远程": HeroAtri(3, 3) = "过载": HeroAtri(3, 4) = "降临": HeroAtri(3, 5) = "幽光之魂 ": HeroAtri(3, 6) = "闪电之链": HeroAtri(3, 7) = "33": HeroAtri(3, 8) = "37": HeroAtri(3, 9) = "1": HeroAtri(3, 10) = "17": HeroAtri(3, 11) = "14": HeroAtri(3, 12) = "23": HeroAtri(3, 13) = "1.7": HeroAtri(3, 14) = "1.6": HeroAtri(3, 15) = "1.9": HeroAtri(3, 16) = "1.7": HeroAtri(3, 17) = "0.15": HeroAtri(3, 18) = "0.001"
HeroAtri(4, 0) = "流浪剑客": HeroAtri(4, 1) = "力量": HeroAtri(4, 2) = "近战": HeroAtri(4, 3) = "风暴之锤": HeroAtri(4, 4) = "巨力挥舞": HeroAtri(4, 5) = "战吼 ": HeroAtri(4, 6) = "神之力量": HeroAtri(4, 7) = "54": HeroAtri(4, 8) = "56": HeroAtri(4, 9) = "1.9": HeroAtri(4, 10) = "23": HeroAtri(4, 11) = "21": HeroAtri(4, 12) = "14": HeroAtri(4, 13) = "2.7": HeroAtri(4, 14) = "2": HeroAtri(4, 15) = "1.3": HeroAtri(4, 16) = "1.7": HeroAtri(4, 17) = "0.4": HeroAtri(4, 18) = "0.3"
HeroAtri(5, 0) = "炼金术士": HeroAtri(5, 1) = "力量": HeroAtri(5, 2) = "近战": HeroAtri(5, 3) = "酸性喷雾": HeroAtri(5, 4) = "不稳定化合物": HeroAtri(5, 5) = "地精的贪婪": HeroAtri(5, 6) = "化学狂暴": HeroAtri(5, 7) = "49": HeroAtri(5, 8) = "53": HeroAtri(5, 9) = "1.1": HeroAtri(5, 10) = "25": HeroAtri(5, 11) = "11": HeroAtri(5, 12) = "25": HeroAtri(5, 13) = "1.8": HeroAtri(5, 14) = "1.2": HeroAtri(5, 15) = "1.8": HeroAtri(5, 16) = "1.7": HeroAtri(5, 17) = "0.35": HeroAtri(5, 18) = "0.4"
HeroAtri(6, 0) = "牛头人酋长": HeroAtri(6, 1) = "力量": HeroAtri(6, 2) = "近战": HeroAtri(6, 3) = "回音重踏 ": HeroAtri(6, 4) = "先祖之魂": HeroAtri(6, 5) = "自然秩序": HeroAtri(6, 6) = "裂地者": HeroAtri(6, 7) = "47": HeroAtri(6, 8) = "57": HeroAtri(6, 9) = "3": HeroAtri(6, 10) = "24": HeroAtri(6, 11) = "14": HeroAtri(6, 12) = "23": HeroAtri(6, 13) = "2.3": HeroAtri(6, 14) = "1.5": HeroAtri(6, 15) = "1.6": HeroAtri(6, 16) = "1.7": HeroAtri(6, 17) = "0.35": HeroAtri(6, 18) = "0.4"
HeroAtri(7, 0) = "全能骑士": HeroAtri(7, 1) = "力量": HeroAtri(7, 2) = "近战": HeroAtri(7, 3) = "洗礼 ": HeroAtri(7, 4) = "驱逐": HeroAtri(7, 5) = "退化光环": HeroAtri(7, 6) = "守护天使 ": HeroAtri(7, 7) = "51": HeroAtri(7, 8) = "61": HeroAtri(7, 9) = "4.1": HeroAtri(7, 10) = "20": HeroAtri(7, 11) = "15": HeroAtri(7, 12) = "17": HeroAtri(7, 13) = "2.65": HeroAtri(7, 14) = "1.75": HeroAtri(7, 15) = "1.8": HeroAtri(7, 16) = "1.7": HeroAtri(7, 17) = "0.433": HeroAtri(7, 18) = "0.5"
HeroAtri(8, 0) = "树精卫士": HeroAtri(8, 1) = "力量": HeroAtri(8, 2) = "近战": HeroAtri(8, 3) = "大自然的掩护 ": HeroAtri(8, 4) = "寄生种子": HeroAtri(8, 5) = "活体护甲": HeroAtri(8, 6) = "疯狂生长 ": HeroAtri(8, 7) = "59": HeroAtri(8, 8) = "67": HeroAtri(8, 9) = "3.1": HeroAtri(8, 10) = "27": HeroAtri(8, 11) = "15": HeroAtri(8, 12) = "17": HeroAtri(8, 13) = "3.4": HeroAtri(8, 14) = "2": HeroAtri(8, 15) = "1.8": HeroAtri(8, 16) = "1.7": HeroAtri(8, 17) = "0.6": HeroAtri(8, 18) = "0.5"
HeroAtri(9, 0) = "山岭巨人": HeroAtri(9, 1) = "力量": HeroAtri(9, 2) = "近战": HeroAtri(9, 3) = "山崩 ": HeroAtri(9, 4) = "投掷": HeroAtri(9, 5) = "崎岖外表": HeroAtri(9, 6) = "长大 ": HeroAtri(9, 7) = "61": HeroAtri(9, 8) = "67": HeroAtri(9, 9) = "0.3": HeroAtri(9, 10) = "24": HeroAtri(9, 11) = "9": HeroAtri(9, 12) = "14": HeroAtri(9, 13) = "3": HeroAtri(9, 14) = "0.9": HeroAtri(9, 15) = "1.6": HeroAtri(9, 16) = "1.7": HeroAtri(9, 17) = "0.49": HeroAtri(9, 18) = "0.001"
HeroAtri(10, 0) = "兽王": HeroAtri(10, 1) = "力量": HeroAtri(10, 2) = "近战": HeroAtri(10, 3) = "野性之斧": HeroAtri(10, 4) = "野性呼唤": HeroAtri(10, 5) = "野性之心": HeroAtri(10, 6) = "原始咆哮 ": HeroAtri(10, 7) = "56": HeroAtri(10, 8) = "60": HeroAtri(10, 9) = "4.6": HeroAtri(10, 10) = "23": HeroAtri(10, 11) = "18": HeroAtri(10, 12) = "16": HeroAtri(10, 13) = "2.2": HeroAtri(10, 14) = "1.6": HeroAtri(10, 15) = "1.9": HeroAtri(10, 16) = "1.7": HeroAtri(10, 17) = "0.3": HeroAtri(10, 18) = "0.5"
HeroAtri(11, 0) = "熊猫酒仙": HeroAtri(11, 1) = "力量": HeroAtri(11, 2) = "近战": HeroAtri(11, 3) = "雷霆一击": HeroAtri(11, 4) = "醉酒云雾": HeroAtri(11, 5) = "醉拳": HeroAtri(11, 6) = "元素分离 ": HeroAtri(11, 7) = "52": HeroAtri(11, 8) = "55": HeroAtri(11, 9) = "3.3": HeroAtri(11, 10) = "23": HeroAtri(11, 11) = "16": HeroAtri(11, 12) = "14": HeroAtri(11, 13) = "2.9": HeroAtri(11, 14) = "1.95": HeroAtri(11, 15) = "1.25": HeroAtri(11, 16) = "1.7": HeroAtri(11, 17) = "0.35": HeroAtri(11, 18) = "0.4"
HeroAtri(12, 0) = "矮人狙击手": HeroAtri(12, 1) = "敏捷": HeroAtri(12, 2) = "远程": HeroAtri(12, 3) = "散弹": HeroAtri(12, 4) = "爆头": HeroAtri(12, 5) = "瞄准": HeroAtri(12, 6) = "暗杀": HeroAtri(12, 7) = "36": HeroAtri(12, 8) = "42": HeroAtri(12, 9) = "2": HeroAtri(12, 10) = "16": HeroAtri(12, 11) = "21": HeroAtri(12, 12) = "15": HeroAtri(12, 13) = "1.7": HeroAtri(12, 14) = "2.9": HeroAtri(12, 15) = "2.6": HeroAtri(12, 16) = "1.7": HeroAtri(12, 17) = "0.17": HeroAtri(12, 18) = "0.3"
HeroAtri(13, 0) = "矮人直升机": HeroAtri(13, 1) = "敏捷": HeroAtri(13, 2) = "远程": HeroAtri(13, 3) = "召唤飞弹": HeroAtri(13, 4) = "高射火炮": HeroAtri(13, 5) = "追踪导弹": HeroAtri(13, 6) = "火箭弹幕": HeroAtri(13, 7) = "41": HeroAtri(13, 8) = "51": HeroAtri(13, 9) = "2.4": HeroAtri(13, 10) = "18": HeroAtri(13, 11) = "24": HeroAtri(13, 12) = "23": HeroAtri(13, 13) = "1.8": HeroAtri(13, 14) = "2.8": HeroAtri(13, 15) = "2.1": HeroAtri(13, 16) = "1.7": HeroAtri(13, 17) = "0.2": HeroAtri(13, 18) = "0.5"
HeroAtri(14, 0) = "变体精灵": HeroAtri(14, 1) = "敏捷": HeroAtri(14, 2) = "远程": HeroAtri(14, 3) = "波浪形态": HeroAtri(14, 4) = "变体攻击": HeroAtri(14, 5) = "变形": HeroAtri(14, 6) = "复制": HeroAtri(14, 7) = "38": HeroAtri(14, 8) = "42": HeroAtri(14, 9) = "2.7": HeroAtri(14, 10) = "19": HeroAtri(14, 11) = "19": HeroAtri(14, 12) = "17": HeroAtri(14, 13) = "2": HeroAtri(14, 14) = "3": HeroAtri(14, 15) = "1.5": HeroAtri(14, 16) = "1.7": HeroAtri(14, 17) = "0.5": HeroAtri(14, 18) = "0.3"
HeroAtri(15, 0) = "敌法师": HeroAtri(15, 1) = "敏捷": HeroAtri(15, 2) = "近程": HeroAtri(15, 3) = "法力损毁": HeroAtri(15, 4) = "闪烁": HeroAtri(15, 5) = "法术护盾": HeroAtri(15, 6) = "法力虚空": HeroAtri(15, 7) = "49": HeroAtri(15, 8) = "53": HeroAtri(15, 9) = "3.1": HeroAtri(15, 10) = "20": HeroAtri(15, 11) = "22": HeroAtri(15, 12) = "15": HeroAtri(15, 13) = "1.2": HeroAtri(15, 14) = "2.8": HeroAtri(15, 15) = "1.8": HeroAtri(15, 16) = "1.45": HeroAtri(15, 17) = "0.3": HeroAtri(15, 18) = "0.3"
HeroAtri(16, 0) = "德鲁伊": HeroAtri(18, 1) = "敏捷": HeroAtri(18, 2) = "远程": HeroAtri(18, 3) = "召唤熊灵": HeroAtri(18, 4) = "狂猛": HeroAtri(18, 5) = "协同": HeroAtri(18, 6) = "变形术": HeroAtri(18, 7) = "46": HeroAtri(18, 8) = "50": HeroAtri(18, 9) = "3.4": HeroAtri(18, 10) = "17": HeroAtri(18, 11) = "24": HeroAtri(18, 12) = "13": HeroAtri(18, 13) = "2.1": HeroAtri(18, 14) = "2.7": HeroAtri(18, 15) = "1.4": HeroAtri(18, 16) = "1.7": HeroAtri(18, 17) = "0.33": HeroAtri(18, 18) = "0.5"
HeroAtri(17, 0) = "幻影长矛手": HeroAtri(17, 1) = "敏捷": HeroAtri(17, 2) = "近程": HeroAtri(17, 3) = "灵魂之矛": HeroAtri(17, 4) = "神出鬼没": HeroAtri(17, 5) = "并列": HeroAtri(17, 6) = "幻化之锋": HeroAtri(17, 7) = "45": HeroAtri(17, 8) = "67": HeroAtri(17, 9) = "3.3": HeroAtri(17, 10) = "18": HeroAtri(17, 11) = "23": HeroAtri(17, 12) = "21": HeroAtri(17, 13) = "1.7": HeroAtri(17, 14) = "2.8": HeroAtri(17, 15) = "2": HeroAtri(17, 16) = "1.7": HeroAtri(17, 17) = "0.3": HeroAtri(17, 18) = "0.3"
HeroAtri(18, 0) = "巨魔战将": HeroAtri(18, 1) = "敏捷": HeroAtri(18, 2) = "远程": HeroAtri(18, 3) = "战斗专注": HeroAtri(18, 4) = "狂战士之怒": HeroAtri(18, 5) = "旋风飞斧": HeroAtri(18, 6) = "热血战魂": HeroAtri(18, 7) = "38": HeroAtri(18, 8) = "56": HeroAtri(18, 9) = "1.9": HeroAtri(18, 10) = "17": HeroAtri(18, 11) = "21": HeroAtri(18, 12) = "13": HeroAtri(18, 13) = "2.2": HeroAtri(18, 14) = "2.75": HeroAtri(18, 15) = "1": HeroAtri(18, 16) = "1.7": HeroAtri(18, 17) = "0.3": HeroAtri(18, 18) = "0.51"
HeroAtri(19, 0) = "剑圣": HeroAtri(19, 1) = "敏捷": HeroAtri(19, 2) = "近程": HeroAtri(19, 3) = "剑刃风暴": HeroAtri(19, 4) = "治疗守卫": HeroAtri(19, 5) = "剑舞": HeroAtri(19, 6) = "无敌斩": HeroAtri(19, 7) = "44": HeroAtri(19, 8) = "48": HeroAtri(19, 9) = "3.8": HeroAtri(19, 10) = "20": HeroAtri(19, 11) = "20": HeroAtri(19, 12) = "14": HeroAtri(19, 13) = "1.9": HeroAtri(19, 14) = "2.85": HeroAtri(19, 15) = "1.4": HeroAtri(19, 16) = "1.7": HeroAtri(19, 17) = "0.3": HeroAtri(19, 18) = "0.3"
HeroAtri(20, 0) = "娜迦海妖": HeroAtri(20, 1) = "敏捷": HeroAtri(20, 2) = "近程": HeroAtri(20, 3) = "镜像": HeroAtri(20, 4) = "诱捕": HeroAtri(20, 5) = "激流": HeroAtri(20, 6) = "海妖之歌": HeroAtri(20, 7) = "51": HeroAtri(20, 8) = "53": HeroAtri(20, 9) = "5.9": HeroAtri(20, 10) = "21": HeroAtri(20, 11) = "21": HeroAtri(20, 12) = "18": HeroAtri(20, 13) = "2.3": HeroAtri(20, 14) = "2.75": HeroAtri(20, 15) = "1.65": HeroAtri(20, 16) = "1.7": HeroAtri(20, 17) = "0.5": HeroAtri(20, 18) = "0.5"
HeroAtri(21, 0) = "隐形刺客": HeroAtri(21, 1) = "敏捷": HeroAtri(21, 2) = "近程": HeroAtri(21, 3) = "烟幕": HeroAtri(21, 4) = "闪烁突袭": HeroAtri(21, 5) = "背刺": HeroAtri(21, 6) = "永久隐身": HeroAtri(21, 7) = "48": HeroAtri(21, 8) = "52": HeroAtri(21, 9) = "6.4": HeroAtri(21, 10) = "17": HeroAtri(21, 11) = "24": HeroAtri(21, 12) = "14": HeroAtri(21, 13) = "2": HeroAtri(21, 14) = "2.9": HeroAtri(21, 15) = "1.3": HeroAtri(21, 16) = "1.7": HeroAtri(21, 17) = "0.3": HeroAtri(21, 18) = "0.4"
HeroAtri(22, 0) = "月之女祭司": HeroAtri(22, 1) = "敏捷": HeroAtri(22, 2) = "远程": HeroAtri(22, 3) = "群星坠落": HeroAtri(22, 4) = "月神之箭": HeroAtri(22, 5) = "跳跃": HeroAtri(22, 6) = "月之暗面": HeroAtri(22, 7) = "38": HeroAtri(22, 8) = "43": HeroAtri(22, 9) = "1.9": HeroAtri(22, 10) = "17": HeroAtri(22, 11) = "20": HeroAtri(22, 12) = "17": HeroAtri(22, 13) = "1.85": HeroAtri(22, 14) = "2.75": HeroAtri(22, 15) = "1.65": HeroAtri(22, 16) = "1.7": HeroAtri(22, 17) = "0.3": HeroAtri(22, 18) = "0.5"
HeroAtri(23, 0) = "月之骑士": HeroAtri(23, 1) = "敏捷": HeroAtri(23, 2) = "远程": HeroAtri(23, 3) = "月光": HeroAtri(23, 4) = "月刃": HeroAtri(23, 5) = "月之祝福": HeroAtri(23, 6) = "月蚀": HeroAtri(23, 7) = "43": HeroAtri(23, 8) = "49": HeroAtri(23, 9) = "3.1": HeroAtri(23, 10) = "15": HeroAtri(23, 11) = "22": HeroAtri(23, 12) = "16": HeroAtri(23, 13) = "1.9": HeroAtri(23, 14) = "2.78": HeroAtri(23, 15) = "1.85": HeroAtri(23, 16) = "1.7": HeroAtri(23, 17) = "0.46": HeroAtri(23, 18) = "0.6"
HeroAtri(24, 0) = "风行者": HeroAtri(24, 1) = "智力": HeroAtri(24, 2) = "远程": HeroAtri(24, 3) = "束缚之箭": HeroAtri(24, 4) = "强力一击": HeroAtri(24, 5) = "风行者-技能": HeroAtri(24, 6) = "火力聚焦": HeroAtri(24, 7) = "44": HeroAtri(24, 8) = "56": HeroAtri(24, 9) = "1.4": HeroAtri(24, 10) = "15": HeroAtri(24, 11) = "17": HeroAtri(24, 12) = "22": HeroAtri(24, 13) = "2.5": HeroAtri(24, 14) = "1.4": HeroAtri(24, 15) = "2.6": HeroAtri(24, 16) = "1.5": HeroAtri(24, 17) = "0.4": HeroAtri(24, 18) = "0.3"
HeroAtri(25, 0) = "水晶室女": HeroAtri(25, 1) = "智力": HeroAtri(25, 2) = "远程": HeroAtri(25, 3) = "冰霜新星": HeroAtri(25, 4) = "冰封禁制": HeroAtri(25, 5) = "辉煌光环": HeroAtri(25, 6) = "极寒领域": HeroAtri(25, 7) = "38": HeroAtri(25, 8) = "44": HeroAtri(25, 9) = "1.2": HeroAtri(25, 10) = "16": HeroAtri(25, 11) = "16": HeroAtri(25, 12) = "21": HeroAtri(25, 13) = "1.7": HeroAtri(25, 14) = "1.6": HeroAtri(25, 15) = "2.9": HeroAtri(25, 16) = "1.7": HeroAtri(25, 17) = "0.53": HeroAtri(25, 18) = "0.5"
HeroAtri(26, 0) = "沉默术士": HeroAtri(26, 1) = "智力": HeroAtri(26, 2) = "远程": HeroAtri(26, 3) = "静默诅咒": HeroAtri(26, 4) = "智慧之刃": HeroAtri(26, 5) = "最后遗言": HeroAtri(26, 6) = "全领域静默": HeroAtri(26, 7) = "43": HeroAtri(26, 8) = "57": HeroAtri(26, 9) = "1.2": HeroAtri(26, 10) = "17": HeroAtri(26, 11) = "16": HeroAtri(26, 12) = "21": HeroAtri(26, 13) = "1.7": HeroAtri(26, 14) = "2.1": HeroAtri(26, 15) = "2.5": HeroAtri(26, 16) = "1.7": HeroAtri(26, 17) = "0.5": HeroAtri(26, 18) = "0.3"
HeroAtri(27, 0) = "风暴之灵": HeroAtri(27, 1) = "智力": HeroAtri(27, 2) = "远程": HeroAtri(27, 3) = "残影": HeroAtri(27, 4) = "电子涡流": HeroAtri(27, 5) = "超负荷": HeroAtri(27, 6) = "球状闪电": HeroAtri(27, 7) = "41": HeroAtri(27, 8) = "51": HeroAtri(27, 9) = "5.1": HeroAtri(27, 10) = "17": HeroAtri(27, 11) = "22": HeroAtri(27, 12) = "23": HeroAtri(27, 13) = "1.5": HeroAtri(27, 14) = "1.8": HeroAtri(27, 15) = "2.6": HeroAtri(27, 16) = "1.7": HeroAtri(27, 17) = "0.5": HeroAtri(27, 18) = "0.3"
HeroAtri(28, 0) = "光之守卫": HeroAtri(28, 1) = "智力": HeroAtri(28, 2) = "远程": HeroAtri(28, 3) = "冲击波": HeroAtri(28, 4) = "法力流失": HeroAtri(28, 5) = "查克拉魔法": HeroAtri(28, 6) = "灵魂形态": HeroAtri(28, 7) = "38": HeroAtri(28, 8) = "54": HeroAtri(28, 9) = "1.1": HeroAtri(28, 10) = "16": HeroAtri(28, 11) = "15": HeroAtri(28, 12) = "22": HeroAtri(28, 13) = "1.8": HeroAtri(28, 14) = "1.6": HeroAtri(28, 15) = "2.8": HeroAtri(28, 16) = "1.7": HeroAtri(28, 17) = "0.3": HeroAtri(28, 18) = "0.3"
HeroAtri(29, 0) = "仙女龙": HeroAtri(29, 1) = "智力": HeroAtri(29, 2) = "远程": HeroAtri(29, 3) = "幻象法球": HeroAtri(29, 4) = "新月之痕": HeroAtri(29, 5) = "相位转移": HeroAtri(29, 6) = "梦境缠绕": HeroAtri(29, 7) = "44": HeroAtri(29, 8) = "49": HeroAtri(29, 9) = "2.1": HeroAtri(29, 10) = "15": HeroAtri(29, 11) = "22": HeroAtri(29, 12) = "25": HeroAtri(29, 13) = "1.7": HeroAtri(29, 14) = "1.7": HeroAtri(29, 15) = "2.4": HeroAtri(29, 16) = "1.7": HeroAtri(29, 17) = "0.5": HeroAtri(29, 18) = "0.1"
HeroAtri(30, 0) = "秀逗魔导师": HeroAtri(30, 1) = "智力": HeroAtri(30, 2) = "远程": HeroAtri(30, 3) = "龙破斩": HeroAtri(30, 4) = "光之箭": HeroAtri(30, 5) = "炽魂": HeroAtri(30, 6) = "神灭斩": HeroAtri(30, 7) = "32": HeroAtri(30, 8) = "50": HeroAtri(30, 9) = "1.2": HeroAtri(30, 10) = "18": HeroAtri(30, 11) = "16": HeroAtri(30, 12) = "24": HeroAtri(30, 13) = "1.5": HeroAtri(30, 14) = "1.5": HeroAtri(30, 15) = "3.2": HeroAtri(30, 16) = "1.7": HeroAtri(30, 17) = "0.75": HeroAtri(30, 18) = "0.45"
HeroAtri(31, 0) = "圣骑士": HeroAtri(31, 1) = "智力": HeroAtri(31, 2) = "远程": HeroAtri(31, 3) = "赎罪": HeroAtri(31, 4) = "忠诚考验": HeroAtri(31, 5) = "神圣劝化": HeroAtri(31, 6) = "上帝之手": HeroAtri(31, 7) = "43": HeroAtri(31, 8) = "53": HeroAtri(31, 9) = "1.1": HeroAtri(31, 10) = "20": HeroAtri(31, 11) = "15": HeroAtri(31, 12) = "21": HeroAtri(31, 13) = "1.5": HeroAtri(31, 14) = "2.1": HeroAtri(31, 15) = "2.8": HeroAtri(31, 16) = "1.7": HeroAtri(31, 17) = "0.5": HeroAtri(31, 18) = "0.3"
HeroAtri(32, 0) = "魅惑魔女": HeroAtri(32, 1) = "智力": HeroAtri(32, 2) = "远程": HeroAtri(32, 3) = "不可侵犯": HeroAtri(32, 4) = "魅惑": HeroAtri(32, 5) = "自然之助": HeroAtri(32, 6) = "推进": HeroAtri(32, 7) = "47": HeroAtri(32, 8) = "57": HeroAtri(32, 9) = "1.7": HeroAtri(32, 10) = "16": HeroAtri(32, 11) = "19": HeroAtri(32, 12) = "16": HeroAtri(32, 13) = "1": HeroAtri(32, 14) = "1.8": HeroAtri(32, 15) = "2.8": HeroAtri(32, 16) = "1.7": HeroAtri(32, 17) = "0.3": HeroAtri(32, 18) = "0.3"
HeroAtri(33, 0) = "先知": HeroAtri(33, 1) = "智力": HeroAtri(33, 2) = "远程": HeroAtri(33, 3) = "推进": HeroAtri(33, 4) = "传送": HeroAtri(33, 5) = "自然之力": HeroAtri(33, 6) = "自然之怒": HeroAtri(33, 7) = "41": HeroAtri(33, 8) = "55": HeroAtri(33, 9) = "1.5": HeroAtri(33, 10) = "17": HeroAtri(33, 11) = "18": HeroAtri(33, 12) = "21": HeroAtri(33, 13) = "1.9": HeroAtri(33, 14) = "1.5": HeroAtri(33, 15) = "2.9": HeroAtri(33, 16) = "1.7": HeroAtri(33, 17) = "0.4": HeroAtri(33, 18) = "0.5"
HeroAtri(34, 0) = "萨尔": HeroAtri(34, 1) = "智力": HeroAtri(34, 2) = "远程": HeroAtri(34, 3) = "雷霆之击": HeroAtri(34, 4) = "恶念瞥视": HeroAtri(34, 5) = "动态力场": HeroAtri(34, 6) = "静态风暴": HeroAtri(34, 7) = "49": HeroAtri(34, 8) = "53": HeroAtri(34, 9) = "1.1": HeroAtri(34, 10) = "19": HeroAtri(34, 11) = "15": HeroAtri(34, 12) = "22": HeroAtri(34, 13) = "1.9": HeroAtri(34, 14) = "1.4": HeroAtri(34, 15) = "2.5": HeroAtri(34, 16) = "1.7": HeroAtri(34, 17) = "0.25": HeroAtri(34, 18) = "0.6"
HeroAtri(35, 0) = "众神之王": HeroAtri(35, 1) = "智力": HeroAtri(35, 2) = "远程": HeroAtri(35, 3) = "弧形闪电": HeroAtri(35, 4) = "雷击": HeroAtri(35, 5) = "静电力场": HeroAtri(35, 6) = "雷神之怒": HeroAtri(35, 7) = "41": HeroAtri(35, 8) = "49": HeroAtri(35, 9) = "1.5": HeroAtri(35, 10) = "19": HeroAtri(35, 11) = "11": HeroAtri(35, 12) = "20": HeroAtri(35, 13) = "1.8": HeroAtri(35, 14) = "1.2": HeroAtri(35, 15) = "2.7": HeroAtri(35, 16) = "1.7": HeroAtri(35, 17) = "0.633": HeroAtri(35, 18) = "0.4"


'制表(道具属性)
ItemAtri(0, 0) = "无"
ItemAtri(1, 0) = "护腕": ItemAtri(1, 1) = "圣物关口": ItemAtri(1, 2) = "属性: 增加3点的属性 额外增加3点力量 3点攻击力 ": ItemAtri(1, 3) = "6": ItemAtri(1, 4) = "3": ItemAtri(1, 5) = "3": ItemAtri(1, 10) = "3":
ItemAtri(2, 0) = "坚韧球": ItemAtri(2, 1) = "圣物关口": ItemAtri(2, 2) = "属性: 增加10点的攻击力 提高5点/秒的生命回复速度 提高125%的魔法恢复速度": ItemAtri(2, 8) = "5": ItemAtri(2, 9) = "125": ItemAtri(2, 10) = "10":
ItemAtri(3, 0) = "假腿（敏捷）": ItemAtri(3, 1) = "圣物关口": ItemAtri(3, 2) = "属性: 提升60的攻击速度 增加25%的攻击速度 增加8点任意属性 ": ItemAtri(3, 4) = "8": ItemAtri(3, 13) = "25": ItemAtri(3, 15) = "60":
ItemAtri(4, 0) = "空明杖": ItemAtri(4, 1) = "圣物关口": ItemAtri(4, 2) = "属性: 增加6点智力 增加15点攻击力 提高75%的魔法回复速度 提升10%的攻击速度": ItemAtri(4, 5) = "6": ItemAtri(4, 9) = "75": ItemAtri(4, 10) = "15": ItemAtri(4, 13) = "10":
ItemAtri(5, 0) = "灵魂之戒": ItemAtri(5, 1) = "圣物关口": ItemAtri(5, 2) = "属性: +3/秒的生命回复速度    +50%的魔法回复速度    牺牲（主动）   冷却时间：30秒     持续时间：10秒       使用者瞬间牺牲150点生命，来为自己提供150点额外魔法，但额外魔法只持续10秒，如果10秒内这150的魔法没有用完，10秒后 由牺牲带来的剩余魔法也会被扣除，持续时间内任何魔法需求都会优先从牺牲获得的额外魔法中取得": ItemAtri(5, 8) = "3": ItemAtri(5, 9) = "50":
ItemAtri(6, 0) = "迈达斯之手": ItemAtri(6, 1) = "圣物关口": ItemAtri(6, 2) = "属性：提升30%的攻击速度    炼制（主动）：可将任何非远古单位转化为金钱，对任何目标 统一给予190金钱。迈达斯之手收入为荣誉金钱": ItemAtri(6, 13) = "30":
ItemAtri(7, 0) = "魔杖": ItemAtri(7, 1) = "圣物关口": ItemAtri(7, 2) = "属性：增加3点所有属性。 充能（主动）：使用后为你补充生命和魔法（补充效果取决于能量点数，每个能量点补充15点生命与魔法）；附近1500范围有敌方英雄单位施展技能时会自动充能（上限15次）     冷却时间：15秒": ItemAtri(7, 3) = "3": ItemAtri(7, 4) = "3": ItemAtri(7, 5) = "3":
ItemAtri(8, 0) = "穷鬼盾": ItemAtri(8, 2) = "属性: 增加6点敏捷     伤害低档 (被动):受到普通攻击抵挡20点英雄造成伤害（远程英雄使用抵挡10点英雄造成的伤害），同时又60%的概率抵挡20点非英雄造成的伤害。": ItemAtri(8, 16) = "抵挡": ItemAtri(8, 4) = "6": ItemAtri(8, 17) = "100": ItemAtri(8, 18) = "20"
ItemAtri(9, 0) = "空灵挂件": ItemAtri(9, 1) = "圣物关口": ItemAtri(9, 2) = "属性:增加3点的属性 额外增加3点智力 3点攻击力": ItemAtri(9, 3) = "3": ItemAtri(9, 4) = "3": ItemAtri(9, 5) = "6": ItemAtri(9, 10) = "3":
ItemAtri(10, 0) = "相位靴": ItemAtri(10, 1) = "圣物关口": ItemAtri(10, 2) = "属性:增加60点速度，24点攻击。    相位（主动）：增加16%的移动速度，碰撞体积为0（可以穿越人，但不能无视地形），攻击或使用技能后buff消失。     冷却时间：8秒       持续时间：4秒 ": ItemAtri(10, 10) = "24": ItemAtri(10, 15) = "60":
ItemAtri(11, 0) = "幽灵系带": ItemAtri(11, 1) = "圣物关口": ItemAtri(11, 2) = "属性:增加3点的属性 额外增加3点敏捷 3点攻击力": ItemAtri(11, 3) = "3": ItemAtri(11, 4) = "6": ItemAtri(11, 5) = "3": ItemAtri(11, 10) = "3":
ItemAtri(12, 0) = "远行鞋": ItemAtri(12, 1) = "圣物关口": ItemAtri(12, 2) = "属性：提升95的移动速度。   传送（主动）：激活以后传送至友方的一个建筑或非英雄单位。  冷却时间：60秒      施法时间：3秒       魔法消耗：75点          提升效果不能和速度之靴、动力鞋、活着其他的远行鞋叠加。": ItemAtri(12, 15) = "95":
ItemAtri(13, 0) = "飞行信使-卷轴": ItemAtri(13, 1) = "支援法衣": ItemAtri(13, 2) = "未完成":
ItemAtri(14, 0) = "回复头巾-卷轴": ItemAtri(14, 1) = "支援法衣": ItemAtri(14, 2) = "属性：增加2点的所有属性。     回复光环（被动）：提高500范围内的所有友方单位2点/秒的生命回复速度。": ItemAtri(14, 3) = "2": ItemAtri(14, 4) = "2": ItemAtri(14, 5) = "2": ItemAtri(14, 8) = "2":
ItemAtri(15, 0) = "卡嘉之洞察长笛-卷轴": ItemAtri(15, 1) = "支援法衣": ItemAtri(15, 2) = "属性：提升10点/秒的生命回复速度。增加30%的魔法抗性     魔法屏障（主动）：神器的人造品，能呼唤能量立场保护附近的友军，使他们可以抵挡400点法术伤害。     50秒内不能叠加     冷却时间：60秒     持续时间：10秒     作用范围：700": ItemAtri(15, 8) = "10": ItemAtri(15, 12) = "30":
ItemAtri(16, 0) = "影之灵龛-卷轴": ItemAtri(16, 1) = "支援法衣": ItemAtri(16, 2) = "属性：增加50%回魔速度。增加6点力量     可以主动使用     合成后没有能量，每次敌方英雄在你周围被击杀，影之灵龛得到一点能量。能量从0第一次增加时会变为2（和以 前的血精石类似），所以能量按照这种方式增长：0/2/3/4/5/...每使用一次能量减少1。每个英雄死亡只能给1个影之灵龛充能。可以对友军使用提供治疗效果，会被来非小兵的伤害打断。也可对敌方使用造成一半的伤害。     治疗：8秒内回复400 HP     冷却时间：10秒": ItemAtri(16, 3) = "6": ItemAtri(16, 9) = "50":
ItemAtri(17, 0) = "秘法鞋-卷轴": ItemAtri(17, 1) = "支援法衣": ItemAtri(17, 2) = "属性：提升65点移动速度。增加250点的魔法值。     恢复魔法（主动）：恢复周围600范围的内友方单位135点的魔法。     冷却时间：45秒     魔法消耗：25点": ItemAtri(17, 7) = "250": ItemAtri(17, 15) = "65":
ItemAtri(18, 0) = "梅肯斯姆-卷轴": ItemAtri(18, 1) = "支援法衣": ItemAtri(18, 2) = "属性：增加5点的所有属性，5点的护甲。     回复光环（被动）：提高500范围内的所有友方单位4点/秒的生命回复速度。     活力（主动）：恢复750范围内的友方单位250点的生命，增加2点护甲。在持续时间内无法叠加。     持续时间：25秒     冷却时间：45秒     魔法消耗：150点 ": ItemAtri(18, 3) = "5": ItemAtri(18, 4) = "5": ItemAtri(18, 5) = "5": ItemAtri(18, 8) = "4": ItemAtri(18, 11) = "5":
ItemAtri(19, 0) = "古之忍耐姜歌": ItemAtri(19, 1) = "支援法衣": ItemAtri(19, 2) = "+8所有属性      +8攻击力     可以通过再次购买卷轴充能     耐久光环：+5%移动速度和攻击速度     战鼓：能够使用3次，使用之后，玩家周围的单位获得10%的移动速度和攻击速度加成，持续6秒     CD:30秒": ItemAtri(19, 3) = "8": ItemAtri(19, 4) = "8": ItemAtri(19, 5) = "8": ItemAtri(19, 10) = "8": ItemAtri(19, 13) = "5": ItemAtri(19, 15) = "5":
ItemAtri(20, 0) = "圣殿指环": ItemAtri(20, 1) = "支援法衣": ItemAtri(20, 2) = "未完成":
ItemAtri(21, 0) = "玄冥盾牌-卷轴": ItemAtri(21, 1) = "支援法衣": ItemAtri(21, 2) = "属性：增加5点的护甲。增加2点的所有属性。     防御提升（主动）：激活后提升周围友方单位2点的护甲 (700 有效范围) 。     魔法消耗：50点     冷却时间：15秒     持续时间：25秒（对非英雄单位持续30秒）": ItemAtri(21, 3) = "2": ItemAtri(21, 4) = "2": ItemAtri(21, 5) = "2": ItemAtri(21, 11) = "5":
ItemAtri(22, 0) = "吸血鬼的祭品-卷轴": ItemAtri(22, 1) = "支援法衣": ItemAtri(22, 2) = "未完成":
ItemAtri(23, 0) = "勇气勋章": ItemAtri(23, 1) = "支援法衣": ItemAtri(23, 2) = "+6护甲     +50%魔法恢复速度     孤注一掷：对敌方单位使用，使用之后你和该单位同时减少6点护甲，持续7秒，CD7秒     施法范围：800": ItemAtri(23, 9) = "50": ItemAtri(23, 11) = "6":
ItemAtri(24, 0) = "Aghanim的神杖": ItemAtri(24, 1) = "秘法圣所": ItemAtri(24, 2) = "属性：增加10点全属性，提高200生命上限，提高150魔法上限    奥义提升（被动）：提高某些英雄大招的威力": ItemAtri(24, 3) = "10": ItemAtri(24, 4) = "10": ItemAtri(24, 5) = "10": ItemAtri(24, 6) = "200": ItemAtri(24, 7) = "150":
ItemAtri(25, 0) = "Dagon之神力": ItemAtri(25, 1) = "秘法圣所": ItemAtri(25, 2) = "属性：增加3点所有属性，增加9攻击力，增加12/14/16/18/20智力，（消耗180/160/140/120/100点魔法，冷却时间40/36/32/28/24秒）造成400/500/600/700/800点伤害，释放距离600/650/700/750/800，可以通过购买卷轴升级，最多升级4次增加3点所有属性，增加9攻击力，增加12/14/16/18/20智力，（消耗180/160/140/120/100点魔法，冷却时间40/36/32/28/24秒）造成400/500/600/700/800点伤害，释放距离600/650/700/750/800，可以通过购买卷轴升级，最多升级4次     能量冲击（主动）": ItemAtri(25, 3) = "3": ItemAtri(25, 4) = "3": ItemAtri(25, 5) = "15/17/19/21/23":
ItemAtri(26, 0) = "纷争面纱": ItemAtri(26, 1) = "秘法圣所": ItemAtri(26, 2) = "+5 护甲     +5恢复速率     +12 智力     AOE技能，削减目标区域内敌方单位的魔法抗性     魔法抗性削减：25%     作用范围：475     施法距离：800     持续时间：15     魔法消耗：75     冷却时间：30": ItemAtri(26, 5) = "12": ItemAtri(26, 8) = "5": ItemAtri(26, 11) = "5":
ItemAtri(27, 0) = "死灵书": ItemAtri(27, 1) = "秘法圣所": ItemAtri(27, 2) = "属性：增加15智力，增加6点力量     召唤死灵（主动）+8/12/16力量，+15/21/24智力，激活后（消耗50魔法，冷却时间90秒）：复活死灵，召唤拥有特殊能力的1个恶魔战士（400/600/800生命值，21/41/61的普通攻击。6/8/10的护甲，40%魔法伤害减免，25/50/75攻击的法力损毁（同时减少60%魔法损毁的生命值），对杀死他的单位造成400/500/600伤害的最后遗愿，第三级时拥有魔法岗哨（视野1000，具有真视能力）和1个恶魔射手（400/600/800生命值，31/61/91的穿刺攻击力，350/450/550的攻击射程，6/8/10的护甲，40%魔法伤害减免，+3/6/9%攻击和移动速度的耐久光环（900有效范围），200/250/300的法力燃烧（同时造成等量伤害，施法距离250），为你战斗（同一时间只能召唤一组，无法攻击远古单位，被击杀后给予100金币），持续时间35秒，可以购买卷轴升级，最多升级2次。": ItemAtri(27, 3) = "6": ItemAtri(27, 5) = "15":
ItemAtri(28, 0) = "Eul的神圣法杖": ItemAtri(28, 1) = "秘法圣所": ItemAtri(28, 2) = "属性：增加10智力，增加125%魔法回复速度，增加25移动速度     龙卷风（主动）     激活后（无限使用，冷却时间30秒）龙卷风（造成对方停留在空中3.5秒）（施法距离700），可以对自己": ItemAtri(28, 5) = "10": ItemAtri(28, 9) = "125": ItemAtri(28, 15) = "25":
ItemAtri(29, 0) = "刷新球": ItemAtri(29, 1) = "秘法圣所": ItemAtri(29, 2) = "大魔法师Aghanim的杰作。     属性：提高5点/秒的生命回复速度。     提高150%的魔法回复速度。     增加40点的攻击力。     刷新（主动）：使用立刻结束所有技能/物品的冷却时间(不包括刷新球本身）。     冷却时间：160秒     魔法消耗：375点": ItemAtri(29, 8) = "5": ItemAtri(29, 9) = "150": ItemAtri(29, 10) = "40":
ItemAtri(30, 0) = "弹射法杖": ItemAtri(30, 1) = "秘法圣所": ItemAtri(30, 2) = "弹射法杖属性：增加10攻击力，增加10%攻击速度，增加10点智力     弹射（主动）     将一个目标向其面对方向推进600距离     施法距离 800     消耗魔法 25     冷却时间 25秒": ItemAtri(30, 5) = "10": ItemAtri(30, 10) = "10": ItemAtri(30, 13) = "10":
ItemAtri(31, 0) = "Guinsoo的邪恶镰刀": ItemAtri(31, 1) = "秘法圣所": ItemAtri(31, 2) = "属性：增加35智力，增加10点力量，增加10点敏捷。增加150%的魔法回复速度     妖术（主动）：激活后（消耗100魔法，冷却时间35秒）将目标变成一只绵羊，期间只能保留部分被动技能效果且不能攻击，只有缓慢的移动速度，持续3.5秒": ItemAtri(31, 3) = "10": ItemAtri(31, 4) = "10": ItemAtri(31, 5) = "35": ItemAtri(31, 9) = "150":
ItemAtri(32, 0) = "紫怨": ItemAtri(32, 1) = "秘法圣所": ItemAtri(32, 2) = "属性：+20点智力     +40点攻击力     +30%攻击速度     提高225%的魔法回复速度。     灵魂燃烧（主动）：沉默你的目标5秒钟并且之后带来附加25%的魔法伤害,冷却时间18秒": ItemAtri(32, 5) = "20": ItemAtri(32, 9) = "225": ItemAtri(32, 10) = "40": ItemAtri(32, 13) = "30":

End Sub

'英雄名称录入子过程
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


'选择英雄类型
Private Sub HeroType(HrTp, HrNm)
Dim i%
If HrTp.Text = "全部" Then
HrNm.Clear
Do While HeroAtri(i, 0) <> ""
HrNm.AddItem HeroAtri(i, 0)
i = i + 1
Loop
End If
Call HrNmEnroll("力量", HrTp, HrNm)
Call HrNmEnroll("敏捷", HrTp, HrNm)
Call HrNmEnroll("智力", HrTp, HrNm)
End Sub


'选择英雄A类型
Private Sub HrATp_Click()
HeroType HrATp, HrANm
End Sub

'选择英雄B类型
Private Sub HrBTp_Click()
HeroType HrBTp, HrBNm
End Sub

'道具名称录入子过程(x商店名)
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


'选择道具商店
Private Sub ItemShop(Shop, HrItem)
Dim i%, Index%
For Index = 1 To 6
If Shop.Text = "全部" Then
HrItem(Index).Clear
Do While ItemAtri(i, 0) <> ""
HrItem(Index).AddItem ItemAtri(i, 0)
i = i + 1
Loop
End If
Call ItemEnroll("圣物关口", Shop, HrItem)
Call ItemEnroll("支援法衣", Shop, HrItem)
Call ItemEnroll("秘法圣所", Shop, HrItem)
Call ItemEnroll("保护领地", Shop, HrItem)
Call ItemEnroll("魅惑遗物", Shop, HrItem)
Call ItemEnroll("远古兵器", Shop, HrItem)
Call ItemEnroll("饰品商人", Shop, HrItem)
Call ItemEnroll("武器商人", Shop, HrItem)
Call ItemEnroll("奎尔瑟兰的密室", Shop, HrItem)
Call ItemEnroll("奇迹古树", Shop, HrItem)
Call ItemEnroll("黑市商人", Shop, HrItem)
Call ItemEnroll("地精实验室", Shop, HrItem)
Call ItemEnroll("地精商店", Shop, HrItem)
i = 0
Next
End Sub

'选择英雄A道具商店
Private Sub ShopA_Click()
ItemShop ShopA, HrAItem
End Sub

'选择英雄B道具商店
Private Sub Shopb_Click()
ItemShop ShopB, HrBItem
End Sub


'计算及显示状态过程集

'确认等级
Private Sub ConfirmLevel(HrLv, Lv)
HrLv.Enabled = True
If HrLv.Text = "" Then
Lv = 0
Else
Lv = Val(HrLv.Text)
End If
End Sub

'确认bonus点
Private Sub ConfirmBonus(Hrbonus, bonus)
Hrbonus.Enabled = True
If Hrbonus.Text = "" Then
bonus = 0
Else
bonus = Val(Hrbonus.Text)
End If
End Sub

'计算三大属性
Private Sub TriAtributes(pow, agi, wit, Lv, N, bonus, ItemN)
'力量
pow = HeroAtri(N, 10) + (Lv - 1) * HeroAtri(N, 13) + bonus * 2
Dim i
For i = 1 To 6
pow = pow + ItemAtri(ItemN(i), 3)
Next

'敏捷
agi = HeroAtri(N, 11) + (Lv - 1) * HeroAtri(N, 14) + bonus * 2
For i = 1 To 6
pow = pow + ItemAtri(ItemN(i), 4)
Next

 '智力
wit = HeroAtri(N, 12) + (Lv - 1) * HeroAtri(N, 15) + bonus * 2
For i = 1 To 6
pow = pow + ItemAtri(ItemN(i), 5)
Next

End Sub

'计算血量及血回复
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
'血量回复
RHP = pow * 0.03

For i = 1 To 6
RHP = RHP + ItemAtri(ItemN(i), 8)
Next

End Sub

'计算蓝量及蓝回复
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
'蓝量回复
RMP = wit * 0.04

For i = 1 To 6
RMP = RMP * (1 + ItemAtri(ItemN(i), 9) / 100)
Next
End Sub

'计算攻击力
Private Sub CalcuAttack(N, pow, agi, wit, min, max, HrAttMin, HrAttMax, ItemN)
If HeroAtri(N, 1) = "力量" Then
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

ElseIf HeroAtri(N, 1) = "敏捷" Then
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

ElseIf HeroAtri(N, 1) = "智力" Then
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

'计算护甲及tag减伤
Private Sub CalcuDefence(N, agi, Def, HrDef, LabelDef, ItemN)
Def = HeroAtri(N, 9) - HeroAtri(N, 11) * 0.14 + agi * 0.14

Dim i
For i = 1 To 6
Def = Def + ItemAtri(ItemN(i), 11)
Next
HrDef.Text = Int(Def)

LabelDef.ToolTipText = "物理减伤" & Int(6 / (1 / Def + 0.06) * 10) / 10 & "%"
End Sub

'计算魔抗
Private Sub CalcuResistance(HrRes, Res, ItemN)
'魔抗覆盖
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

'计算回避率
Private Sub CalcuEvasion(HrEva, Eva, ItemN)
Dim i
For i = 1 To 6
Eva = Eva + ItemAtri(ItemN(i), 14) * 0.01
Next
HrEva.Text = Int(Eva * 100 * 10) / 10 & "%"
End Sub

'计算攻击速度及tag攻击间隔(百分数，小数点后一位)
Private Sub CalcuAttackSpeed(N, agi, V, HrV, aint, LabelV, min, max, ItemN)
V = agi * 0.01
Dim i
For i = 1 To 6
V = V + ItemAtri(ItemN(i), 13) * 0.01
Next
HrV.Text = Int(100 * V * 10) / 10 & "%"
aint = Int((HeroAtri(N, 16) / (1 + V)) * 100) / 100
If aint < 1 Then
LabelV.ToolTipText = "攻击间隔=0" & aint & "秒"
Else
LabelV.ToolTipText = "攻击间隔=" & aint & "秒"
End If
End Sub

'原始物理dps
Private Sub RudeDPS(min, max, aint, HrDPS)
HrDPS.Text = Int((max + min) / 2 / aint * 10) / 10
End Sub

'显示人物状态
Private Sub ConfirmState(state, HrSt)
state = "正常"
HrSt.Text = state
 End Sub

'确认英雄以及英雄技能录入
Private Sub HrSpEnroll(HrNm, HrSpNm, N)
'确认英雄行号
Dim i%
Do While HeroAtri(i, 0) <> ""
If HrNm.Text = HeroAtri(i, 0) Then
N = i
End If
i = i + 1
Loop
'技能显示
HrSpNm(1).Caption = HeroAtri(N, 3)
HrSpNm(2).Caption = HeroAtri(N, 4)
HrSpNm(3).Caption = HeroAtri(N, 5)
HrSpNm(4).Caption = HeroAtri(N, 6)
End Sub


'选择英雄A（英雄A技能录入及状态显示）
Private Sub HrANm_Click()
Frame1.Enabled = True
Call HrSpEnroll(HrANm, HrASpNm, A)
HrALv_change
End Sub

'选择英雄B（英雄B技能录入及状态显示）
Private Sub HrBNm_Click()
Frame2.Enabled = True
Call HrSpEnroll(HrBNm, HrBSpNm, B)
HrBLv_change
End Sub

'英雄A等级影响
Private Sub HrALv_change()
'确认等级
Call ConfirmLevel(HrALv, ALv)
'确认bonus点
Call ConfirmBonus(HrABonus, Abonus)
'计算三大属性
Call TriAtributes(Apow, Aagi, Awit, ALv, A, Abonus, ItemA)
'计算血量及血回复
Call CalcuHP(Apow, AHP, AHPM, ARHP, HrACurHP, HrAMaxHP, ItemA)
'计算蓝量及蓝回复
Call CalcuMP(Awit, AMP, AMPM, ARMP, HrACurMP, HrAMaxMP, ItemA)
'计算攻击力
Call CalcuAttack(A, Apow, Aagi, Awit, AMin, AMax, HrAAttMin, HrAAttMax, ItemA)
'计算护甲及tag减伤
Call CalcuDefence(A, Aagi, ADef, HrADef, LabelADef, ItemA)
'计算魔抗及回避
Call CalcuResistance(HrARes, ARes, ItemA)
Call CalcuEvasion(HrAEva, AEva, ItemA)
'计算攻击速度及tag攻击间隔(百分数，小数点后一位)
Call CalcuAttackSpeed(A, Aagi, Va, HrAV, AaInt, LabelAV, AMin, AMax, ItemA)
'原始物理dps
Call RudeDPS(AMin, AMax, AaInt, HrADPS)
'显示人物状态
Call ConfirmState(Astate, HrASt)
End Sub

'英雄B等级影响
Private Sub HrBLv_change()
'确认等级
Call ConfirmLevel(HrBLv, BLv)
'确认bonus点
Call ConfirmBonus(HrBBonus, Bbonus)
'计算三大属性
Call TriAtributes(Bpow, Bagi, Bwit, BLv, B, Bbonus, ItemB)
'计算血量及血回复
Call CalcuHP(Bpow, BHP, BHPM, BRHP, HrBCurHP, HrBMaxHP, ItemB)
'计算蓝量及蓝回复
Call CalcuMP(Bwit, BMP, BMPM, BRMP, HrBCurMP, HrBMaxMP, ItemB)
'计算攻击力
Call CalcuAttack(B, Bpow, Bagi, Bwit, BMin, BMax, HrBAttMin, HrBAttMax, ItemB)
'计算护甲及tag减伤
Call CalcuDefence(B, Bagi, BDef, HrBDef, LabelBDef, ItemB)
'计算魔抗及回避
Call CalcuResistance(HrBRes, BRes, ItemB)
Call CalcuEvasion(HrBEva, BEva, ItemB)
'计算攻击速度及tag攻击间隔(百分数，小数点后一位)
Call CalcuAttackSpeed(B, Bagi, Vb, HrBV, BaInt, LabelBV, BMin, BMax, ItemB)
'原始物理dps
Call RudeDPS(BMin, BMax, BaInt, HrBDPS)
'显示人物状态
Call ConfirmState(BState, HrBSt)
End Sub

'英雄A附属点影响
Private Sub HrAbonus_change()
HrALv_change
End Sub

'英雄B附属点影响
Private Sub HrBbonus_change()
HrBLv_change
End Sub


'确认道具以及道具技能录入（技能名称赋予按钮）
Private Sub ItemSpEnroll(HrItem, ItemSp, ItemN)
'确认道具行号
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

'道具技能（未完成）
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


'战斗过程状态显示子过程（只显示不计算，不给相关变量赋值）

'显示血量
Private Sub ShowHP(HP, HPM, HrCurHP, HrMaxHP)
HrMaxHP.Text = HPM
If Int(HP) <= 0 Then
HrCurHP.Text = 0
Else
HrCurHP.Text = Int(HP)
End If
End Sub

'显示蓝量
Private Sub ShowMP(MP, MPM, HrCurMP, HrMaxMP)
HrMaxMP.Text = MPM
HrCurMP.Text = Int(MP)
If Int(MP) <= 0 Then
HrCurMP.Text = 0
Else
HrCurMP.Text = Int(MP)
End If
End Sub

'显示攻击力
Private Sub ShowAttack(min, max, HrAttMin, HrAttMax)
HrAttMin.Text = Int(min)
HrAttMax.Text = Int(max)
End Sub

'显示护甲及tag减伤
Private Sub ShowDefence(Def, HrDef, LabelDef)
HrDef.Text = Int(Def)
LabelDef.ToolTipText = "物理减伤" & Int(6 / (1 / Def + 0.06) * 10) / 10 & "%"
End Sub

'显示魔抗
Private Sub ShowResistance(HrRes, Res)
HrRes.Text = Int(Res * 100 * 10) / 10 & "%"
End Sub

'显示回避率
Private Sub ShowEvasion(HrEva, Eva)
HrEva.Text = Int(Eva * 100 * 10) / 10 & "%"
End Sub

'显示攻击速度及tag攻击间隔(百分数，小数点后一位)
Private Sub ShowAttackSpeed(V, HrV, aint, LabelV)
HrV.Text = 100 * V & "%"
LabelV.ToolTipText = "攻击间隔" & aint & "秒"
End Sub

'计算并显示物理dps
Private Sub RealDPS(Container, HrDPS)
HrDPS.Text = Int(Container / Counter * 100 * 10) / 10
End Sub

'显示战斗状态
Private Sub BattleState(state, HrSt)
HrSt.Text = state
 End Sub
 

'开始模拟（精度0.01秒）
Private Sub Start_Click()
'赋值
AbAt = HeroAtri(A, 17)
AbCast = HeroAtri(A, 18)
BbAt = HeroAtri(B, 17)
BbCast = HeroAtri(B, 18)
ContainerA = 0
ContainerB = 0

'开启道具被动技能（代码见下）
'辉耀光环
Call HYHalo(ItemA, BRHP)
'回复光环
Call HPHalo(ItemA, ARHP)
'辉煌光环
Call RMPHalo(ItemA, ARMP)
'专注光环
Call IDefHalo(ItemA, ADef)
'霜冷光环
Call HailHalo(ItemA, Vb)

'辉耀光环
Call HYHalo(ItemB, ARHP)
'回复光环
Call HPHalo(ItemB, BRHP)
'辉煌光环
Call RMPHalo(ItemB, BRMP)
'专注光环
Call IDefHalo(ItemB, BDef)
'霜冷光环
Call HailHalo(ItemB, Va)

'致命一击
Call CriticalHitValue(ItemA, ACHChance, ACHTimes)
Call CriticalHitValue(ItemB, BCHChance, BCHTimes)
'重击
Call HeavyHitValue(ItemA, AStunChance, AStunTime)
Call HeavyHitValue(ItemB, BStunChance, BStunTime)
'毒素
Call PoisonValue(ItemA, APoisonDamage, APoisonTime)
Call PoisonValue(ItemB, BPoisonDamage, BPoisonTime)
'抵挡
Call ShieldValue(ItemA, AShChance, AShDamage)
Call ShieldValue(ItemB, BShChance, BShDamage)
'吸血
Call AbsorbValue(ItemA, Aabsorb)
Call AbsorbValue(ItemB, Babsorb)

'调整速率并开始计时
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

'光环及被动技能模块

'辉耀光环
Private Sub HYHalo(ItemN, obRHP)
Dim i, storage
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "辉耀" Then
storage = storage + ItemAtri(ItemN(i), 17)
End If
Next
obRHP = obRHP - storage
End Sub

'回复光环
Private Sub HPHalo(ItemN, RHP)
Dim i, storage
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "回复光环" Then
storage = storage + ItemAtri(ItemN(i), 17)
End If
Next
RHP = RHP + storage
End Sub

'辉煌光环
Private Sub RMPHalo(ItemN, RMP)
Dim i, storage
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "辉煌光环" Then
storage = storage + ItemAtri(ItemN(i), 17)
End If
Next
RMP = RMP + storage
End Sub

'专注光环
Private Sub IDefHalo(ItemN, Def)
Dim i, storage
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "专注光环" Then
storage = storage + ItemAtri(ItemN(i), 17)
End If
Next
Def = Def + storage
End Sub

'霜冷光环
Private Sub HailHalo(ItemN, obV)
Dim i, storage
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "霜冷光环" Then
storage = storage + ItemAtri(ItemN(i), 17)
End If
Next
obV = obV - storage
End Sub

'致命一击
Private Sub CriticalHitValue(ItemN, CHChance, CHtimes)
Dim i
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "致命一击" Then
If ItemAtri(ItemN(i), 17) >= CHChance Then
CHChance = ItemAtri(ItemN(i), 17)
CHtimes = ItemAtri(ItemN(i), 18)
End If
End If
Next
End Sub

'重击
Private Sub HeavyHitValue(ItemN, StunChance, Stuntime)
Dim i
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "重击" Then
If ItemAtri(ItemN(i), 17) >= StunChance Then
StunChance = ItemAtri(ItemN(i), 17)
Stuntime = ItemAtri(ItemN(i), 18)
End If
End If
Next
End Sub

'毒素
Private Sub PoisonValue(ItemN, PoisonDamage, PoisonTime)
Dim i
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "毒素" Then
If ItemAtri(ItemN(i), 17) >= PoisonDamage Then
PoisonDamage = ItemAtri(ItemN(i), 17)
PoisonTime = ItemAtri(ItemN(i), 18)
End If
End If
Next
End Sub

'抵挡
Private Sub ShieldValue(ItemN, ShChance, ShDamage)
Dim i
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "抵挡" Then
If ItemAtri(ItemN(i), 17) >= ShChance Then
ShChance = ItemAtri(ItemN(i), 17)
ShDamage = ItemAtri(ItemN(i), 18)
End If
End If
Next
End Sub

'吸血
Private Sub AbsorbValue(ItemN, absorb)
Dim i, storage
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "吸血" Then
storage = storage + ItemAtri(ItemN(i), 17)
End If
Next
absorb = storage
End Sub

'重生
Private Sub Revive(ItemN, HrItem, HP, HPM, MP, MPM, Hero)
Dim i, storage
For i = 1 To 6
If ItemAtri(ItemN(i), 16) = "重生" Then
storage = i
End If
Next
If storage <> 0 Then
If HP <= 0 Then
HP = HPM
MP = MPM
ItemN(storage) = 0
HrItem(storage).Text = ""
BattleLog.Text = BattleLog.Text & Int(Counter / 10) / 10 & "秒：" & Hero & "信春哥原地复了个活！！" & vbCrLf & vbCrLf
End If
End If
End Sub

'眩晕判定模块
Private Sub StunJudge(state, Stun, Stuntime)
If state = "眩晕" Then
If Counter = Stun + Stuntime * 100 Then
state = "正常"
End If
End If
End Sub

'中毒判定模块
Private Sub PoisonJudge(PoisonSt, Poison, obRHP, PoisonDamage, PoisonTime)
If PoisonSt = 1 Then
If Counter = Poison + 100 * PoisonTime Then
PoisonSt = 0
obRHP = obRHP + PoisonDamage
End If
End If
End Sub

'回蓝回血模块
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


'攻击模块组

'判断状态并进行动作选择(自动专用)(未完成)
Private Sub Priority(state, attack)
If state = "正常" Then
state = "攻击中"
attack = 0
End If
End Sub

'普通攻击模块+道具被动技能

'攻击计数器开始
Private Sub NACounter(state, attack)
If state = "攻击中" Then
attack = attack + 1
End If
End Sub

'伤害计算时 程序组

'Miss判定
Private Sub Miss(obEva, attacker)
Dim Missrandom
Randomize
Missrandom = Int(Rnd * 100) + 1
If Missrandom <= Int(obEva) Then
If Int(Counter / 10) / 10 < 1 Then
BattleLog.Text = BattleLog.Text & Int(Counter / 10) / 10 & "秒：" & attacker & "Miss！！" & vbCrLf & vbCrLf
Else
BattleLog.Text = BattleLog.Text & "0" & Int(Counter / 10) / 10 & "秒：" & attacker & "Miss！！" & vbCrLf & vbCrLf
End If
EvaCounter = 0
Else: EvaCounter = 1
End If
End Sub

'原始攻击计算和暴击判定
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
BattleLog.Text = BattleLog.Text & Int(Counter / 10) / 10 & "秒：" & attacker & "打出了致命一击！！" & vbCrLf & vbCrLf
Else
BattleLog.Text = BattleLog.Text & "0" & Int(Counter / 10) / 10 & "秒：" & attacker & "打出了致命一击！！" & vbCrLf & vbCrLf
End If
damage = random * CHtimes * (1 - decrease)
Else
damage = random * (1 - decrease)
End If

End If
End Sub

'
'重击判定
Private Sub HeavyCalcu(bat, V, attack, StunChance, Stun, obstate, attacker, defender)
Dim i%, Stunrandom
i = Int(bat / (1 + V) * 100)
If attack = i Then
Randomize
Stunrandom = Int(Rnd * 100) + 1
If Stunrandom <= Int(100 * StunChance) Then
obstate = "眩晕"
Stun = Counter
If Int(Counter / 10) / 10 < 1 Then
BattleLog.Text = BattleLog.Text & Int(Counter / 10) / 10 & "秒：" & defender & "被" & attacker & "打晕了！！" & vbCrLf & vbCrLf
Else
BattleLog.Text = BattleLog.Text & "0" & Int(Counter / 10) / 10 & "秒：" & defender & "被" & attacker & "打晕了！！" & vbCrLf & vbCrLf
End If
End If
End If
End Sub

'毒素判定
Private Sub PoisonCalcu(bat, V, attack, PoisonDamage, PoisonSt, Poison, obRHP, defender)
Dim i%
i = Int(bat / (1 + V) * 100)
If attack = i Then
If PoisonDamage <> 0 And PoisonSt = 0 Then
Poison = Counter
PoisonSt = 1
obRHP = obRHP - PoisonDamage
If Int(Counter / 10) / 10 < 1 Then
BattleLog.Text = BattleLog.Text & "0" & Int(Counter / 10) / 10 & "秒：" & defender & "中毒了！！" & vbCrLf & vbCrLf
Else
BattleLog.Text = BattleLog.Text & Int(Counter / 10) / 10 & "秒：" & defender & "中毒了！！" & vbCrLf & vbCrLf
End If
End If
End If
End Sub

'抵挡判定
Private Sub ShieldCalcu(bat, V, attack, obShChance, obShDamage, defender, damage)
Dim i%, SHrandom
i = Int(bat / (1 + V) * 100)
If attack = i Then
SHrandom = Int(Rnd * 100) + 1
If SHrandom <= Int(100 * obShChance) Then
If Int(Counter / 10) / 10 < 1 Then
BattleLog.Text = BattleLog.Text & "0" & Int(Counter / 10) / 10 & "秒：" & defender & "格挡住了攻击！！" & vbCrLf & vbCrLf
Else
BattleLog.Text = BattleLog.Text & Int(Counter / 10) / 10 & "秒：" & defender & "格挡住了攻击！！" & vbCrLf & vbCrLf
End If
damage = damage - obShDamage
End If
End If
End Sub

'减血及显示战斗记录
Private Sub HPCalcu(bat, V, attack, Container, damage, obHP, attacker, defender)
Dim i%
i = Int(bat / (1 + V) * 100)
If attack = i Then
Container = Container + damage
obHP = obHP - damage
'伤害显示
If Int(Counter / 10) / 10 < 1 Then
BattleLog.Text = BattleLog.Text & "0" & Int(Counter / 10) / 10 & "秒：" & attacker & "用普通攻击对" & defender & "造成了" & Int(damage) + 1 & "点伤害" & vbCrLf & vbCrLf
Else
BattleLog.Text = BattleLog.Text & Int(Counter / 10) / 10 & "秒：" & attacker & "用普通攻击对" & defender & "造成了" & Int(damage) + 1 & "点伤害" & vbCrLf & vbCrLf
End If
End If
End Sub

'吸血判定
Private Sub AbsorbCalcu(bat, V, attack, damage, absorb, HP, attacker, defender)
Dim i%
i = Int(bat / (1 + V) * 100)
If attack = i Then
Dim absorbSto
If absorb <> 0 Then
absorbSto = Int(damage * absorb * 10) / 10
HP = HP + absorbSto
If Int(Counter / 10) / 10 < 1 Then
BattleLog.Text = BattleLog.Text & "0" & Int(Counter / 10) / 10 & "秒：" & attacker & "吸取了" & defender & Int(absorbSto) + 1 & "点生命" & vbCrLf & vbCrLf
Else
BattleLog.Text = BattleLog.Text & Int(Counter / 10) / 10 & "秒：" & attacker & "吸取了" & defender & Int(absorbSto) + 1 & "点生命" & vbCrLf & vbCrLf
End If
End If
End If
End Sub

'一轮攻击结束
Private Sub BattleEnd(attack, aint, Cmd, state)
If attack = aint * 100 Then
attack = 0
Cmd(0).Value = False
state = "正常"
End If
End Sub

'操作提示语(手动专用)
Private Sub ModeTips(Player, Cmd)
If Cmd(0).Value = False And Cmd(1).Value = False And Cmd(2).Value = False And Cmd(3).Value = False And Cmd(4).Value = False Then
BattleLog.Text = BattleLog.Text & Player & "请根据状态提示按下操作相应按钮" & vbCrLf & vbCrLf
End If
End Sub


'结果判定模块
Private Sub result(HP1, HP2)
Dim Winner$, Loser$
If HP2 < 1 Then
BattleTimer.Interval = 0
Winner = HeroAtri(A, 0)
Loser = HeroAtri(B, 0)
BattleLog.Text = BattleLog.Text & Int(Counter / 10) / 10 & "秒：" & Loser & "的生命值为0，胜利者是" & Winner
HrASt = "战斗结束"
HrBSt = "战斗结束"
End If
If HP1 < 1 Then
BattleTimer.Interval = 0
Winner = HeroAtri(B, 0)
Loser = HeroAtri(A, 0)
BattleLog.Text = BattleLog.Text & Int(Counter / 10) / 10 & "秒：" & Loser & "的生命值为0，胜利者是" & Winner
HrASt = "战斗结束"
HrBSt = "战斗结束"
End If
End Sub


'控制按钮返回状态数
Private Sub CmdA_Click(Index As Integer)
Select Case Index
Case 0
CmdA(Index).Value = True
Astate = "攻击中"
Case 1
CmdA(Index).Value = True
Astate = "施法中"
Case 2
CmdA(Index).Value = True
Astate = "施法中"
Case 3
CmdA(Index).Value = True
Astate = "施法中"
Case 4
CmdA(Index).Value = True
Astate = "施法中"
End Select
End Sub

Private Sub CmdB_Click(Index As Integer)
Select Case Index
Case 0
CmdB(Index).Value = True
BState = "攻击中"
Case 1
CmdB(Index).Value = True
BState = "施法中"
Case 2
CmdB(Index).Value = True
BState = "施法中"
Case 3
CmdB(Index).Value = True
BState = "施法中"
Case 4
CmdB(Index).Value = True
BState = "施法中"
End Select
End Sub


'模式按钮
Private Sub AutoM_Click()
BattleLog.Text = ""
End Sub

Private Sub P1M_Click()
BattleLog.Text = ""
BattleLog.Text = "P1Mode：请在点击开始后点击相应操作开始模拟" & vbCrLf & vbCrLf
End Sub

Private Sub P1P2M_Click()
BattleLog.Text = ""
BattleLog.Text = "P1P2Mode：请在点击开始后分别点击相应操作开始模拟" & vbCrLf & vbCrLf
End Sub

'自动换行显示
Private Sub BattleLog_Change()
If BattleLog.Text <> "" Then
BattleLog.SelStart = Len(BattleLog.Text)
End If
End Sub

'时钟事件(模拟过程)
Private Sub BattleTimer_Timer()
'自动模式
If AutoM.Value = True Then
Counter = Counter + 1
Recovery AHP, AHPM, ARHP, AMP, AMPM, ARMP
Recovery BHP, BHPM, BRHP, BMP, BMPM, BRMP
'眩晕判定模块
Call StunJudge(Astate, AStun, AStunTime)
Call StunJudge(BState, Bstun, BStunTime)
'中毒判定模块
Call PoisonJudge(APoisonSt, APoison, BRHP, APoisonDamage, APoisonTime)
Call PoisonJudge(BPoisonSt, BPoison, ARHP, BPoisonDamage, BPoisonTime)

'判断状态并进行动作选择(自动专用)
Call Priority(Astate, Aattack)
'攻击计数器开始
Call NACounter(Astate, Aattack)

'Miss判定
Call Miss(BEva, HeroAtri(A, 0))
If EvaCounter = 1 Then
'原始攻击计算和暴击判定
Call PureDMG(AbAt, Va, Aattack, AMin, AMax, ADef, ADamage, ACHChance, ACHTimes, HeroAtri(A, 0))
'重击判定
Call HeavyCalcu(AbAt, Va, Aattack, AStunChance, AStun, BState, HeroAtri(A, 0), HeroAtri(B, 0))
'毒素判定
Call PoisonCalcu(AbAt, Va, Aattack, APoisonDamage, APoisonSt, APoison, BRHP, HeroAtri(B, 0))
'抵挡判定
Call ShieldCalcu(AbAt, Va, Aattack, BShChance, BShDamage, HeroAtri(B, 0), ADamage)
'减血及显示战斗记录
Call HPCalcu(AbAt, Va, Aattack, ContainerA, ADamage, BHP, HeroAtri(A, 0), HeroAtri(B, 0))
'吸血判定
Call AbsorbCalcu(AbAt, Va, Aattack, ADamage, Aabsorb, AHP, HeroAtri(A, 0), HeroAtri(B, 0))

End If

'一轮攻击结束
Call BattleEnd(Aattack, AaInt, CmdA, Astate)

'判断状态并进行动作选择(自动专用)
Call Priority(BState, BAttack)
'攻击计数器开始
Call NACounter(BState, BAttack)

'Miss判定
Call Miss(AEva, HeroAtri(B, 0))
If EvaCounter = 1 Then
'原始攻击计算和暴击判定
Call PureDMG(BbAt, Vb, BAttack, BMin, BMax, BDef, BDamage, BCHChance, BCHTimes, HeroAtri(B, 0))
'重击判定
Call HeavyCalcu(BbAt, Vb, BAttack, BStunChance, Bstun, Astate, HeroAtri(B, 0), HeroAtri(A, 0))
'毒素判定
Call PoisonCalcu(BbAt, Vb, BAttack, BPoisonDamage, BPoisonSt, BPoison, ARHP, HeroAtri(A, 0))
'抵挡判定
Call ShieldCalcu(BbAt, Vb, BAttack, AShChance, AShDamage, HeroAtri(A, 0), BDamage)
'减血及显示战斗记录
Call HPCalcu(BbAt, Vb, BAttack, ContainerB, BDamage, AHP, HeroAtri(B, 0), HeroAtri(A, 0))
'吸血判定
Call AbsorbCalcu(BbAt, Vb, BAttack, BDamage, Babsorb, BHP, HeroAtri(B, 0), HeroAtri(A, 0))
End If

'一轮攻击结束
Call BattleEnd(BAttack, BaInt, CmdB, BState)

'显示血量
Call ShowHP(AHP, AHPM, HrACurHP, HrAMaxHP)
'显示蓝量
Call ShowMP(AMP, AMPM, HrACurMP, HrAMaxMP)
'显示攻击力
Call ShowAttack(AMin, AMax, HrAAttMin, HrAAttMax)
'显示护甲及tag减伤
Call ShowDefence(ADef, HrADef, LabelADef)
'计算魔抗及回避
Call ShowResistance(HrARes, ARes)
Call ShowEvasion(HrAEva, AEva)
'显示攻击速度及tag攻击间隔(百分数，小数点后一位)
Call ShowAttackSpeed(Va, HrAV, AaInt, LabelAV)
'计算并显示物理dps
Call RealDPS(ContainerA, HrADPS)
'显示战斗状态
Call BattleState(Astate, HrASt)

'显示血量
Call ShowHP(BHP, BHPM, HrBCurHP, HrBMaxHP)
'显示蓝量
Call ShowMP(BMP, BMPM, HrBCurMP, HrBMaxMP)
'显示攻击力
Call ShowAttack(BMin, BMax, HrBAttMin, HrBAttMax)
'显示护甲及tag减伤
Call ShowDefence(BDef, HrBDef, LabelBDef)
'计算魔抗及回避
Call ShowResistance(HrBRes, BRes)
Call ShowEvasion(HrBEva, BEva)
'显示攻击速度及tag攻击间隔(百分数，小数点后一位)
Call ShowAttackSpeed(Vb, HrBV, BaInt, LabelBV)
'计算并显示物理dps
Call RealDPS(ContainerB, HrBDPS)
'显示战斗状态
Call BattleState(BState, HrBSt)

'重生
Call Revive(ItemA, HrAItem, AHP, AHPM, AMP, AMPM, HeroAtri(A, 0))
Call Revive(ItemB, HrBItem, BHP, BHPM, BMP, BMPM, HeroAtri(B, 0))
result AHP, BHP

'P1 vs COM模式
ElseIf P1M.Value = True Then
If CmdA(0).Value = True Then
Counter = Counter + 1
Recovery AHP, AHPM, ARHP, AMP, AMPM, ARMP
Recovery BHP, BHPM, BRHP, BMP, BMPM, BRMP
'眩晕判定模块
Call StunJudge(Astate, AStun, AStunTime)
Call StunJudge(BState, Bstun, BStunTime)

'攻击计数器开始(如果手动改状态)
Call NACounter(Astate, Aattack)

'Miss判定
Call Miss(BEva, HeroAtri(A, 0))
If EvaCounter = 1 Then
'原始攻击计算和暴击判定
Call PureDMG(AbAt, Va, Aattack, AMin, AMax, ADef, ADamage, ACHChance, ACHTimes, HeroAtri(A, 0))
'重击判定
Call HeavyCalcu(AbAt, Va, Aattack, AStunChance, AStun, BState, HeroAtri(A, 0), HeroAtri(B, 0))
'毒素判定
Call PoisonCalcu(AbAt, Va, Aattack, APoisonDamage, APoisonSt, APoison, BRHP, HeroAtri(B, 0))
'抵挡判定
Call ShieldCalcu(AbAt, Va, Aattack, BShChance, BShDamage, HeroAtri(B, 0), ADamage)
'减血及显示战斗记录
Call HPCalcu(AbAt, Va, Aattack, ContainerA, ADamage, BHP, HeroAtri(A, 0), HeroAtri(B, 0))
'吸血判定
Call AbsorbCalcu(AbAt, Va, Aattack, ADamage, Aabsorb, AHP, HeroAtri(A, 0), HeroAtri(B, 0))
End If

'一轮攻击结束
Call BattleEnd(Aattack, AaInt, CmdA, Astate)


'减血及显示战斗记录
Call HPCalcu(AbAt, Va, Aattack, ContainerA, ADamage, BHP, HeroAtri(A, 0), HeroAtri(B, 0))
'吸血判定
Call AbsorbCalcu(AbAt, Va, Aattack, ADamage, Aabsorb, AHP, HeroAtri(A, 0), HeroAtri(B, 0))
'一轮攻击结束
Call BattleEnd(Aattack, AaInt, CmdA, Astate)
'模式提示语(手动专用)
Call ModeTips("P1", CmdA)

'判断状态并进行动作选择(自动专用)
Call Priority(BState, BAttack)
'攻击计数器开始
Call NACounter(BState, BAttack)

'Miss判定
Call Miss(BEva, HeroAtri(A, 0))
If EvaCounter = 1 Then
'原始攻击计算和暴击判定
Call PureDMG(BbAt, Vb, BAttack, BMin, BMax, BDef, BDamage, BCHChance, BCHTimes, HeroAtri(B, 0))
'重击判定
Call HeavyCalcu(BbAt, Vb, BAttack, BStunChance, Bstun, Astate, HeroAtri(B, 0), HeroAtri(A, 0))
'毒素判定
Call PoisonCalcu(BbAt, Vb, BAttack, BPoisonDamage, BPoisonSt, BPoison, ARHP, HeroAtri(A, 0))
'抵挡判定
Call ShieldCalcu(BbAt, Vb, BAttack, AShChance, AShDamage, HeroAtri(A, 0), BDamage)
'减血及显示战斗记录
Call HPCalcu(BbAt, Vb, BAttack, ContainerB, BDamage, AHP, HeroAtri(B, 0), HeroAtri(A, 0))
'吸血判定
Call AbsorbCalcu(BbAt, Vb, BAttack, BDamage, Babsorb, BHP, HeroAtri(B, 0), HeroAtri(A, 0))
End If

'一轮攻击结束
Call BattleEnd(BAttack, BaInt, CmdB, BState)


'减血及显示战斗记录
Call HPCalcu(BbAt, Vb, BAttack, ContainerB, BDamage, AHP, HeroAtri(B, 0), HeroAtri(A, 0))
'吸血判定
Call AbsorbCalcu(BbAt, Vb, BAttack, BDamage, Babsorb, BHP, HeroAtri(B, 0), HeroAtri(A, 0))
'一轮攻击结束
Call BattleEnd(BAttack, BaInt, CmdB, BState)

'显示血量
Call ShowHP(AHP, AHPM, HrACurHP, HrAMaxHP)
'显示蓝量
Call ShowMP(AMP, AMPM, HrACurMP, HrAMaxMP)
'显示攻击力
Call ShowAttack(AMin, AMax, HrAAttMin, HrAAttMax)
'显示护甲及tag减伤
Call ShowDefence(ADef, HrADef, LabelADef)
'计算魔抗及回避
Call ShowResistance(HrARes, ARes)
Call ShowEvasion(HrAEva, AEva)
'显示攻击速度及tag攻击间隔(百分数，小数点后一位)
Call ShowAttackSpeed(Va, HrAV, AaInt, LabelAV)
'计算并显示物理dps
Call RealDPS(ContainerA, HrADPS)
'显示战斗状态
Call BattleState(Astate, HrASt)

'显示血量
Call ShowHP(BHP, BHPM, HrBCurHP, HrBMaxHP)
'显示蓝量
Call ShowMP(BMP, BMPM, HrBCurMP, HrBMaxMP)
'显示攻击力
Call ShowAttack(BMin, BMax, HrBAttMin, HrBAttMax)
'显示护甲及tag减伤
Call ShowDefence(BDef, HrBDef, LabelBDef)
'计算魔抗及回避
Call ShowResistance(HrBRes, BRes)
Call ShowEvasion(HrBEva, BEva)
'显示攻击速度及tag攻击间隔(百分数，小数点后一位)
Call ShowAttackSpeed(Vb, HrBV, BaInt, LabelBV)
'计算并显示物理dps
Call RealDPS(ContainerB, HrBDPS)
'显示战斗状态
Call BattleState(BState, HrBSt)

'重生
Call Revive(ItemA, HrAItem, AHP, AHPM, AMP, AMPM, HeroAtri(A, 0))
Call Revive(ItemB, HrBItem, BHP, BHPM, BMP, BMPM, HeroAtri(B, 0))
result AHP, BHP
End If

'P1 vs P2模式
Else: P1P2M.Value = True
If CmdA(0).Value = True And (CmdB(0).Value = True Or CmdB(1).Value = True Or CmdB(2).Value = True Or CmdB(3).Value = True Or CmdB(4).Value = True) Then
Counter = Counter + 1
Recovery AHP, AHPM, ARHP, AMP, AMPM, ARMP
Recovery BHP, BHPM, BRHP, BMP, BMPM, BRMP
'眩晕判定模块
Call StunJudge(Astate, AStun, AStunTime)
Call StunJudge(BState, Bstun, BStunTime)

'攻击计数器开始(如果手动改状态)
Call NACounter(Astate, Aattack)

'Miss判定
Call Miss(BEva, HeroAtri(A, 0))
If EvaCounter = 1 Then
'原始攻击计算和暴击判定
Call PureDMG(AbAt, Va, Aattack, AMin, AMax, ADef, ADamage, ACHChance, ACHTimes, HeroAtri(A, 0))
'重击判定
Call HeavyCalcu(AbAt, Va, Aattack, AStunChance, AStun, BState, HeroAtri(A, 0), HeroAtri(B, 0))
'毒素判定
Call PoisonCalcu(AbAt, Va, Aattack, APoisonDamage, APoisonSt, APoison, BRHP, HeroAtri(B, 0))
'抵挡判定
Call ShieldCalcu(AbAt, Va, Aattack, BShChance, BShDamage, HeroAtri(B, 0), ADamage)
'减血及显示战斗记录
Call HPCalcu(AbAt, Va, Aattack, ContainerA, ADamage, BHP, HeroAtri(A, 0), HeroAtri(B, 0))
'吸血判定
Call AbsorbCalcu(AbAt, Va, Aattack, ADamage, Aabsorb, AHP, HeroAtri(A, 0), HeroAtri(B, 0))
End If

'一轮攻击结束
Call BattleEnd(Aattack, AaInt, CmdA, Astate)


'减血及显示战斗记录
Call HPCalcu(AbAt, Va, Aattack, ContainerA, ADamage, BHP, HeroAtri(A, 0), HeroAtri(B, 0))
'吸血判定
Call AbsorbCalcu(AbAt, Va, Aattack, ADamage, Aabsorb, AHP, HeroAtri(A, 0), HeroAtri(B, 0))
'一轮攻击结束
Call BattleEnd(Aattack, AaInt, CmdA, Astate)
'模式提示语(手动专用)
Call ModeTips("P1", CmdA)

'显示血量
Call ShowHP(AHP, AHPM, HrACurHP, HrAMaxHP)
'显示蓝量
Call ShowMP(AMP, AMPM, HrACurMP, HrAMaxMP)
'显示攻击力
Call ShowAttack(AMin, AMax, HrAAttMin, HrAAttMax)
'显示护甲及tag减伤
Call ShowDefence(ADef, HrADef, LabelADef)
'计算魔抗及回避
Call ShowResistance(HrARes, ARes)
Call ShowEvasion(HrAEva, AEva)
'显示攻击速度及tag攻击间隔(百分数，小数点后一位)
Call ShowAttackSpeed(Va, HrAV, AaInt, LabelAV)
'计算并显示物理dps
Call RealDPS(ContainerA, HrADPS)
'显示战斗状态
Call BattleState(Astate, HrASt)

End If

If CmdB(0).Value = True And (CmdA(0).Value = True Or CmdA(1).Value = True Or CmdA(2).Value = True Or CmdA(3).Value = True Or CmdA(4).Value = True) Then

'攻击计数器开始(如果手动改状态)
Call NACounter(BState, BAttack)

'Miss判定
Call Miss(BEva, HeroAtri(A, 0))
If EvaCounter = 1 Then
'原始攻击计算和暴击判定
Call PureDMG(BbAt, Vb, BAttack, BMin, BMax, BDef, BDamage, BCHChance, BCHTimes, HeroAtri(B, 0))
'重击判定
Call HeavyCalcu(BbAt, Vb, BAttack, BStunChance, Bstun, Astate, HeroAtri(B, 0), HeroAtri(A, 0))
'毒素判定
Call PoisonCalcu(BbAt, Vb, BAttack, BPoisonDamage, BPoisonSt, BPoison, ARHP, HeroAtri(A, 0))
'抵挡判定
Call ShieldCalcu(BbAt, Vb, BAttack, AShChance, AShDamage, HeroAtri(A, 0), BDamage)
'减血及显示战斗记录
Call HPCalcu(BbAt, Vb, BAttack, ContainerB, BDamage, AHP, HeroAtri(B, 0), HeroAtri(A, 0))
'吸血判定
Call AbsorbCalcu(BbAt, Vb, BAttack, BDamage, Babsorb, BHP, HeroAtri(B, 0), HeroAtri(A, 0))
End If

'一轮攻击结束
Call BattleEnd(BAttack, BaInt, CmdB, BState)


'减血及显示战斗记录
Call HPCalcu(BbAt, Vb, BAttack, ContainerB, BDamage, AHP, HeroAtri(B, 0), HeroAtri(A, 0))
'吸血判定
Call AbsorbCalcu(BbAt, Vb, BAttack, BDamage, Babsorb, BHP, HeroAtri(B, 0), HeroAtri(A, 0))
'一轮攻击结束
Call BattleEnd(BAttack, BaInt, CmdB, BState)
'模式提示语(手动专用)
Call ModeTips("P2", CmdB)



'显示血量
Call ShowHP(BHP, BHPM, HrBCurHP, HrBMaxHP)
'显示蓝量
Call ShowMP(BMP, BMPM, HrBCurMP, HrBMaxMP)
'显示攻击力
Call ShowAttack(BMin, BMax, HrBAttMin, HrBAttMax)
'显示护甲及tag减伤
Call ShowDefence(BDef, HrBDef, LabelBDef)
'计算魔抗及回避
Call ShowResistance(HrBRes, BRes)
Call ShowEvasion(HrBEva, BEva)
'显示攻击速度及tag攻击间隔(百分数，小数点后一位)
Call ShowAttackSpeed(Vb, HrBV, BaInt, LabelBV)
'计算并显示物理dps
Call RealDPS(ContainerB, HrBDPS)
'显示战斗状态
Call BattleState(BState, HrBSt)

'重生
Call Revive(ItemA, HrAItem, AHP, AHPM, AMP, AMPM, HeroAtri(A, 0))
Call Revive(ItemB, HrBItem, BHP, BHPM, BMP, BMPM, HeroAtri(B, 0))
result AHP, BHP
End If

End If
End Sub

'控件初始化子过程

'英雄初始化
Private Sub HeroReset(HrTp, HrNm, Lv, HrLv)
HrTp.Text = ""
HrNm.Text = ""

HrLv.Enabled = False
Lv = 1
HrLv.Text = "1"
End Sub

'道具初始化
Private Sub ItemReset(Shop, HrItem)
Dim Index%
Shop.Text = ""
For Index = 1 To 6
HrItem(Index).Enabled = False
HrItem(Index).Text = ""
Next
End Sub

'技能初始化
Private Sub SkillReset(HrSpNm, bonus, Hrbonus, HrSpLv)
Dim Index

HrSpNm(Index + 1).Caption = "技能A"
HrSpNm(Index + 2).Caption = "技能B"
HrSpNm(Index + 3).Caption = "技能C"
HrSpNm(Index + 4).Caption = "技能D"

Hrbonus.Enabled = False
bonus = 0
Hrbonus.Text = ""

For Index = 1 To 4
HrSpLv(Index).Enabled = False
HrSpLv(Index).Text = 0
Next
End Sub

'状态初始化
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


