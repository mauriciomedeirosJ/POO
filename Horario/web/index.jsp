<%-- 
    Document   : home
    Created on : 21 de set de 2020, 21:13:56
    Author     : Maurício
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.edu.fatecpg.poo.Contato"%>
<%@page import="java.time.LocalDateTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.edu.fatecpg.poo.Horario"%>
<%

    LocalDateTime horario = LocalDateTime.now();;
    Horario horarioInter = new Horario(50, 50, 20);
    Exception requestException = null;
    ArrayList<Contato> userList = (ArrayList) application.getAttribute("userList");
    if (userList == null) {
        userList = new ArrayList();
        userList.add(new Contato("Administrador", "admin@domain.com", "1234"));
        userList.add(new Contato("Fulano", "fulano@domain.com", "1234"));
        userList.add(new Contato("Beltrano", "beltrano@domain.com", "1234"));
        userList.add(new Contato("Cicrano", "cicrano@domain.com", "1234"));
        application.setAttribute("userList", userList);
    }
    if (request.getParameter("add") != null) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        userList.add(new Contato(name, email, password));
        response.sendRedirect(request.getRequestURI());
    }
    if (request.getParameter("remove") != null) {
        int i = Integer.parseInt(request.getParameter("i"));
        userList.remove(i);
        response.sendRedirect(request.getRequestURI());
    }


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Maurício POO</title>
    </head>
    <body>
        <div>
            <h1>Exercicio Inicial</h1>
            <p>Horario: </p><%=horario%>
            <br>
            <p>Horario intervalo:</p>
            <%= horarioInter.getHorario()%>
            <br>
            <br>
        </div>
        <div style="position:relative;
             border-width:2px;
             width:500px;
             height: 400px;
             background-color: peachpuff;
             float: left;">
            <h1>Exercicio Final</h1>
            <form method="post">
                Nome: <input type="text" name="name"/>
                Email: <input type="email" name="email"/>
                Telefone: <input type="text" name="password"/>
                <input type="submit" name="add" value="Adicionar"/>
            </form>


        </div>
        <div style="position: relative;
             border-width:2px;
             width: 500px;
             height: 400px;
             left:0px;
             background-color: red;
             float: left;">



            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Email</th>
                        <th scope="col">Telefone</th>
                    </tr>
                </thead>
                <tbody>
                    <%

                        for (int i = 0; i < userList.size(); i++) {
                    %>
                    <tr>
                        <th scope="row"><%= i + 1%></th>
                        <td><%=userList.get(i).getNome()%></td>
                        <td><%=userList.get(i).getEmail()%></td>
                        <td><%=userList.get(i).getTelefone()%></td>
                        <td><form>
                                <input type="submit" name="remove" value="Remover"/>
                                <input type="hidden" name="i" value="<%=i%>"/>
                            </form></td>
                    </tr>

                    <%}%>


                </tbody>
            </table>
        </div>
    </body>

</html>
