Option Explicit
Dim Result As Double
'四則演算ボタンがクリックされたときに値がセットされる
Dim Operator As String
' Memory変数を宣言して、ボタン処理から呼び出せるようにする
Dim Memory As Double

Private Sub btn1_Click()
    ' ボタン1がクリックされた場合の処理
    txtDisplay.Text = txtDisplay.Text & "1"
End Sub

Private Sub btn2_Click()
    ' ボタン2がクリックされた場合の処理
    txtDisplay.Text = txtDisplay.Text & "2"
End Sub
Private Sub btn3_Click()
    ' ボタン3がクリックされた場合の処理
    txtDisplay.Text = txtDisplay.Text & "3"
End Sub
Private Sub btn4_Click()
    ' ボタン4がクリックされた場合の処理
    txtDisplay.Text = txtDisplay.Text & "5"
End Sub
Private Sub btn5_Click()
    ' ボタン5がクリックされた場合の処理
    txtDisplay.Text = txtDisplay.Text & "5"
End Sub
Private Sub btn6_Click()
    ' ボタン6がクリックされた場合の処理
    txtDisplay.Text = txtDisplay.Text & "6"
End Sub
Private Sub btn7_Click()
    ' ボタン7がクリックされた場合の処理
    txtDisplay.Text = txtDisplay.Text & "7"
End Sub
Private Sub btn8_Click()
    ' ボタン8がクリックされた場合の処理
    txtDisplay.Text = txtDisplay.Text & "8"
End Sub
Private Sub btn9_Click()
    ' ボタン9がクリックされた場合の処理
    txtDisplay.Text = txtDisplay.Text & "9"
End Sub

Private Sub btn0_Click()
    ' 0ボタンがクリックされた場合の処理
    txtDisplay.Text = txtDisplay.Text & "0"
End Sub

Private Sub btnBackspace_Click()
    'txtInputのテキストボックスから最後尾の文字を削除する
    If Len(txtInput.Text) > 0 Then
        txtInput.Text = Left(txtInput.Text, Len(txtInput.Text) - 1)
    End If
End Sub

Private Sub btnDoubleZero_Click()
    ' 00ボタンがクリックされた場合の処理
    txtDisplay.Text = txtDisplay.Text & "00"
End Sub

Private Sub btnDecimalPoint_Click()
    ' 小数点ボタンがクリックされた場合の処理
    If InStr(txtDisplay.Text, ".") = 0 Then
        txtDisplay.Text = txtDisplay.Text & "."
    End If
End Sub

'定数PiをtxtInputに挿入
    txtInput.Text = CDbl(Application.WorksheetFunction.Pi())

' πボタンがクリックされたときの処理
Private Sub btnPi_Click()
    ' テキストボックスにπを表示する
    txtInput.Text = "3.14159265358979"
End Sub


Private Sub btnReversal_Click()
    ' +/-ボタンがクリックされた場合の処理
    If txtDisplay.Text <> "" Then
        If Left(txtDisplay.Text, 1) = "-" Then
            txtDisplay.Text = Mid(txtDisplay.Text, 2)
        Else
            txtDisplay.Text = "-" & txtDisplay.Text
        End If
    End If
End Sub

Private Sub btnClear_Click()
    ' Cボタンがクリックされた場合の処理
    txtDisplay.Text = ""
End Sub

Private Sub btnClearEntry_Click()
    ' CEボタンがクリックされた場合の処理
    If Len(txtDisplay.Text) > 0 Then
        txtDisplay.Text = Left(txtDisplay.Text, Len(txtDisplay.Text) - 1)
    End If
End Sub

Private Sub btnAddition_Click()
    ' 加算ボタンがクリックされた場合の処理
    '
    If IsNumeric(txtDisplay.Value) Then
        Result = CDbl(txtDisplay.Value)
        txtDisplay.Value = ""
        Operator = "+"
    Else
        txtDisplay.Value = "Error"
    End If
End Sub

Private Sub btnSin_Click()
    'txtInputのテキストボックスから数値を取得する
    Dim num As Double
    num = CDbl(txtInput.Text)
    
    'numをラジアンに変換して、Sinを計算し、txtInputのテキストボックスに表示する
    txtInput.Text = CStr(Sin(num * Application.WorksheetFunction.Pi / 180))
End Sub

Private Sub btnCos_Click()
    'txtInputのテキストボックスから数値を取得する
    Dim num As Double
    num = CDbl(txtInput.Text)
    
    'numをラジアンに変換して、Cosを計算し、txtInputのテキストボックスに表示する
    txtInput.Text = CStr(Cos(num * Application.WorksheetFunction.Pi / 180))
End Sub

Private Sub btnTan_Click()
    'txtInputのテキストボックスから数値を取得する
    Dim num As Double
    num = CDbl(txtInput.Text)
    
    'numをラジアンに変換して、Tanを計算し、txtInputのテキストボックスに表示する
    txtInput.Text = CStr(Tan(num * Application.WorksheetFunction.Pi / 180))
End Sub


Private Sub btnSqrt_Click()
    'txtInputのテキストボックスから数値を取得する
    Dim num As Double
    num = CDbl(txtInput.Text)
    
    'numが負の数の場合、エラーメッセージを表示
    If num < 0 Then
        MsgBox "負の数の平方根は計算できません。"
    Else
        'numの平方根を計算して、txtInputのテキストボックスに表示する
        txtInput.Text = CStr(Sqr(num))
    End If
End Sub


Private Sub btnSubtraction_Click()
    ' 引き算ボタンがクリックされた場合の処理
    If IsNumeric(txtDisplay.Value) Then
        Result = CDbl(txtDisplay.Value)
        txtDisplay.Value = ""
        Operator = "-"
    Else
        txtDisplay.Value = "Error"
    End If
End Sub
Private Sub btnMultiplication_Click()
    ' 乗算ボタンがクリックされた場合の処理
    If IsNumeric(txtDisplay.Value) Then
        Result = CDbl(txtDisplay.Value)
        txtDisplay.Value = ""
        Operator = "*"
    Else
        txtDisplay.Value = "Error"
    End If
End Sub

Private Sub btnDivision_Click()
    ' 除算ボタンがクリックされた場合の処理
    If IsNumeric(txtDisplay.Value) Then
        Result = CDbl(txtDisplay.Value)
        txtDisplay.Value = ""
        Operator = "/"
    Else
        txtDisplay.Value = "Error"
    End If
End Sub


Private Sub btnPercent_Click()
    ' %ボタンがクリックされた場合の処理
    If txtDisplay.Text <> "" Then
        txtDisplay.Text = txtDisplay.Text / 100
    End If
End Sub
Private Sub btnEquals_Click()
    ' イコールボタンがクリックされた場合の処理
    If IsNumeric(txtDisplay.Value) Then
        Select Case Operator
            Case "+"
                Result = Result + CDbl(txtDisplay.Value)
            Case "-"
                Result = Result - CDbl(txtDisplay.Value)
            Case "*"
                Result = Result * CDbl(txtDisplay.Value)
            Case "/"
                Result = Result / CDbl(txtDisplay.Value)
        End Select
        txtDisplay.Value = Result
        Result = 0
        Operator = ""
    Else
        txtDisplay.Value = "Error"
    End If
End Sub

Private Sub btnTaxIncluded_Click()
    ' 税込みボタンがクリックされた場合の処理
    If txtDisplay.Text <> "" Then
        txtDisplay.Text = txtDisplay.Text * 1.1 ' 消費税率は10%
    End If
End Sub

Private Sub btnTaxExcluded_Click()
    ' 税別ボタンがクリックされた場合の処理
If txtDisplay.Text <> "" Then
txtDisplay.Text = txtDisplay.Text / 1.1 ' 消費税率は10%
End If
End Sub

Private Sub btnMemoryClear_Click()
' MCボタンがクリックされた場合の処理
Memory = 0
End Sub

Private Sub btnMemoryRecall_Click()
' MRボタンがクリックされた場合の処理
txtDisplay.Text = Memory
End Sub

Private Sub btnMemoryStore_Click()
' Msボタンがクリックされた場合の処理
Memory = txtDisplay.Text
End Sub

Private Sub btnMemoryAdd_Click()
' M+ボタンがクリックされた場合の処理
If txtDisplay.Text <> "" Then
Memory = Memory + txtDisplay.Text
End If
End Sub
Private Sub btnChangeTax_Click()
    ' ComboBoxから選択された税率を取得する
    Dim taxRate As Double
    taxRate = CDbl(ComboBox1.Value)

    ' 現在の計算結果を再計算する
    If Operator = "+" Then
        Result = Result + CDbl(txtDisplay.Value)
    ElseIf Operator = "-" Then
        Result = Result - CDbl(txtDisplay.Value)
    ElseIf Operator = "*" Then
        Result = Result * CDbl(txtDisplay.Value)
    ElseIf Operator = "/" Then
        Result = Result / CDbl(txtDisplay.Value)
    End If

    ' 税込みボタンが押された場合、税込み価格に変換する
    If TaxIncluded Then
        Result = Result / (1 + taxRate / 100)
    End If

    ' 現在の計算結果に対して、税率を適用する
    Result = Result * (1 + taxRate / 100)

    ' 税込みボタンが押された場合、再度税込み価格に変換する
    If TaxIncluded Then
        Result = Result * (1 + taxRate / 100)
    End If

    ' 計算結果を表示する
    txtDisplay.Value = CStr(Result)
End Sub

Private Sub txtInput_Change()
    ' 入力が16桁以上の場合、入力を制限する
    If Len(txtInput.Text) > 16 Then
        ' エラーメッセージを表示する
        lblError.Visible = True
        ' 入力を16桁までに制限する
        txtInput.Text = Left(txtInput.Text, 16)
    Else
        ' エラーメッセージを非表示にする
        lblError.Visible = False
    End If
End Sub
Private Sub Form_Load()
    txtInput.Text = "0"
End Sub

Private Sub btnFraction_Click()
    ' 分数の書式で表示する
    txtInput.Text = "1/2"
    End Sub
Private Sub btnConvert_Click()
    Dim inputVal As Variant
    Dim isBinary As Boolean
    Dim decimalVal As Long
    Dim binaryVal As String
    Dim i As Long

    inputVal = Me.txtDisplay.Value
    isBinary = (MsgBox("入力されている数値を進数変換しますか?", vbYesNo) = vbYes)

    If isBinary Then
        If Not IsNumeric(inputVal) Or InStr(inputVal, ".") <> 0 Or InStr(inputVal, "-") <> 0 Or InStr(inputVal, "2") <> 0 Then
            MsgBox "進数変換のための入力が無効です！"
            Exit Sub
        End If

        For i = 1 To Len(inputVal)
            binaryVal = Mid(inputVal, i, 1) & binaryVal
        Next i

        decimalVal = 0
        For i = 1 To Len(binaryVal)
            If Mid(binaryVal, i, 1) = "1" Then
                decimalVal = decimalVal + (2 ^ (i - 1))
            End If
        Next i

        Me.txtDisplay.Value = decimalVal
    Else
        If Not IsNumeric(inputVal) Or InStr(inputVal, ".") <> 0 Or InStr(inputVal, "-") <> 0 Then
            MsgBox "進数変換のための入力が無効です！"
            Exit Sub
        End If

        decimalVal = inputVal
        binaryVal = ""

        Do
            If decimalVal Mod 2 = 0 Then
                binaryVal = "0" & binaryVal
            Else
                binaryVal = "1" & binaryVal
            End If
            decimalVal = Int(decimalVal / 2)
        Loop Until decimalVal = 0

        Me.txtDisplay.Value = binaryVal
    End If
End Sub
Private Sub cmdBinary_Click()
    Dim decValue As Long
    Dim binValue As String

    On Error GoTo ErrorHandler

    ' 入力された値を10進数に変換
    decValue = Val(txtDisplay.Text)

    ' 10進数から2進数に変換
    binValue = ""
    Do While decValue > 0
        binValue = CStr(decValue Mod 2) & binValue
        decValue = decValue \ 2
    Loop

    ' 2進数の値を表示
    txtDisplay.Text = binValue

    Exit Sub

ErrorHandler:
    MsgBox "入力値が無効"
End Sub
Private Sub btnOct_Click()
    Dim num As String
    Dim oct As String
    
    num = Me.txtDisplay.Value
    
    ' 入力値が数値であるかチェック
    If Not IsNumeric(num) Then
        MsgBox "入力値が無効"
        Exit Sub
    End If
    
    ' 入力値を8進数に変換
    oct = oct(CLng(num))
    
    Me.txtDisplay.Value = oct
End Sub
Private Sub cmdHex_Click()
    Dim num As Variant
    Dim hex_num As String
    
    num = Me.txtDisplay.Value
    
    If Not IsNumeric(num) Then
        MsgBox "入力値が無効."
        Exit Sub
    End If
    
    hex_num = Hex(num)
    
    Me.txtDisplay.Value = hex_num
End Sub

Private Sub UserForm_Click()

End Sub
