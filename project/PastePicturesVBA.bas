Function ВставитьИзображениеПоСсылке(Ссылка As String) As String
    On Error Resume Next
    Dim Изображение As Object
    Dim Лист As Worksheet
    Dim ТекущаяЯчейка As Range
    
    ' Определяем текущую ячейку
    Set ТекущаяЯчейка = Application.Caller
    
    ' Получаем лист, на котором находится текущая ячейка
    Set Лист = ТекущаяЯчейка.Worksheet
    
    ' Вставляем изображение из ссылки
    Set Изображение = Лист.Pictures.Insert(Ссылка)
    
    ' Позиционируем изображение в текущей ячейке
    With Изображение
        .Left = ТекущаяЯчейка.Left
        .Top = ТекущаяЯчейка.Top
        .Width = ТекущаяЯчейка.Width
        .Height = ТекущаяЯчейка.Height
    End With
    
    ' Освобождаем ресурсы
    Set Изображение = Nothing
    Set Лист = Nothing
    On Error GoTo 0
    
End Function
