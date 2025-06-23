VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Detalles Libro"
   ClientHeight    =   9990
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   10590
   LinkTopic       =   "Form2"
   ScaleHeight     =   9990
   ScaleWidth      =   10590
   StartUpPosition =   3  'Windows Default
   Begin VB.ComboBox cboCalificacion 
      Height          =   315
      Left            =   4440
      TabIndex        =   14
      Top             =   3240
      Width           =   5415
   End
   Begin VB.CommandButton cmdCancelar 
      Caption         =   "Cancelar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   5040
      TabIndex        =   13
      Top             =   8520
      Width           =   2295
   End
   Begin VB.CommandButton cmd_save 
      Caption         =   "Guardar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   1200
      TabIndex        =   12
      Top             =   8640
      Width           =   2295
   End
   Begin VB.TextBox txtPrestadoA 
      Height          =   495
      Left            =   3840
      TabIndex        =   11
      Top             =   7680
      Width           =   4335
   End
   Begin VB.CheckBox chkPrestado 
      Caption         =   "Prestado a"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1320
      TabIndex        =   10
      Top             =   7560
      Width           =   2055
   End
   Begin VB.CheckBox chkRecomendado 
      Caption         =   "Recomendado"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4200
      TabIndex        =   9
      Top             =   6360
      Width           =   5415
   End
   Begin VB.CheckBox chkPorLeer 
      Caption         =   "Quiero Leer"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4200
      TabIndex        =   8
      Top             =   5280
      Width           =   5415
   End
   Begin VB.CheckBox chkLeido 
      Caption         =   "Ya leiste"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4200
      TabIndex        =   7
      Top             =   4200
      Width           =   5415
   End
   Begin VB.ComboBox cboGenero 
      Height          =   315
      Left            =   4440
      TabIndex        =   4
      Top             =   2520
      Width           =   5415
   End
   Begin VB.TextBox txtAutor 
      Height          =   495
      Left            =   4440
      TabIndex        =   2
      Top             =   1440
      Width           =   5415
   End
   Begin VB.TextBox txtTitulo 
      Height          =   495
      Left            =   4440
      TabIndex        =   1
      Top             =   360
      Width           =   5415
   End
   Begin VB.Label Label4 
      Caption         =   "Calificacion"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   17.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1680
      TabIndex        =   6
      Top             =   3240
      Width           =   2175
   End
   Begin VB.Label Label3 
      Caption         =   "Genero"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   17.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2400
      TabIndex        =   5
      Top             =   2400
      Width           =   1455
   End
   Begin VB.Label label2 
      Caption         =   "Autor"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   17.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2400
      TabIndex        =   3
      Top             =   1560
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   "Titulo"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   17.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2400
      TabIndex        =   0
      Top             =   480
      Width           =   1455
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' variable pública nos dirá si estamos agregando (ID=0) o editando (ID>0)
Public LibroIDaEditar As Long

' Se ejecuta justo antes de que el formulario se muestre ---
Private Sub Form_Load()
    ' Llenamos los ComboBox con datos
    Call CargarComboGeneros
    Call CargarComboCalificacion
    
    ' Comprobamos si estamos en modo EDICIÓN o AGREGAR
    If LibroIDaEditar > 0 Then
        Me.Caption = "Modificar Libro"
        Call CargarDatosDelLibro
    Else
        Me.Caption = "Agregar Nuevo Libro"
    End If
    
    ' Establecemos el estado inicial correcto de los checkboxes
    Call ActualizarEstadoCheckboxes
End Sub


' Botón GUARDAR: La lógica principal
Private Sub cmd_save_Click()
    Dim sql As String
    Dim titulo As String, autor As String, calificacion As String, prestadoA As String
    Dim esPrestado As Integer, esLeido As Integer, esPorLeer As Integer, esRecomendado As Integer
    Dim generoIDSeleccionado As Long
    
    ' Validamos que se haya seleccionado un género
    If cboGenero.ListIndex = -1 Then
        MsgBox "Por favor, seleccione un género.", vbExclamation
        Exit Sub
    End If
    generoIDSeleccionado = cboGenero.ItemData(cboGenero.ListIndex)

    ' Obtenemos y limpiamos los datos de los controles
    titulo = Replace(txtTitulo.Text, "'", "''")
    autor = Replace(txtAutor.Text, "'", "''")
    
    If cboCalificacion.Text = "" Then
        calificacion = "NULL"
    Else
        calificacion = cboCalificacion.Text
    End If
    
    prestadoA = Replace(txtPrestadoA.Text, "'", "''")

    esPrestado = IIf(chkPrestado.Value = vbChecked, 1, 0)
    esLeido = IIf(chkLeido.Value = vbChecked, 1, 0)
    esPorLeer = IIf(chkPorLeer.Value = vbChecked, 1, 0)
    esRecomendado = IIf(chkRecomendado.Value = vbChecked, 1, 0)

    ' Decidimos si hacer un INSERT (nuevo) o un UPDATE (existente)
    If LibroIDaEditar = 0 Then
        ' MODO INSERT
        sql = "INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Prestado, PrestadoA, Leido, PorLeer, Recomendado) VALUES (" & _
              "'" & titulo & "', '" & autor & "', " & generoIDSeleccionado & ", " & calificacion & ", " & esPrestado & ", '" & prestadoA & "', " & esLeido & ", " & esPorLeer & ", " & esRecomendado & ")"
    Else
        ' MODO UPDATE
        sql = "UPDATE Libros SET " & _
              "Titulo = '" & titulo & "', " & _
              "Autor = '" & autor & "', " & _
              "GeneroID = " & generoIDSeleccionado & ", " & _
              "Calificacion = " & calificacion & ", " & _
              "Prestado = " & esPrestado & ", " & _
              "PrestadoA = '" & prestadoA & "', " & _
              "Leido = " & esLeido & ", " & _
              "PorLeer = " & esPorLeer & ", " & _
              "Recomendado = " & esRecomendado & " " & _
              "WHERE LibroID = " & LibroIDaEditar
    End If
    
    On Error GoTo ManejoError
    ' Ejecutamos la consulta y cerramos el formulario
    conn.Execute sql
    Unload Me
    Exit Sub

ManejoError:
    MsgBox "Ocurrió un error al guardar el libro: " & vbCrLf & Err.Description
End Sub

' Botón CANCELAR
Private Sub cmdCancelar_Click()
    Unload Me
End Sub

' Eventos de los CHECKBOXES para la lógica de validación
Private Sub chkLeido_Click()
    Call ActualizarEstadoCheckboxes
End Sub

Private Sub chkPorLeer_Click()
    Call ActualizarEstadoCheckboxes
End Sub

' Carga los datos de un libro existente en los controles del formulario
Private Sub CargarDatosDelLibro()
    Dim sql As String
    sql = "SELECT * FROM Libros WHERE LibroID = " & LibroIDaEditar
    
    Dim rs As New ADODB.Recordset
    rs.Open sql, conn, adOpenForwardOnly, adLockReadOnly
    
    If Not rs.EOF Then
        txtTitulo.Text = rs.Fields("Titulo").Value
        txtAutor.Text = rs.Fields("Autor").Value
        
        Dim i As Integer
        For i = 0 To cboGenero.ListCount - 1
            If cboGenero.ItemData(i) = rs.Fields("GeneroID").Value Then
                cboGenero.ListIndex = i
                Exit For
            End If
        Next i
        
        cboCalificacion.Text = CStr(IIf(IsNull(rs.Fields("Calificacion").Value), "", rs.Fields("Calificacion").Value))
        
        chkPrestado.Value = IIf(rs.Fields("Prestado").Value = True, vbChecked, vbUnchecked)
        chkLeido.Value = IIf(rs.Fields("Leido").Value = True, vbChecked, vbUnchecked)
        chkPorLeer.Value = IIf(rs.Fields("PorLeer").Value = True, vbChecked, vbUnchecked)
        chkRecomendado.Value = IIf(rs.Fields("Recomendado").Value = True, vbChecked, vbUnchecked)
        
        txtPrestadoA.Text = IIf(IsNull(rs.Fields("PrestadoA").Value), "", rs.Fields("PrestadoA").Value)
    End If
    
    rs.Close
    Set rs = Nothing
End Sub

' Carga la lista de géneros desde la BD al ComboBox
Private Sub CargarComboGeneros()
    Dim sql As String
    sql = "SELECT GeneroID, Nombre FROM Generos ORDER BY Nombre"

    Dim rs As New ADODB.Recordset
    On Error GoTo ManejoError_Generos

    rs.Open sql, conn, adOpenForwardOnly, adLockReadOnly
    
    cboGenero.Clear

    Do While Not rs.EOF
        cboGenero.AddItem rs.Fields("Nombre").Value
        cboGenero.ItemData(cboGenero.NewIndex) = rs.Fields("GeneroID").Value
        rs.MoveNext
    Loop

    rs.Close
    Set rs = Nothing
    Exit Sub

ManejoError_Generos:
    MsgBox "Ocurrió un error al cargar la lista de géneros: " & vbCrLf & Err.Description
    If Not rs Is Nothing Then
        If rs.State = adStateOpen Then rs.Close
        Set rs = Nothing
    End If
End Sub

' Carga los números en el ComboBox de calificación
Private Sub CargarComboCalificacion()
    cboCalificacion.Clear
    cboCalificacion.AddItem "0"
    cboCalificacion.AddItem "1"
    cboCalificacion.AddItem "2"
    cboCalificacion.AddItem "3"
    cboCalificacion.AddItem "4"
    cboCalificacion.AddItem "5"
End Sub

' Controla la lógica de activación/desactivación de los checkboxes
Private Sub ActualizarEstadoCheckboxes()
    If chkPorLeer.Value = vbChecked Then
        chkLeido.Value = vbUnchecked
        chkLeido.Enabled = False
        chkRecomendado.Value = vbUnchecked
        chkRecomendado.Enabled = False
        Exit Sub
    Else
        chkLeido.Enabled = True
    End If
    
    If chkLeido.Value = vbChecked Then
        chkRecomendado.Enabled = True
    Else
        chkRecomendado.Value = vbUnchecked
        chkRecomendado.Enabled = False
    End If
End Sub
