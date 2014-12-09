<%@ page language="java" contentType="text/xml; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	String respuesta = "";
	boolean existe = false;
	
	String nombre = request.getParameter("nombre");
		
	if(nombre.equals("maria")){
		existe = true;	
	}
	
	respuesta = "<respuesta>";
	
	if(existe == true){
		respuesta = respuesta + "<tipo>1</tipo>";
		respuesta = respuesta + "<mensaje>Existe</mensaje>";	
	}
	else{
		respuesta = respuesta + "<tipo>0</tipo>";
		respuesta = respuesta + "<mensaje>NO Existe</mensaje>";		
	}
	
	respuesta = respuesta + "</respuesta>";
	
	out.println(respuesta);
%>
