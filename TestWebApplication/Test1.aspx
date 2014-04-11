<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test1.aspx.cs" Inherits="TestWebApplication.Test1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test1</title>
    <script type="text/javascript">
        window.onload = function () {
            printNumbers();
        };

        function printNumbers() {

            for (var i = 1; i <= 100; i++) {

                var div = document.getElementById('numbersDiv');
                var element = i;
                if (i % 3 == 0)
                {
                    element = "Support";
                }
                if (i % 5 == 0)
                {
                    element = "Training";
                }

                if (i % 3 == 0 && i % 5 == 0)
                {
                    element = "SupportTraining";
                }

                div.innerHTML = div.innerHTML + element + "<br/>";
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="numbersDiv"></div>
    </form>
</body>
</html>
