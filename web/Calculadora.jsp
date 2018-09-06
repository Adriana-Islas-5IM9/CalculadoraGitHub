<%-- 
    Document   : Calculadora
    Created on : 2/09/2018, 09:37:51 AM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String res = request.getParameter("resul") == null ? "" : request.getParameter("resul");
    String opera = request.getParameter("operacion") == null ? "" : request.getParameter("operacion");
    String result = opera + " = " +res;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="sources/css/bootstrap-grid.min.css">
        <link rel="stylesheet" href="sources/css/bootstrap.min.css">
        <title>Calculadora</title>
    </head>
    <body>

        <div class="container">
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4">
                    <center><h1>Calculadora</h1></center>
                </div>
                <div class="col-4"></div> 
            </div>
            <br>
            <br>
            <form action="Operaciones" method="post">

                <div class="row">
                    <div class="col-4"><p>En las funciones de sin, cos, tan, ^1/3,^1/2 se toma el valor del recuadro de la derecha</p></div>
                    <div class="col-2"><input id="pant1" name="pant1" class="form-control form-control-lg"  type="number" placeholder="0.0" ></div>
                    <div class="col-2"><input id="pant2" name="pant2" class="form-control form-control-lg"  type="number" placeholder="0.0" ></div>
                    <div class="col-4"></div>
                </div><br/>
                <div class="row">
                    <div class="col-4"></div>
                    <div  class="col-1"><input onclick="oprimeBoton(this)" class="btn btn-info m-1"  type="button" value="+"></div>
                    <div class="col-1"><input onclick="oprimeBoton(this)" class="btn btn-info m-1"  type="button" value="-"></div>
                    <div class="col-1"><input onclick="oprimeBoton(this)" class="btn btn-info m-1"  type="button" value="*"></div>
                    <div class="col-1"><input onclick="oprimeBoton(this)" class="btn btn-info m-1"  type="button" value="/"></div>
                    <div class="col-4"><p name="msj" id="msj"></p></div>
                </div>
                <div class="row">
                    <div class="col-4"></div>  
                    <div class="col-1"><input onclick="oprimeBoton(this)" class="btn btn-info m-1"  type="button" value="sin"></div>
                    <div class="col-1"><input onclick="oprimeBoton(this)" class="btn btn-info m-1"  type="button" value="cos"></div>
                    <div class="col-1"><input onclick="oprimeBoton(this)" class="btn btn-info m-1"  type="button" value="tan"></div>
                    <div class="col-4"></div>
                </div>
                <div class="row">
                    <div class="col-4"></div>
                    <div class="col-1"><input onclick="oprimeBoton(this)" class="btn btn-info m-1"  type="button" value="atan"></div>
                    <div  class="col-2"><input onclick="oprimeBoton(this)" class="btn btn-info m-1"  type="button" value="acos"></div>                   
                    <div class="col-1"><input class="btn btn-dark m-1"  type="submit" value="="></div>            
                    <div class="col-4"></div>
                </div>


                <div class="row">
                    <div class="col-4"></div>
                    <%for (int i = 0; i < 10; i++) {%>
                    <div class="col-1"><input onclick="oprimeBotonNum(this)" class="btn btn-secondary m-1"  type="button" name="" value="<%=i%>"></div>
                        <%
                            if ((i + 1) % 4 == 0 && i != 0) {
                        %>
                </div>
                <div class="row"><div class="col-4"></div>
                    <%
                            }
                        }
                    %>
                </div>
                <br /><br />
                <div class="row">
                    <div class="col-4"></div>
                    <div class="col-4"><button class="form-control form-control-lg" disabled name="resul" id="resul" type="text" value="<%=result%>"><%=result%></button></div>            
                    <div class="col-4"></div>
                </div>
                <input name="opera" id="opera" hidden>  
            </form>
            <script>
                let resultado = ''
                //let pantalla = document.getElementById('pant')
                let pantalla1 = document.querySelector('#pant1')
                let pantalla2 = document.querySelector('#pant2')
                let op = document.querySelector('#opera')
                function oprimeBotonNum(e) {
                    if (pantalla1.value === '') {
                        pantalla1.value = e.value
                    } else {
                        pantalla2.value = e.value
                    }
                }
                function oprimeBoton(e) {
                    if(op.value == '' ){
                        op.value = e.value
                        msj.innerHTML = 'Ya seleccionaste una operacion'
                    }else{
                        msj.innerHTML = 'Ya estaba seleccionada una operacion'
                    }    
                }

            </script>
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"  crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" crossorigin="anonymous"></script>
    </body>
</html>
