$(function(){
   $("#btnRegistrar").click(function (event){
          event.preventDefault();
         
          agregarEvento();
    });
    
   
});

    function agregarEvento(){
         alert("yes");
        $("#mensaje").html("");
        $.ajax({
            url:'../../ControllerEvento',
            data:$("#frmRegistrarEvento").serialize(),
            dataType:'json',
            type: 'POST',
            processData: false,
            cache:false,
            success: function (resultado) {
                console.log(resultado);
                if (resultado){
                    $("#mensaje").html("Evento agregado correctamente");
                    limpiar();
                }else{
                    $("#mensaje").html("problemas al agregar el Evento");
                }
                $("#mensaje").show();
                
            },
            error:function (ex){
                console.log(ex.responseText);
            }
        });
    
    }
    
    function limpiar(){
       $("#txtNombreEvento").val("");
       $("#txtFecha").val("");
       $("#txtLugar").val("");
       $("#txtDesCripcion").val("");
      
       
    }
 

 

