function Invoke-Line {
    <#
    .Synopsis
        Invokes the current line in the ISE
    .Description
        Invokes the curreent line in the Windows PowerShell Integrated Scripting Environment
    .Example
        Invoke-Line
    #>
    param()
    $e = $psISE.CurrentFile.Editor
    $e.Select($e.CaretLine,1,$e.CaretLine,$e.GetLineLength($e.CaretLine)+1)
    Invoke-Expression $e.SelectedText
}
