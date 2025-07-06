' simple shitty-ass calculator
' my first ever .vbs code or thing that does absolute fucking garbage.

Do
    On Error Resume Next
    retard = True

    fuck = InputBox("Enter the FIRST number you little shit:", "Brainfuck Calculator")
    If fuck = "" Then WScript.Quit
    If Not IsNumeric(fuck) Then
        MsgBox "You entered bullshit, what in the actual fuck is wrong with you?", vbExclamation
        retard = False
    End If

    If retard Then
        shit = InputBox("Now enter the SECOND number crap-ass:", "Brainfuck Calculator")
        If shit = "" Then WScript.Quit
        If Not IsNumeric(shit) Then
            MsgBox "You entered bullshit, what in the actual fuck is wrong with you?", vbExclamation
            retard = False
        End If
    End If

    If retard Then
        asshole = InputBox("Choose an operation you asshole: +  -  *  /", "Brainfuck Calculator")
        If asshole = "" Then WScript.Quit
        asshole = Trim(asshole)

        retardasshole = "+-*/"
        If InStr(retardasshole, asshole) = 0 Or Len(asshole) <> 1 Then
            MsgBox "God damn it, it's simple as fuck. Choose only +, -, * or / you absolute retard.", vbExclamation
            retard = False
        End If
    End If

    If retard Then
        fuck = CDbl(fuck)
        shit = CDbl(shit)

        Select Case asshole
            Case "+"
                result = fuck + shit
            Case "-"
                result = fuck - shit
            Case "*"
                result = fuck * shit
            Case "/"
                If shit = 0 Then
                    MsgBox "Fucking error: You dumb fuck, you can't divide by zero.", vbCritical
                    retard = False
                Else
                    result = fuck / shit
                End If
            Case Else
                MsgBox "An unknown error has occurred because fuck you and fuck this shit.", vbCritical
                retard = False
        End Select
    End If

    If retard Then
        MsgBox "Result: " & result, vbInformation, "Calculation Complete - Brainfuck Calculator"
        Exit Do
    End If

Loop
