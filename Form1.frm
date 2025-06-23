VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "mscomctl.OCX"
Begin VB.Form Form1 
   Caption         =   "Club de lectura"
   ClientHeight    =   9495
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   17100
   LinkTopic       =   "Form1"
   ScaleHeight     =   9495
   ScaleWidth      =   17100
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnQuitarFavorito 
      Caption         =   "Eliminar Genero Favorito"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   6960
      TabIndex        =   14
      Top             =   4680
      Width           =   2295
   End
   Begin VB.CommandButton btnMarcarFavorito 
      Caption         =   "Agregar Genero Favorito"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   4080
      TabIndex        =   13
      Top             =   4680
      Width           =   2415
   End
   Begin VB.CommandButton btn_generosf 
      Caption         =   "Generos favoritos"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   480
      Picture         =   "Form1.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   11
      Top             =   6600
      Width           =   2295
   End
   Begin VB.CommandButton btn_LibrosFavoritos 
      Caption         =   "Libros Favoritos"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   480
      Picture         =   "Form1.frx":10CA
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   7680
      Width           =   2175
   End
   Begin VB.CommandButton btn_generosg 
      Caption         =   "Todos los Generos"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   480
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   5400
      Width           =   2295
   End
   Begin VB.CommandButton btn_gustaron 
      Caption         =   "No me gustaron"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   480
      Picture         =   "Form1.frx":2194
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   4320
      Width           =   2175
   End
   Begin VB.CommandButton btn_eliminar 
      Caption         =   "Eliminar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   10200
      TabIndex        =   7
      Top             =   3720
      Width           =   2295
   End
   Begin VB.CommandButton btn_modificar 
      Caption         =   "Modificar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   7080
      TabIndex        =   6
      Top             =   3720
      Width           =   2295
   End
   Begin VB.CommandButton btn_agregar 
      Caption         =   "Agregar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4200
      TabIndex        =   4
      Top             =   3720
      Width           =   2295
   End
   Begin MSComctlLib.ListView list_libros 
      Height          =   2895
      Left            =   3480
      TabIndex        =   3
      Top             =   480
      Width           =   12135
      _ExtentX        =   21405
      _ExtentY        =   5106
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   0
   End
   Begin VB.CommandButton btn_leiste 
      Caption         =   "Ya  leiste"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   480
      Picture         =   "Form1.frx":325E
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1920
      Width           =   2295
   End
   Begin VB.Frame Frame1 
      Height          =   9015
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   2535
      Begin VB.CommandButton btn_QuieroLeer 
         Caption         =   "Quiero leer"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   120
         Picture         =   "Form1.frx":2E509
         Style           =   1  'Graphical
         TabIndex        =   5
         Top             =   2880
         Width           =   2175
      End
      Begin VB.CommandButton btn_catalogo 
         Caption         =   "Catalogo MEGA"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   120
         Picture         =   "Form1.frx":5AB27
         Style           =   1  'Graphical
         TabIndex        =   1
         Top             =   480
         Width           =   2295
      End
   End
   Begin VB.Label DerechosAutor 
      Caption         =   "Hecho por Hector Gomez. Para Liderly & Mega"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4800
      TabIndex        =   12
      Top             =   5880
      Width           =   8175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    ' Paso 1: Abrir la conexión.
    On Error GoTo ManejoError_Load

    Set conn = New ADODB.Connection
    conn.CursorLocation = adUseClient
    
    Dim connString As String
    connString = "Provider=SQLOLEDB.1;Data Source=127.0.0.1;Initial Catalog=LibreriaMega;User ID=USEREXAMPLE;Password=PASSWORDEXAMPLE"
    
    conn.Open connString
    
    MsgBox "¡CONEXIÓN ABIERTA CON ÉXITO DENTRO DE Form_Load!", vbInformation
    
    ' Llamar a una subrutina separada para la configuración de la lista
    Call ConfigurarListaInicial
    
    ' Y llamamos a CargarLibros para mostrar algo al inicio
    Call CargarLibros("")
    
    Exit Sub

ManejoError_Load:
    MsgBox "¡ERROR FATAL AL CARGAR EL FORMULARIO!" & vbCrLf & vbCrLf & _
           "Error #: " & Err.Number & vbCrLf & _
           "Descripción: " & Err.Description, vbCritical
    ' Si hay un error aquí, la aplicación no puede continuar.
    Unload Me
End Sub

Private Sub ConfigurarListaInicial()
    ' Esta subrutina solo se encarga de la parte visual inicial del ListView
    ' la primera vez que se carga el formulario.
    With list_libros
        .View = lvwReport
        .GridLines = True
        .FullRowSelect = True
    End With
End Sub

Private Sub CargarLibros(Optional filtroSQL As String = "")

    list_libros.ListItems.Clear
    list_libros.ColumnHeaders.Clear
    list_libros.ColumnHeaders.Add , , "Título", 3000
    list_libros.ColumnHeaders.Add , , "Autor", 2000
    list_libros.ColumnHeaders.Add , , "Género", 1500
    list_libros.ColumnHeaders.Add , , "Calificación", 800
    list_libros.ColumnHeaders.Add , , "Prestado", 1500


    Dim sql As String
    sql = "SELECT L.LibroID, L.Titulo, L.Autor, G.Nombre As Genero, L.Calificacion, L.Prestado, L.PrestadoA " & _
          "FROM Libros L LEFT JOIN Generos G ON L.GeneroID = G.GeneroID"

    If filtroSQL <> "" Then
        sql = sql & " WHERE " & filtroSQL
    End If
    
    sql = sql & " ORDER BY L.Titulo"

    Debug.Print "Cargando Libros con SQL: " & sql

    Dim rs As New ADODB.Recordset
    Dim li As ListItem
    On Error GoTo ManejoError_Libros

    rs.Open sql, conn, adOpenForwardOnly, adLockReadOnly

    Do While Not rs.EOF
        Set li = list_libros.ListItems.Add(, , CStr(rs.Fields("Titulo").Value))
        li.Tag = rs.Fields("LibroID").Value
        
        li.SubItems(1) = CStr(IIf(IsNull(rs.Fields("Autor").Value), "", rs.Fields("Autor").Value))
        li.SubItems(2) = CStr(IIf(IsNull(rs.Fields("Genero").Value), "", rs.Fields("Genero").Value))
        li.SubItems(3) = CStr(IIf(IsNull(rs.Fields("Calificacion").Value), "", rs.Fields("Calificacion").Value))
        
        If rs.Fields("Prestado").Value = True Then
            li.SubItems(4) = "Sí (a " & rs.Fields("PrestadoA").Value & ")"
        Else
            li.SubItems(4) = "No"
        End If
        
        rs.MoveNext
    Loop

    rs.Close
    Set rs = Nothing
    
    Call ActualizarVisibilidadBotones("Libros")
    
    Exit Sub

ManejoError_Libros: '
    MsgBox "Ocurrió un error al cargar los libros:" & vbCrLf & Err.Description
    If Not rs Is Nothing Then
        If rs.State = adStateOpen Then rs.Close
        Set rs = Nothing
    End If
End Sub

Private Sub CargarGeneros(Optional filtroSQL As String = "")
    
    list_libros.ListItems.Clear
    list_libros.ColumnHeaders.Clear
    list_libros.ColumnHeaders.Add , , "Nombre del Género", 3000
    list_libros.ColumnHeaders.Add , , "Favorito", 1500
    

    Dim sql As String
    sql = "SELECT GeneroID, Nombre, EsFavoritos FROM Generos"

    If filtroSQL <> "" Then
        sql = sql & " WHERE " & filtroSQL
    End If
    
    sql = sql & " ORDER BY Nombre"

    
    Debug.Print "Cargando Géneros con SQL: " & sql

    Dim rs As New ADODB.Recordset
    Dim li As ListItem
    On Error GoTo ManejoError_Generos

    rs.Open sql, conn, adOpenForwardOnly, adLockReadOnly

    Do While Not rs.EOF
        Set li = list_libros.ListItems.Add(, , CStr(rs.Fields("Nombre").Value))
        li.Tag = rs.Fields("GeneroID").Value
        li.SubItems(1) = IIf(rs.Fields("EsFavoritos").Value = True, "Sí", "No")
        rs.MoveNext
    Loop

    rs.Close
    Set rs = Nothing
    
    Call ActualizarVisibilidadBotones("Generos")
    
    Exit Sub

ManejoError_Generos:
    MsgBox "Ocurrió un error al cargar los géneros:" & vbCrLf & Err.Description
    If Not rs Is Nothing Then
        If rs.State = adStateOpen Then rs.Close
        Set rs = Nothing
    End If
End Sub

Private Sub btn_agregar_Click()
    ' Crea una instancia del nuevo formulario
    Dim f As New Form2
    
    ' Lo mostramos en modo "Modal", que detiene el código aquí hasta que se cierre
    f.Show vbModal
    
    ' Cuando se cierra, refrescamos la lista principal por si se agregó un libro
    Call CargarLibros("")
End Sub

Private Sub btn_generosf_Click()
' Llama a la misma función pero con el filtro para favoritos.
    Call CargarGeneros("EsFavoritos = 1")
End Sub

Private Sub btn_gustaron_Click()
    ' Filtramos para mostrar libros con calificación 0 O sin calificación.
    Call CargarLibros("Calificacion = 0 OR Calificacion IS NULL")
End Sub


Private Sub btn_LibrosFavoritos_Click()
    ' Llamamos a nuestra función CargarLibros, pasándole el filtro
    ' para mostrar solo los libros con la máxima calificación.
    Call CargarLibros("Calificacion = 5")
End Sub

Private Sub btn_modificar_Click()
    ' Primero, validamos que haya un libro seleccionado
    If list_libros.SelectedItem Is Nothing Then
        MsgBox "Por favor, seleccione un libro de la lista para modificar.", vbExclamation
        Exit Sub
    End If
    
    ' Crea una instancia del nuevo formulario
    Dim f As New Form2
    
    ' Le pasamos el ID del libro seleccionado a la variable pública del formulario
    f.LibroIDaEditar = list_libros.SelectedItem.Tag
    
    ' Lo mostramos
    f.Show vbModal
    
    ' Al cerrar, refrescamos la lista por si hubo cambios
    Call CargarLibros("")
End Sub

Private Sub btn_catalogo_Click()
CargarLibros ""

End Sub

Private Sub btn_eliminar_Click()
    ' 1. Verificar si hay un item seleccionado
    If list_libros.SelectedItem Is Nothing Then
        MsgBox "Por favor, seleccione un libro de la lista para eliminar.", vbExclamation, "Acción Requerida"
        Exit Sub
    End If

    ' 2. Pedir confirmación
    Dim titulo As String
    titulo = list_libros.SelectedItem.Text ' Obtenemos el título para el mensaje

    If MsgBox("¿Está seguro de que desea eliminar el libro '" & titulo & "'?", _
              vbQuestion + vbYesNo, "Confirmar Eliminación") = vbNo Then
        Exit Sub
    End If

    ' 3. Obtener el ID y ejecutar el DELETE
    Dim libroID As Long
    libroID = list_libros.SelectedItem.Tag ' < usamos el ID guardado

    Dim sql As String
    sql = "DELETE FROM Libros WHERE LibroID = " & libroID

    On Error GoTo ManejoError_Eliminar
    conn.Execute sql

    MsgBox "Libro eliminado correctamente.", vbInformation, "Éxito"

    ' 4. Actualizar la lista
    CargarLibros

    Exit Sub

ManejoError_Eliminar:
    MsgBox "Ocurrió un error al eliminar el libro:" & vbCrLf & Err.Description, vbCritical, "Error"
End Sub

Private Sub btn_generosg_Click()
Call CargarGeneros
End Sub

Private Sub btn_leiste_Click()
Call CargarLibros("Leido = 1")
End Sub

Private Sub btn_QuieroLeer_Click()
    ' Reutilizamos CargarLibros, pasándole el filtro para 'PorLeer = 1'.
    ' La función se encargará del resto.
    Call CargarLibros("PorLeer = 1")
End Sub

' Esta es la versión final y correcta de tu controladora de interfaz.
Private Sub ActualizarVisibilidadBotones(modo As String)
    Select Case modo
        Case "Libros"
            ' Muestra los botones para LIBROS
            btn_agregar.Visible = True
            btn_modificar.Visible = True
            btn_eliminar.Visible = True
            
            ' Oculta los botones para GÉNEROS
            btnMarcarFavorito.Visible = False
            btnQuitarFavorito.Visible = False
            
        Case "Generos"
            ' Oculta los botones para LIBROS
            btn_agregar.Visible = False
            btn_modificar.Visible = False
            btn_eliminar.Visible = False
            
            ' Muestra los botones para GÉNEROS
            btnMarcarFavorito.Visible = True
            btnQuitarFavorito.Visible = True
            
        Case Else
            ' Oculta todo por seguridad
            btn_agregar.Visible = False
            btn_modificar.Visible = False
            btn_eliminar.Visible = False
            btnMarcarFavorito.Visible = False
            btnQuitarFavorito.Visible = False
    End Select
End Sub

' Evento para el botón de Marcar Favorito
Private Sub btnMarcarFavorito_Click()
    If list_libros.SelectedItem Is Nothing Then
        MsgBox "Por favor, seleccione un género de la lista.", vbExclamation
        Exit Sub
    End If
    
    If list_libros.ColumnHeaders.Count < 2 Or list_libros.ColumnHeaders(1).Text <> "Nombre del Género" Then
        MsgBox "Esta acción solo se puede realizar en la vista de Géneros.", vbExclamation
        Exit Sub
    End If
    
    Dim generoID As Long
    generoID = list_libros.SelectedItem.Tag
    
    Dim sql As String
    sql = "UPDATE Generos SET EsFavoritos = 1 WHERE GeneroID = " & generoID
    
    On Error GoTo ManejoError_MarcarFav
    conn.Execute sql
    Call CargarGeneros("") ' Refrescamos para ver el cambio
    Exit Sub

ManejoError_MarcarFav:
    MsgBox "Ocurrió un error al marcar como favorito.", vbCritical
End Sub

' Evento para el botón de Quitar Favorito
Private Sub btnQuitarFavorito_Click()
    If list_libros.SelectedItem Is Nothing Then
        MsgBox "Por favor, seleccione un género de la lista.", vbExclamation
        Exit Sub
    End If
    
    If list_libros.ColumnHeaders.Count < 2 Or list_libros.ColumnHeaders(1).Text <> "Nombre del Género" Then
        MsgBox "Esta acción solo se puede realizar en la vista de Géneros.", vbExclamation
        Exit Sub
    End If
    
    Dim generoID As Long
    generoID = list_libros.SelectedItem.Tag
    
    Dim sql As String
    sql = "UPDATE Generos SET EsFavoritos = 0 WHERE GeneroID = " & generoID
    
    On Error GoTo ManejoError_QuitarFav
    conn.Execute sql
    Call CargarGeneros("") ' Refrescamos para ver el cambio
    Exit Sub

ManejoError_QuitarFav:
    MsgBox "Ocurrió un error al quitar de favoritos.", vbCritical
End Sub

