<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test2.aspx.cs" Inherits="TestWebApplication.Test2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test2</title>
    <script type="text/javascript">
        function guessnumber()
        {
            var txtValue = document.getElementById('txt').value;
            var textBOX = document.getElementById('txt');
            var button = document.getElementById('btn');
            var div = document.getElementById('divMessage');
            var message = "";

            if (txtValue < 1 || txtValue > 100)
            {
                alert("Pleas enter value between 1 and 100");
                textBOX.value = '';
                textBOX.focus();
                return false;
            }
            else if (isNaN(txtValue)) {
                alert("Must input numbers");
                textBOX.value = '';
                textBOX.focus();
                return false;
            }
            else if (txtValue == 42) {
               
                message = txtValue + " - Correct";
                textBOX.disabled = true;
                button.disabled = true;
            }
            else {

                message = txtValue+" - Incorrect";
                textBOX.value = '';
                textBOX.focus();
                
            }
          
            div.innerHTML = div.innerHTML + message + "<br/>";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input type="text" id="txt" />
    <input type="button" id="btn" value="Guess Number" onclick="guessnumber()" />
        <br />
        <div id="divMessage"></div>
    </div>
    </form>
</body>
</html>
