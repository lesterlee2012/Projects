VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "智能电梯模拟控制平台"
   ClientHeight    =   10830
   ClientLeft      =   2745
   ClientTop       =   1170
   ClientWidth     =   8235
   LinkTopic       =   "Form1"
   ScaleHeight     =   10830
   ScaleWidth      =   8235
   Begin VB.Frame Frame3 
      Height          =   2535
      Left            =   360
      TabIndex        =   94
      Top             =   8160
      Width           =   7335
      Begin VB.Timer Timer 
         Left            =   3600
         Top             =   720
      End
      Begin VB.ListBox SimSp 
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
         ItemData        =   "Form1.frx":0000
         Left            =   240
         List            =   "Form1.frx":0010
         TabIndex        =   97
         Top             =   840
         Width           =   1095
      End
      Begin VB.CommandButton Start 
         Caption         =   "开始模拟"
         Height          =   855
         Left            =   1560
         TabIndex        =   96
         Top             =   480
         Width           =   1455
      End
      Begin VB.CommandButton Reset 
         Caption         =   "重置"
         Height          =   495
         Left            =   1560
         TabIndex        =   95
         Top             =   1440
         Width           =   855
      End
      Begin VB.Label Label23 
         Alignment       =   2  'Center
         Caption         =   "系统能耗评价"
         Height          =   255
         Left            =   4920
         TabIndex        =   109
         Top             =   1560
         Width           =   1095
      End
      Begin VB.Label Label24 
         Alignment       =   2  'Center
         Caption         =   "综合评价"
         Height          =   375
         Left            =   4920
         TabIndex        =   108
         Top             =   1920
         Width           =   1095
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Caption         =   "全局时计"
         Height          =   255
         Left            =   120
         TabIndex        =   107
         Top             =   2040
         Width           =   855
      End
      Begin VB.Label Time 
         Alignment       =   2  'Center
         Caption         =   "00:00:00"
         Height          =   255
         Left            =   1080
         TabIndex        =   106
         Top             =   2040
         Width           =   735
      End
      Begin VB.Label Label19 
         Alignment       =   2  'Center
         Caption         =   "模拟速度"
         Height          =   375
         Left            =   360
         TabIndex        =   105
         Top             =   360
         Width           =   855
      End
      Begin VB.Label Label20 
         Alignment       =   2  'Center
         Caption         =   "评分输出"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   12
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   5400
         TabIndex        =   104
         Top             =   360
         Width           =   1095
      End
      Begin VB.Label Label21 
         Alignment       =   2  'Center
         Caption         =   "候梯时间评价"
         Height          =   255
         Left            =   4920
         TabIndex        =   103
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label Label22 
         Alignment       =   2  'Center
         Caption         =   "乘梯时间评价"
         Height          =   375
         Left            =   4920
         TabIndex        =   102
         Top             =   1200
         Width           =   1095
      End
      Begin VB.Label LbRkf 
         Alignment       =   2  'Center
         Caption         =   "0"
         Height          =   255
         Left            =   6480
         TabIndex        =   101
         Top             =   840
         Width           =   615
      End
      Begin VB.Label LbRkg 
         Alignment       =   2  'Center
         Caption         =   "0"
         Height          =   255
         Left            =   6480
         TabIndex        =   100
         Top             =   1200
         Width           =   615
      End
      Begin VB.Label LbRkh 
         Alignment       =   2  'Center
         Caption         =   "0"
         Height          =   255
         Left            =   6480
         TabIndex        =   99
         Top             =   1560
         Width           =   615
      End
      Begin VB.Label LbRkOvr 
         Alignment       =   2  'Center
         Caption         =   "0"
         Height          =   255
         Left            =   6480
         TabIndex        =   98
         Top             =   1920
         Width           =   615
      End
   End
   Begin VB.Frame Frame2 
      Height          =   5895
      Left            =   120
      TabIndex        =   12
      Top             =   2280
      Width           =   7935
      Begin VB.ListBox AL 
         Height          =   1320
         Index           =   1
         ItemData        =   "Form1.frx":0025
         Left            =   360
         List            =   "Form1.frx":002C
         TabIndex        =   36
         Top             =   1680
         Width           =   615
      End
      Begin VB.ListBox WL 
         Height          =   1320
         Index           =   1
         ItemData        =   "Form1.frx":0034
         Left            =   1320
         List            =   "Form1.frx":003B
         TabIndex        =   35
         Top             =   1680
         Width           =   615
      End
      Begin VB.ListBox AL 
         Height          =   1320
         Index           =   2
         ItemData        =   "Form1.frx":0043
         Left            =   2280
         List            =   "Form1.frx":004A
         TabIndex        =   34
         Top             =   1680
         Width           =   615
      End
      Begin VB.ListBox WL 
         Height          =   1320
         Index           =   2
         ItemData        =   "Form1.frx":0052
         Left            =   3240
         List            =   "Form1.frx":0059
         TabIndex        =   33
         Top             =   1680
         Width           =   615
      End
      Begin VB.ListBox AL 
         Height          =   1320
         Index           =   3
         ItemData        =   "Form1.frx":0061
         Left            =   4200
         List            =   "Form1.frx":0068
         TabIndex        =   32
         Top             =   1680
         Width           =   615
      End
      Begin VB.ListBox WL 
         Height          =   1320
         Index           =   3
         ItemData        =   "Form1.frx":0070
         Left            =   5160
         List            =   "Form1.frx":0077
         TabIndex        =   31
         Top             =   1680
         Width           =   615
      End
      Begin VB.ListBox AL 
         Height          =   1320
         Index           =   4
         ItemData        =   "Form1.frx":007F
         Left            =   6120
         List            =   "Form1.frx":0086
         TabIndex        =   30
         Top             =   1680
         Width           =   615
      End
      Begin VB.ListBox WL 
         Height          =   1320
         Index           =   4
         ItemData        =   "Form1.frx":008E
         Left            =   7080
         List            =   "Form1.frx":0095
         TabIndex        =   29
         Top             =   1680
         Width           =   615
      End
      Begin VB.ListBox AL 
         Height          =   1320
         Index           =   5
         ItemData        =   "Form1.frx":009D
         Left            =   360
         List            =   "Form1.frx":00A4
         TabIndex        =   28
         Top             =   4320
         Width           =   615
      End
      Begin VB.ListBox WL 
         Height          =   1320
         Index           =   5
         ItemData        =   "Form1.frx":00AC
         Left            =   1320
         List            =   "Form1.frx":00B3
         TabIndex        =   27
         Top             =   4320
         Width           =   615
      End
      Begin VB.ListBox AL 
         Height          =   1320
         Index           =   6
         ItemData        =   "Form1.frx":00BB
         Left            =   2280
         List            =   "Form1.frx":00C2
         TabIndex        =   26
         Top             =   4320
         Width           =   615
      End
      Begin VB.ListBox WL 
         Height          =   1320
         Index           =   6
         ItemData        =   "Form1.frx":00CA
         Left            =   3240
         List            =   "Form1.frx":00D1
         TabIndex        =   25
         Top             =   4320
         Width           =   615
      End
      Begin VB.ListBox AL 
         Height          =   1320
         Index           =   7
         ItemData        =   "Form1.frx":00D9
         Left            =   4200
         List            =   "Form1.frx":00E0
         TabIndex        =   24
         Top             =   4320
         Width           =   615
      End
      Begin VB.ListBox WL 
         Height          =   1320
         Index           =   7
         ItemData        =   "Form1.frx":00E8
         Left            =   5160
         List            =   "Form1.frx":00EF
         TabIndex        =   23
         Top             =   4320
         Width           =   615
      End
      Begin VB.ListBox AL 
         Height          =   1320
         Index           =   8
         ItemData        =   "Form1.frx":00F7
         Left            =   6120
         List            =   "Form1.frx":00FE
         TabIndex        =   22
         Top             =   4320
         Width           =   615
      End
      Begin VB.ListBox WL 
         Height          =   1320
         Index           =   8
         ItemData        =   "Form1.frx":0106
         Left            =   7080
         List            =   "Form1.frx":010D
         TabIndex        =   21
         Top             =   4320
         Width           =   615
      End
      Begin VB.ComboBox Pw 
         Height          =   300
         Index           =   1
         ItemData        =   "Form1.frx":0115
         Left            =   960
         List            =   "Form1.frx":011F
         TabIndex        =   20
         Text            =   "关"
         Top             =   600
         Width           =   615
      End
      Begin VB.ComboBox Pw 
         Height          =   300
         Index           =   2
         ItemData        =   "Form1.frx":012B
         Left            =   2880
         List            =   "Form1.frx":0135
         TabIndex        =   19
         Text            =   "关"
         Top             =   600
         Width           =   615
      End
      Begin VB.ComboBox Pw 
         Height          =   300
         Index           =   8
         ItemData        =   "Form1.frx":0141
         Left            =   6720
         List            =   "Form1.frx":014B
         TabIndex        =   18
         Text            =   "关"
         Top             =   3240
         Width           =   615
      End
      Begin VB.ComboBox Pw 
         Height          =   300
         Index           =   7
         ItemData        =   "Form1.frx":0157
         Left            =   4800
         List            =   "Form1.frx":0161
         TabIndex        =   17
         Text            =   "关"
         Top             =   3240
         Width           =   615
      End
      Begin VB.ComboBox Pw 
         Height          =   300
         Index           =   6
         ItemData        =   "Form1.frx":016D
         Left            =   2880
         List            =   "Form1.frx":0177
         TabIndex        =   16
         Text            =   "关"
         Top             =   3240
         Width           =   615
      End
      Begin VB.ComboBox Pw 
         Height          =   300
         Index           =   5
         ItemData        =   "Form1.frx":0183
         Left            =   960
         List            =   "Form1.frx":018D
         TabIndex        =   15
         Text            =   "关"
         Top             =   3240
         Width           =   615
      End
      Begin VB.ComboBox Pw 
         Height          =   300
         Index           =   4
         ItemData        =   "Form1.frx":0199
         Left            =   6720
         List            =   "Form1.frx":01A3
         TabIndex        =   14
         Text            =   "关"
         Top             =   600
         Width           =   615
      End
      Begin VB.ComboBox Pw 
         Height          =   300
         Index           =   3
         ItemData        =   "Form1.frx":01AF
         Left            =   4800
         List            =   "Form1.frx":01B9
         TabIndex        =   13
         Text            =   "关"
         Top             =   600
         Width           =   615
      End
      Begin VB.Label Label11 
         Alignment       =   2  'Center
         Caption         =   "电梯A"
         Height          =   255
         Left            =   240
         TabIndex        =   93
         Top             =   600
         Width           =   615
      End
      Begin VB.Label Label12 
         Alignment       =   2  'Center
         Caption         =   "梯群状态模组"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   12
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2880
         TabIndex        =   92
         Top             =   120
         Width           =   2055
      End
      Begin VB.Label Label13 
         Alignment       =   2  'Center
         Caption         =   "所在楼层"
         Height          =   255
         Left            =   240
         TabIndex        =   91
         Top             =   1080
         Width           =   855
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         Caption         =   "运行状态"
         Height          =   255
         Left            =   240
         TabIndex        =   90
         Top             =   1440
         Width           =   855
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         Caption         =   "目标队列"
         Height          =   975
         Left            =   120
         TabIndex        =   89
         Top             =   1920
         Width           =   255
      End
      Begin VB.Label Label16 
         Alignment       =   2  'Center
         Caption         =   "等待队列"
         Height          =   975
         Left            =   1080
         TabIndex        =   88
         Top             =   1920
         Width           =   255
      End
      Begin VB.Label LbFl 
         Alignment       =   2  'Center
         Caption         =   "1"
         Height          =   255
         Index           =   1
         Left            =   1200
         TabIndex        =   87
         Top             =   1080
         Width           =   855
      End
      Begin VB.Label LbOS 
         Alignment       =   2  'Center
         Caption         =   "待机"
         Height          =   255
         Index           =   1
         Left            =   1200
         TabIndex        =   86
         Top             =   1440
         Width           =   855
      End
      Begin VB.Label LbOS 
         Alignment       =   2  'Center
         Caption         =   "待机"
         Height          =   255
         Index           =   2
         Left            =   3120
         TabIndex        =   85
         Top             =   1440
         Width           =   855
      End
      Begin VB.Label LbFl 
         Alignment       =   2  'Center
         Caption         =   "1"
         Height          =   255
         Index           =   2
         Left            =   3120
         TabIndex        =   84
         Top             =   1080
         Width           =   855
      End
      Begin VB.Label Label31 
         Alignment       =   2  'Center
         Caption         =   "等待队列"
         Height          =   975
         Left            =   3000
         TabIndex        =   83
         Top             =   1920
         Width           =   255
      End
      Begin VB.Label Label32 
         Alignment       =   2  'Center
         Caption         =   "目标队列"
         Height          =   975
         Left            =   2040
         TabIndex        =   82
         Top             =   1920
         Width           =   255
      End
      Begin VB.Label Label33 
         Alignment       =   2  'Center
         Caption         =   "运行状态"
         Height          =   255
         Left            =   2160
         TabIndex        =   81
         Top             =   1440
         Width           =   855
      End
      Begin VB.Label Label34 
         Alignment       =   2  'Center
         Caption         =   "所在楼层"
         Height          =   255
         Left            =   2160
         TabIndex        =   80
         Top             =   1080
         Width           =   855
      End
      Begin VB.Label Label36 
         Alignment       =   2  'Center
         Caption         =   "电梯B"
         Height          =   255
         Left            =   2160
         TabIndex        =   79
         Top             =   600
         Width           =   615
      End
      Begin VB.Label LbOS 
         Alignment       =   2  'Center
         Caption         =   "待机"
         Height          =   255
         Index           =   3
         Left            =   5040
         TabIndex        =   78
         Top             =   1440
         Width           =   855
      End
      Begin VB.Label LbFl 
         Alignment       =   2  'Center
         Caption         =   "1"
         Height          =   255
         Index           =   3
         Left            =   5040
         TabIndex        =   77
         Top             =   1080
         Width           =   855
      End
      Begin VB.Label Label39 
         Alignment       =   2  'Center
         Caption         =   "等待队列"
         Height          =   975
         Left            =   4920
         TabIndex        =   76
         Top             =   1920
         Width           =   255
      End
      Begin VB.Label Label40 
         Alignment       =   2  'Center
         Caption         =   "目标队列"
         Height          =   975
         Left            =   3960
         TabIndex        =   75
         Top             =   1920
         Width           =   255
      End
      Begin VB.Label Label41 
         Alignment       =   2  'Center
         Caption         =   "运行状态"
         Height          =   255
         Left            =   4080
         TabIndex        =   74
         Top             =   1440
         Width           =   855
      End
      Begin VB.Label Label42 
         Alignment       =   2  'Center
         Caption         =   "所在楼层"
         Height          =   255
         Left            =   4080
         TabIndex        =   73
         Top             =   1080
         Width           =   855
      End
      Begin VB.Label Label44 
         Alignment       =   2  'Center
         Caption         =   "电梯C"
         Height          =   255
         Left            =   4080
         TabIndex        =   72
         Top             =   600
         Width           =   615
      End
      Begin VB.Label LbOS 
         Alignment       =   2  'Center
         Caption         =   "待机"
         Height          =   255
         Index           =   4
         Left            =   6960
         TabIndex        =   71
         Top             =   1440
         Width           =   855
      End
      Begin VB.Label LbFl 
         Alignment       =   2  'Center
         Caption         =   "1"
         Height          =   255
         Index           =   4
         Left            =   6960
         TabIndex        =   70
         Top             =   1080
         Width           =   855
      End
      Begin VB.Label Label47 
         Alignment       =   2  'Center
         Caption         =   "等待队列"
         Height          =   975
         Left            =   6840
         TabIndex        =   69
         Top             =   1920
         Width           =   255
      End
      Begin VB.Label Label48 
         Alignment       =   2  'Center
         Caption         =   "目标队列"
         Height          =   975
         Left            =   5880
         TabIndex        =   68
         Top             =   1920
         Width           =   255
      End
      Begin VB.Label Label49 
         Alignment       =   2  'Center
         Caption         =   "运行状态"
         Height          =   255
         Left            =   6000
         TabIndex        =   67
         Top             =   1440
         Width           =   855
      End
      Begin VB.Label Label50 
         Alignment       =   2  'Center
         Caption         =   "所在楼层"
         Height          =   255
         Left            =   6000
         TabIndex        =   66
         Top             =   1080
         Width           =   855
      End
      Begin VB.Label Label52 
         Alignment       =   2  'Center
         Caption         =   "电梯D"
         Height          =   255
         Left            =   6000
         TabIndex        =   65
         Top             =   600
         Width           =   615
      End
      Begin VB.Label LbOS 
         Alignment       =   2  'Center
         Caption         =   "待机"
         Height          =   255
         Index           =   5
         Left            =   1200
         TabIndex        =   64
         Top             =   4080
         Width           =   855
      End
      Begin VB.Label LbFl 
         Alignment       =   2  'Center
         Caption         =   "1"
         Height          =   255
         Index           =   5
         Left            =   1200
         TabIndex        =   63
         Top             =   3720
         Width           =   855
      End
      Begin VB.Label Label55 
         Alignment       =   2  'Center
         Caption         =   "等待队列"
         Height          =   975
         Left            =   1080
         TabIndex        =   62
         Top             =   4560
         Width           =   255
      End
      Begin VB.Label Label56 
         Alignment       =   2  'Center
         Caption         =   "目标队列"
         Height          =   975
         Left            =   120
         TabIndex        =   61
         Top             =   4560
         Width           =   255
      End
      Begin VB.Label Label57 
         Alignment       =   2  'Center
         Caption         =   "运行状态"
         Height          =   255
         Left            =   240
         TabIndex        =   60
         Top             =   4080
         Width           =   855
      End
      Begin VB.Label Label58 
         Alignment       =   2  'Center
         Caption         =   "所在楼层"
         Height          =   255
         Left            =   240
         TabIndex        =   59
         Top             =   3720
         Width           =   855
      End
      Begin VB.Label Label60 
         Alignment       =   2  'Center
         Caption         =   "电梯E"
         Height          =   255
         Left            =   240
         TabIndex        =   58
         Top             =   3240
         Width           =   615
      End
      Begin VB.Label LbOS 
         Alignment       =   2  'Center
         Caption         =   "待机"
         Height          =   255
         Index           =   6
         Left            =   3120
         TabIndex        =   57
         Top             =   4080
         Width           =   855
      End
      Begin VB.Label LbFl 
         Alignment       =   2  'Center
         Caption         =   "1"
         Height          =   255
         Index           =   6
         Left            =   3120
         TabIndex        =   56
         Top             =   3720
         Width           =   855
      End
      Begin VB.Label Label63 
         Alignment       =   2  'Center
         Caption         =   "等待队列"
         Height          =   975
         Left            =   3000
         TabIndex        =   55
         Top             =   4560
         Width           =   255
      End
      Begin VB.Label Label64 
         Alignment       =   2  'Center
         Caption         =   "目标队列"
         Height          =   975
         Left            =   2040
         TabIndex        =   54
         Top             =   4560
         Width           =   255
      End
      Begin VB.Label Label65 
         Alignment       =   2  'Center
         Caption         =   "运行状态"
         Height          =   255
         Left            =   2160
         TabIndex        =   53
         Top             =   4080
         Width           =   855
      End
      Begin VB.Label Label66 
         Alignment       =   2  'Center
         Caption         =   "所在楼层"
         Height          =   255
         Left            =   2160
         TabIndex        =   52
         Top             =   3720
         Width           =   855
      End
      Begin VB.Label Label68 
         Alignment       =   2  'Center
         Caption         =   "电梯F"
         Height          =   255
         Left            =   2160
         TabIndex        =   51
         Top             =   3240
         Width           =   615
      End
      Begin VB.Label LbOS 
         Alignment       =   2  'Center
         Caption         =   "待机"
         Height          =   255
         Index           =   7
         Left            =   5040
         TabIndex        =   50
         Top             =   4080
         Width           =   855
      End
      Begin VB.Label LbFl 
         Alignment       =   2  'Center
         Caption         =   "1"
         Height          =   255
         Index           =   7
         Left            =   5040
         TabIndex        =   49
         Top             =   3720
         Width           =   855
      End
      Begin VB.Label Label71 
         Alignment       =   2  'Center
         Caption         =   "等待队列"
         Height          =   975
         Left            =   4920
         TabIndex        =   48
         Top             =   4560
         Width           =   255
      End
      Begin VB.Label Label72 
         Alignment       =   2  'Center
         Caption         =   "目标队列"
         Height          =   975
         Left            =   3960
         TabIndex        =   47
         Top             =   4560
         Width           =   255
      End
      Begin VB.Label Label73 
         Alignment       =   2  'Center
         Caption         =   "运行状态"
         Height          =   255
         Left            =   4080
         TabIndex        =   46
         Top             =   4080
         Width           =   855
      End
      Begin VB.Label Label74 
         Alignment       =   2  'Center
         Caption         =   "所在楼层"
         Height          =   255
         Left            =   4080
         TabIndex        =   45
         Top             =   3720
         Width           =   855
      End
      Begin VB.Label Label76 
         Alignment       =   2  'Center
         Caption         =   "电梯G"
         Height          =   255
         Left            =   4080
         TabIndex        =   44
         Top             =   3240
         Width           =   615
      End
      Begin VB.Label LbOS 
         Alignment       =   2  'Center
         Caption         =   "待机"
         Height          =   255
         Index           =   8
         Left            =   6960
         TabIndex        =   43
         Top             =   4080
         Width           =   855
      End
      Begin VB.Label LbFl 
         Alignment       =   2  'Center
         Caption         =   "1"
         Height          =   255
         Index           =   8
         Left            =   6960
         TabIndex        =   42
         Top             =   3720
         Width           =   855
      End
      Begin VB.Label Label79 
         Alignment       =   2  'Center
         Caption         =   "等待队列"
         Height          =   975
         Left            =   6840
         TabIndex        =   41
         Top             =   4560
         Width           =   255
      End
      Begin VB.Label Label80 
         Alignment       =   2  'Center
         Caption         =   "目标队列"
         Height          =   975
         Left            =   5880
         TabIndex        =   40
         Top             =   4560
         Width           =   255
      End
      Begin VB.Label Label81 
         Alignment       =   2  'Center
         Caption         =   "运行状态"
         Height          =   255
         Left            =   6000
         TabIndex        =   39
         Top             =   4080
         Width           =   855
      End
      Begin VB.Label Label82 
         Alignment       =   2  'Center
         Caption         =   "所在楼层"
         Height          =   255
         Left            =   6000
         TabIndex        =   38
         Top             =   3720
         Width           =   855
      End
      Begin VB.Label Label84 
         Alignment       =   2  'Center
         Caption         =   "电梯H"
         Height          =   255
         Left            =   6000
         TabIndex        =   37
         Top             =   3240
         Width           =   615
      End
   End
   Begin VB.Frame Frame1 
      Height          =   2415
      Left            =   240
      TabIndex        =   0
      Top             =   -120
      Width           =   7575
      Begin VB.TextBox TxFlHt 
         Alignment       =   2  'Center
         Height          =   375
         Left            =   1800
         TabIndex        =   114
         Top             =   1320
         Width           =   1095
      End
      Begin VB.TextBox Text7 
         Alignment       =   2  'Center
         Height          =   390
         Left            =   5880
         TabIndex        =   112
         Top             =   1800
         Width           =   1095
      End
      Begin VB.TextBox TxFlNm 
         Alignment       =   2  'Center
         Height          =   375
         Left            =   1800
         TabIndex        =   110
         Top             =   960
         Width           =   1095
      End
      Begin VB.ComboBox Combo1 
         Height          =   300
         ItemData        =   "Form1.frx":01C5
         Left            =   1800
         List            =   "Form1.frx":01D5
         TabIndex        =   5
         Top             =   600
         Width           =   1455
      End
      Begin VB.TextBox TxPFlow 
         Alignment       =   2  'Center
         Height          =   375
         Left            =   1800
         TabIndex        =   4
         Top             =   1800
         Width           =   1095
      End
      Begin VB.TextBox TxV 
         Alignment       =   2  'Center
         Height          =   375
         Left            =   5880
         TabIndex        =   3
         Top             =   600
         Width           =   1095
      End
      Begin VB.TextBox Text4 
         Alignment       =   2  'Center
         Height          =   375
         Left            =   5880
         TabIndex        =   2
         Top             =   960
         Width           =   1095
      End
      Begin VB.TextBox TxWt 
         Alignment       =   2  'Center
         Height          =   375
         Left            =   5880
         TabIndex        =   1
         Top             =   1440
         Width           =   1095
      End
      Begin VB.Label Label43 
         Alignment       =   2  'Center
         Caption         =   "电梯物理参数设置模组"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   12
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   4320
         TabIndex        =   116
         Top             =   240
         Width           =   2775
      End
      Begin VB.Label Label35 
         Alignment       =   2  'Center
         Caption         =   "层高/米"
         Height          =   255
         Left            =   120
         TabIndex        =   115
         Top             =   1440
         Width           =   1695
      End
      Begin VB.Label Label7 
         Alignment       =   2  'Center
         Caption         =   "额定载员/人"
         Height          =   255
         Left            =   4560
         TabIndex        =   113
         Top             =   1920
         Width           =   1215
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         Caption         =   "楼层数量"
         Height          =   255
         Left            =   480
         TabIndex        =   111
         Top             =   1080
         Width           =   975
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         Caption         =   "建筑物类型"
         Height          =   255
         Left            =   480
         TabIndex        =   11
         Top             =   600
         Width           =   975
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         Caption         =   "预估人流量/5min"
         Height          =   255
         Left            =   240
         TabIndex        =   10
         Top             =   1920
         Width           =   1455
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         Caption         =   "建筑物属性设置模组"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   12
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   360
         TabIndex        =   9
         Top             =   240
         Width           =   2775
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         Caption         =   "层间停留时间/s"
         Height          =   255
         Left            =   4440
         TabIndex        =   8
         Top             =   1560
         Width           =   1335
      End
      Begin VB.Label Label9 
         Alignment       =   2  'Center
         Caption         =   "加速度m/s^2"
         Height          =   255
         Left            =   4440
         TabIndex        =   7
         Top             =   1080
         Width           =   1215
      End
      Begin VB.Label Label10 
         Alignment       =   2  'Center
         Caption         =   "最高速度m/s"
         Height          =   255
         Left            =   4560
         TabIndex        =   6
         Top             =   720
         Width           =   1095
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit: '全局变量声明
Option Base 1 '下标默认为1
Dim FlD(), FlU() As Integer '楼层上下行计数器
Dim fl(8) As Single '电梯的实际楼层（单精度）
Dim lv(8) As Single, v!, wt! '电梯的物理状态变量
Dim FlNm%, FlHt! '建筑的层数，层高
Dim AIC% '智能处理次数计数器
Dim pause(8) As Integer '电梯的暂停计数器
Dim Counter! '全局时计
Dim verifyAL%, verifyWL% '验证队列

Private Sub Form_Load() '窗口打开后初始化相关变量
Dim i
For i = 1 To 8
fl(i) = 1
Next
wt = Val(TxWt.Text)
v = Val(TxV.Text)
FlNm = Val(TxFlNm.Text)
FlHt = Val(TxFlHt.Text)
End Sub

Private Sub txwt_change()
wt = Val(TxWt.Text)
End Sub
Private Sub TxV_change()
v = Val(TxV.Text)
End Sub

Private Sub txFlNm_change()
FlNm = Val(TxFlNm.Text)
ReDim FlD(FlNm)
ReDim FlU(FlNm)
End Sub

Private Sub txFlHt_change()
FlHt = Val(TxFlHt.Text)
End Sub

Private Function T(fl, fc, i) '函数T算法（实际楼层，呼叫楼层，梯号）
Dim n, Ifl, f0, j, wtcounter
If fl = fc Then
T = wt
Exit Function
End If
If fl < fc Then
  If Fix(fl) = fl Then
  Ifl = fl
  Else
  Ifl = Fix(fl) + 1
  End If
f0 = Ifl
  Do While f0 < fc
  j = 1
    Do While AL(i).List(j) <> ""
      If AL(i).List(j) = f0 Then
      wtcounter = wtcounter + 1
      End If
    j = j + 1
    Loop
  j = 1
   Do While WL(i).List(j) <> ""
     If WL(i).List(j) = f0 Then
     wtcounter = wtcounter + 1
     End If
    j = j + 1
    Loop
  f0 = f0 + 1
  Loop
Else
Ifl = Fix(fl)
f0 = fc
  Do While f0 < Ifl
  j = 1
    Do While AL(i).List(j) <> ""
      If AL(i).List(j) = f0 Then
      wtcounter = wtcounter + 1
      End If
    j = j + 1
    Loop
  j = 1
    Do While WL(i).List(j) <> ""
     If WL(i).List(j) = -f0 Then
     wtcounter = wtcounter + 1
     End If
    j = j + 1
    Loop
  f0 = f0 + 1
  Loop
End If          '这里没有必要考虑底层和顶层的情况，因为呼叫楼层的数值不涉及方向
T = Abs(fc - fl) * FlHt / v + wtcounter * wt
End Function

Private Function fmax(i) '函数fmax算法（梯号）
Dim max, j: j = 1
If lv(i) > 0 Then
  Do While AL(i).List(j) <> ""
    If AL(i).List(j) > max Then
    max = AL(i).List(j)
    End If
    j = j + 1
  Loop
  j = 1
  Do While WL(i).List(j) <> ""
    If WL(i).List(j) > max Then
    max = WL(i).List(j)
    End If
    If Abs(WL(i).List(j)) = FlNm Then
    fmax = FlNm
    Exit Function
    End If
    j = j + 1
  Loop
fmax = max
Exit Function
Else
  Do While AL(i).List(j) <> ""
    If AL(i).List(j) < max Or max = 0 Then
    max = AL(i).List(j)
    End If
    j = j + 1
  Loop
j = 1
  Do While WL(i).List(j) <> ""
    If WL(i).List(j) = 1 Then
    fmax = 1
    Exit Function
    End If
    If (Abs(WL(i).List(j)) < max And WL(i).List(j) < 0) Or max = 0 Then
    max = Abs(WL(i).List(j))
    End If
    j = j + 1
  Loop
fmax = max
Exit Function
End If              '注意上升考虑顶层，下降考虑底层，fmin函数相反同理
End Function

Private Function fmin(i) '函数fmin算法（梯号）
Dim min, j: j = 1
min = max(i)
If lv(i) < 0 Then
  Do While WL(i).List(j) <> ""
    If Abs(WL(i).List(j)) = FlNm Then
    fmin = FlNm
    Exit Function
    End If
    If WL(i).List(j) > min Then
    min = WL(i).List(j)
    End If
    j = j + 1
  Loop
fmin = min
Exit Function
Else
  Do While WL(i).List(j) <> ""
    If WL(i).List(j) = 1 Then
    fmax = 1
    Exit Function
    End If
    If Abs(WL(i).List(j)) < min And WL(i).List(j) < 0 Then
    min = Abs(WL(i).List(j))
    End If
    j = j + 1
  Loop
fmin = min
Exit Function
End If
End Function


Private Function EWT(fl, fc, i, fcd) '函数EWT算法（实际楼层，呼叫楼层，梯号,呼梯方向）
If LbOS(i).Caption = "待机" Or (lv(i) * fcd > 0 And lv(i) * (fc - fl) > 0) Or (fc = FlNm And lv(i) > 0) Or (fc = 1 And lv(i) < 0) Then '这里要注意顶层和底层的特殊同向情况
EWT = T(fc, fl, i)
Exit Function
  ElseIf lv(i) * fcd > 0 And lv(i) * (fc - fl) < 0 Then
  EWT = T(fl, fmax(i), i) + T(fmax(i), fmin(i), i) + T(fmin(i), fc, i)
  Exit Function
    Else
    EWT = T(fl, fmax(i), i) + T(fmax(i), fc, i)
    Exit Function
End If
End Function

Private Function f(EWT) '函数f算法（EWT）
Dim a, b
a = FlHt / v + wt: b = FlHt * FlNm / v + wt
If EWT <= b Then
f = (EWT - b) / (a - b)
Exit Function
Else
f = 0
Exit Function
End If
End Function

Private Function g(i) '函数g算法（i）
Dim j, k, m, FS(), GS()
j = 1
Do While AL(i).List(j) <> ""
FS(j) = AL(i).List(j)
j = j + 1
Loop
If j - 1 = 0 Or j - 1 = 1 Then
g = 1
Exit Function
End If

If lv(i) > 0 Then
  For k = 1 To (j - 2)
    If FS(k) > FS(k + 1) Then
    m = FS(k): FS(k) = FS(k + 1): FS(k + 1) = m
    End If
    If j - 2 = 1 Then
    Exit For
    End If
  Next
Else
  For k = 1 To (j - 2)
    If FS(k) < FS(k + 1) Then
    m = FS(k): FS(k) = FS(k + 1): FS(k + 1) = m
    End If
    If j - 2 = 1 Then
    Exit For
    End If
  Next
End If
For k = 1 To (j - 1)
  If k = 1 Then
  GS(k) = 1
    ElseIf k - 1 > Abs(fl(i) - FS(k)) - 1 Then
    GS(k) = 0
    Else
    GS(k) = (1 - k) / (Abs(fl(i) - FS(k)) - 1) + 1
  End If
Next
Dim sum
For k = 1 To j - 1
sum = sum + GS(k)
Next
g = sum / (j - 1)
End Function

Private Function h(fl, fc, i) '函数h算法（实际楼层，呼叫楼层，梯号）
Dim max, j: j = 1
If lv(i) > 0 Then
  Do While AL(i).List(j) <> ""
    If AL(i).List(j) > max Then
    max = AL(i).List(j)
    End If
    j = j + 1
  Loop
Else
  Do While AL(i).List(j) <> ""
    If AL(i).List(j) < max Or max = 0 Then
    max = AL(i).List(j)
    End If
    j = j + 1
  Loop
End If
If (fl - fc) * (fc - max) >= 0 Then
h = 1
Exit Function
Else
  If Abs(max - fc) > FlNm - 1 Then
  h = 0
  Exit Function
  Else
  h = Abs(max - fc) / (1 - FlNm) + 1
  Exit Function
  End If
End If
End Function

Private Sub Start_Click()
If Start.Caption = "开始模拟" Then
Start.Caption = "暂停模拟"
Timer.Interval = Val(SimSp.Text) '设置时钟步长
  Else
  Start.Caption = "开始模拟"
  Timer.Interval = 0
End If
End Sub

Private Sub Timer_Timer() '模拟过程
Dim PFlow, FlNm, PRd, Flc, FlDRd '单位时间人数，楼层数，人数随机数，呼叫楼层随机数，方向随机数
PFlow = Fix(Val(TxPFlow.Text) / 30)
FlNm = Val(TxFlNm.Text)
Randomize
PRd = Int(Rnd * 100) + 1
If PRd <= PFlow Then
Randomize
Flc = Int(Rnd * FlNm) + 1
  If Flc = 1 Then
  FlU(Flc) = FlU(Flc) + 1
  FlDRd = 1
    ElseIf Flc = FlNm Then
    FlD(Flc) = FlD(Flc) + 1
    FlDRd = -1
      Else
      Dim random
      Randomize
      random = Int(Rnd * 2) + 1
        If random = 1 Then
        FlDRd = -1
        FlD(Flc) = FlD(Flc) + 1
          Else
          FlDRd = 1
          FlU(Flc) = FlU(Flc) + 1
        End If
  End If  '信号的产生过程（注意分别考虑一层和顶层的情况）

  If (FlD(Flc) = 1 And FlDRd = -1) Or (FlU(Flc) = 1 And FlDRd = 1) Then
  Dim i, Rkf!(8), Rkg!(8), Rkh!(8), RkOvr0!, RkOvr!, j: j = 1
  For i = 1 To 8
    If Pw(i).Text = "开" Then
    Rkf(i) = f(EWT(fl(i), Flc, i, FlDRd))
    Rkg(i) = g(i)
    Rkh(i) = h(fl(i), Flc, i)
    RkOvr0 = 0.4 * Rkf(i) + 0.4 * Rkg(i) + 0.2 * Rkh(i) '这里暂时处理为自定义部分
      If RkOvr < RkOvr0 Then
      RkOvr = RkOvr0
      j = i
      End If
    End If
  Next
  Dim p, result: p = 1
  Do While WL(j).List(p) <> ""
    If WL(j).List(p) = Flc Then
    result = 1
    End If
    p = p + 1
  Loop
  If result = 0 Then
  WL(j).AddItem Flc * FlDRd
  AIC = AIC + 1
  End If  '以上为智能处理过程
  
  If AIC = 1 Then
  LbRkf.Caption = Int(Rkf(j) * 100)
  LbRkg.Caption = Int(Rkg(j) * 100)
  LbRkh.Caption = Int(Rkh(j) * 100)
  LbRkOvr.Caption = Int(RkOvr * 100)
  Else
  LbRkf.Caption = Int((Rkf(j) * 100 + Val(LbRkf.Caption) * (AIC - 1)) / AIC)
  LbRkg.Caption = Int((Rkg(j) * 100 + Val(LbRkg.Caption) * (AIC - 1)) / AIC)
  LbRkh.Caption = Int((Rkh(j) * 100 + Val(LbRkh.Caption) * (AIC - 1)) / AIC)
  LbRkOvr.Caption = Int((RkOvr * 100 + Val(LbRkOvr.Caption) * (AIC - 1)) / AIC)
  End If  '即时显示评价

  End If
End If

For i = 1 To 8 '电梯系统的运行
  If Fix(fl(i)) = fl(i) Then 'FL是否整数
    If LbOS(i) = "暂停" Then '是否是暂停状态
    Call pausecon(i)
    Else
    Call ALverify(i)
      If verifyAL = 1 Then 'AL是否存在当前楼层
        If AL(i).List(1) = "" Then 'AL是否为空队列
          If WL(i).List(1) = "" Then 'WL是否为空队列
            If verifyWL = 1 Then
              If fl(i) = 1 Then '当所在楼层为顶层或者底层时，做一些特殊处理
              lv(i) = v
              ElseIf fl(i) = FlNm Then
              lv(i) = -v
              End If
            LbOS(i) = "暂停"
            pause(i) = Counter
            Else
            lv(i) = 0
            LbOS(i) = "待机"
            End If
          Else
            If lv(i) > 0 Then '星号1部分
              Do While WL(i).List(j) <> ""
              If Abs(WL(i).List(j)) > fl(i) Then
              Exit Do
              Else
              lv(i) = -v
              End If
              j = j + 1
              Loop
            Else
              Do While WL(i).List(j) <> ""
              If Abs(WL(i).List(j)) < fl(i) Then
              Exit Do
              Else
              lv(i) = v
              End If
              j = j + 1
              Loop
            End If
            LbOS(i) = "暂停"
            pause(i) = Counter
          End If
        Else
        LbOS(i) = "暂停"
        pause(i) = Counter
        End If
      Else
      Call WLverify(i)
        If verifyWL = 1 Then 'WL是否存在当前楼层
          If fl(i) = 1 Then '当所在楼层为顶层或者底层时，做一些特殊处理
            lv(i) = v
          ElseIf fl(i) = FlNm Then
            lv(i) = -v
          ElseIf lv(i) = 0 Then
            lv(i) = FlDRd * v
          End If
        LbOS(i) = "暂停"
        pause(i) = Counter
        Else
          If AL(i).List(1) = "" Then 'AL是否为空队列
            If WL(i).List(1) = "" Then 'WL是否为空队列
            lv(i) = 0: LbOS(i) = "待机"
            Else  '星号2部分
            If lv(i) > 0 Then
              Do While WL(i).List(j) <> ""
              If Abs(WL(i).List(j)) > fl(i) Then
              Exit Do
              Else
              lv(i) = -v
              End If
              j = j + 1
              Loop
            Else
              Do While WL(i).List(j) <> ""
              If Abs(WL(i).List(j)) < fl(i) Then
              Exit Do
              Else
              lv(i) = v
              End If
              j = j + 1
              Loop
            End If
            LbOS(i) = "暂停"
            pause(i) = Counter
            End If
          Else
          fl(i) = fl(i) + v * 0.1
          End If
        End If
      End If
    End If
  Else
  fl(i) = fl(i) + v * 0.1
  End If
If lv(i) > 0 Then  '电梯系统的状态显示
LbOS(i).Caption = "上行"
LbFl(i).Caption = Fix(fl(i))
ElseIf lv(i) < 0 Then
LbOS(i).Caption = "下行"
LbFl(i).Caption = Fix(fl(i)) + 1
End If
Next

Counter = Counter + 0.1  '时间累加及计时显示
Dim hour%, minute%, second%
hour = Int(Counter / 3600)
minute = Int(Counter / 60) - hour * 60
second = Int(Counter) - hour * 3600 - minute * 60
Time.Caption = hour & ":" & minute & ":" & second
End Sub

Private Sub ALverify(i) '验证当层是否在AL序列内并删除该层
Dim j: j = 1
Do While AL(i).List(j) <> ""
  If AL(i).List(j) = fl(i) Then
  verifyAL = 1
  AL(i).RemoveItem j
  Exit Do
  Else
  verifyAL = 0
  End If
j = j + 1
Loop
End Sub

Private Sub WLverify(i) '验证当层是否在WL序列内并删除该层
Dim j: j = 1
If lv(i) > 0 Then
Do While WL(i).List(j) <> ""
  If WL(i).List(j) = fl(i) Then
  verifyWL = 1
  WL(i).RemoveItem j
  Exit Do
  Else
  verifyWL = 0
  End If
j = j + 1
Loop
End If
If lv(i) < 0 Then
Do While WL(i).List(j) <> ""
  If WL(i).List(j) = -fl(i) Then
  verifyWL = 1
  WL(i).RemoveItem j
  Exit Do
  Else
  verifyAL = 0
  End If
j = j + 1
Loop
End If
End Sub

Private Sub WLtoAL(i) '当层乘客进入轿厢并按钮，信号送入AL
Dim j
Dim random
If lv(i) > 0 Then
For j = 1 To FlU(i)
Randomize
random = Int(Rnd * (FlNm - fl(i))) + fl(i) + 1 '产生fl到flnm左开右闭随机数
Dim verify
  Do While AL(i).List(j) <> ""
    If AL(i).List(j) = random Then
    verify = 1
    End If
    j = j + 1
    Loop
      If verify = 0 Then
      AL(i).AddItem random
      End If
Next
End If

If lv(i) < 0 Then
For j = 1 To FlD(i)
Randomize
random = Fix(Rnd * (fl(i) - 3)) + 1 '产生fl到1左开右闭随机数
Dim verify
  Do While AL(i).List(j) <> ""
    If AL(i).List(j) = random Then
    verify = 1
    End If
    j = j + 1
    Loop
      If verify = 0 Then
      AL(i).AddItem random
      End If
Next
End If
fl(i) = fl(i) + lv(i) * 0.1
End Sub

Private Sub pausecon(i) '暂停期间的处理
If Counter = pause(i) + wt Then
Call ALverify(i)
Call WLverify(i)
Call WLtoAL(i)
End If
End Sub
