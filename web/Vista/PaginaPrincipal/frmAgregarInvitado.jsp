<%-- 
    Document   : frmAgregarInvitado
    Created on : 22/09/2019, 07:16:36 PM
    Author     : Kevin Cutiva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registrar Invitados</title>
        <%@ include file="../PaginaPrincipal/Rutas-Head.jsp" %> 
        
    </head>
    <body>
        
    <header class="headerAgrInvitado">
        <div class="menu-toggle" id="hamburger" onclick="mostrar()">
            <i class="fas fa-bars"></i>
        </div>
        <div class="overlay"></div>
        <div class="container">
            <nav>
                <h1 class="brand"><a href="../PaginaPrincipal/MenuPrincipal.jsp">Eve<span>S</span>en</a></h1>
                <ul>
                    <li><a href="../PaginaPrincipal/MenuPrincipal.jsp">Regresar</a></li>
                </ul>
            </nav>
        </div>
    </header>
        <form class="Tabla4" id="frmRegistrarPersona" method="POST">
             <input type="hidden" name="accion" id="accion" value="Agregar">
              <input type="hidden"name="" id="" value="">
        <h2 class="Ini2">Registro Invitado</h2>
            <input type="number" id="txtIdentificacion" placeholder="&#127380; Identificacion" name="identificacion">
            <input type="text" id="txtNombre" placeholder="👤 Nombre" name="nombre" >
            <input type="text" id="txtApellido" placeholder="👥 Apellido" name="apellido">
            <input type="text" id="txtCorreo" placeholder="&#128386; Correo Electronico" name="usuario">
            <input type="tel" onkeyup="return ValidarSoloNumeros(event)" id="txtCelular" placeholder="📲 Celular" name="celular" pattern="^[3]\d{9}$">
            <input type="text" id="txtEmpresa" placeholder="&#127963; Empresa" name="Empresa" >
            
            <select id="cbsexo">
                <option>seleccionar</option>
                <option>Mujer</option>
                <option>Hombre</option>
            </select>
           
            <input class="boton1" type="submit" value="Registrar" id="btnRegistrarInvitado">
           
            <div id="mensaje" style="text-align: center">
               ${mensaje}
            </div>
        </form>
        <footer>
               <%@ include file="../PaginaPrincipal/footer.jsp" %> 
        </footer>   
    </body>
</html>
