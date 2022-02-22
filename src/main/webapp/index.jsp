<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Edytor tekstu</title>
    <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    <link rel="stylesheet" href="main.css" type="text/css">
   
   <script>
        tinymce.init({
          selector: '#mytextarea'
        });
      </script>

</head>
<body>
<%
    String content = (String) request.getServletContext().getAttribute("content");
%>

    <main>
        <h1>Edytor tekstu</h1>
        <p>Edytor ten oparty jest na mechanizmie zapisu w atrybutach kontekstu aplikacji, 
            przez co treść dostępna jest dla wszystkich korzystających z tej aplikacji webowej. </p>
        <h2>Twórz wspólny dokument z innymi. Dodaj coś od siebie!</h2>
       
        <form method="post" action="save">
            <label for="mytextarea"></label>
            <textarea id="mytextarea" name="content">
                <%
                    if(content == null) {
                %>
                Hello Misiaku!
                <%
                    } else {
                %>
                <%=content%>
                <%
                    }
                %>

            </textarea>
        <div>
            <input class="button" type="submit" value="Zapisz zmiany">
        </div>
        </form>
    </main>
</body>
</html>