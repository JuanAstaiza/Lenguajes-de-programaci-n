
$(document).ready(function(){  
      var arrpal_O1=["La", "ancha", "tierra","se","cubre","de","verde","pasto"];
      var arrpal_11 = combinar(arrpal_O1);
      console.log(arrpal_11);
      var p1="";
      for (var i = 0; i < arrpal_11.length; i++) {
            p1+=" "+arrpal_11[i];
       }

      $("#p1").html("<b>"+p1+"</b>");


      var arrpal_02=["Una", "gran", "manzana","cayo","al","mar"];
      var arrpal_22 = combinar(arrpal_02);
      console.log(arrpal_22);
      var p2="";
      for (var i = 0; i < arrpal_22.length; i++) {
            p2+=" "+arrpal_22[i];
       }

      $("#p2").html("<b>"+p2+"</b>");



      var arrpal_03=["El","perro","salto","muy","alto"];
      var arrpal_33 = combinar(arrpal_03);
      console.log(arrpal_33);
      var p3="";
      for (var i = 0; i < arrpal_33.length; i++) {
            p3+=" "+arrpal_33[i];
       }

      $("#p3").html("<b>"+p3+"</b>");



$("#btncombinar").click(function(){
   var arrpal_O1=["La", "ancha", "tierra","se","cubre","de","verde","pasto"];
      var arrpal_11 = combinar(arrpal_O1);
      console.log(arrpal_11);
      var p1="";
      for (var i = 0; i < arrpal_11.length; i++) {
            p1+=" "+arrpal_11[i];
       }

      $("#p1").html("<b>"+p1+"</b>");


      var arrpal_02=["Una", "gran", "manzana","cayo","al","mar"];
      var arrpal_22 = combinar(arrpal_02);
      console.log(arrpal_22);
      var p2="";
      for (var i = 0; i < arrpal_22.length; i++) {
            p2+=" "+arrpal_22[i];
       }

      $("#p2").html("<b>"+p2+"</b>");



      var arrpal_03=["El","perro","salto","muy","alto"];
      var arrpal_33 = combinar(arrpal_03);
      console.log(arrpal_33);
      var p3="";
      for (var i = 0; i < arrpal_33.length; i++) {
            p3+=" "+arrpal_33[i];
       }

      $("#p3").html("<b>"+p3+"</b>");

   });

   $("#frm1").submit(function(evt){
      evt.preventDefault();
      var pi_1=$("#txtpal").val();
      var pi_2=$("#txtpal2").val();
      var pi_3=$("#txtpal3").val();
      var split_p1 = pi_1.split(' ') // (1) [ 'bearer', 'token' ]
      var split_p2 = pi_2.split(' ') // (1) [ 'bearer', 'token' ]
      var split_p3 = pi_3.split(' ') // (1) [ 'bearer', 'token' ]

      var encuentra = false;
      for(var i =0; i < arrpal_O1.length;i++){
          encuentra = false;
          for(var j =0; j < split_p1.length;j++){
               if(arrpal_O1[i] == split_p1[j]){
                   encuentra = true;
                   break;
               }
          }
          if(!encuentra){
            $("#rp1").html("los arreglos no son iguales");
             break;
          }
      }
      if(encuentra){
         $("#rp1").html("si son iguales");
      }

      var encuentra = false;
      for(var i =0; i < arrpal_02.length;i++){
          encuentra = false;
          for(var j =0; j < split_p2.length;j++){
               if(arrpal_02[i] == split_p2[j]){
                   encuentra = true;
                   break;
               }
          }
          if(!encuentra){
            $("#rp2").html("los arreglos no son iguales");
             break;
          }
      }
      if(encuentra){
         $("#rp2").html("si son iguales");
      }




      var encuentra = false;
      for(var i =0; i < arrpal_03.length;i++){
          encuentra = false;
          for(var j =0; j < split_p3.length;j++){
               if(arrpal_03[i] == split_p3[j]){
                   encuentra = true;
                   break;
               }
          }
          if(!encuentra){
            $("#rp3").html("los arreglos no son iguales");
             break;
          }
      }
      if(encuentra){
         $("#rp3").html("si son iguales");
      }


   });

      

   function combinar(array) {
      var currentIndex = array.length, temporaryValue, randomIndex;
    
      // Mientras queden elementos a mezclar...
      while (0 !== currentIndex) {
    
        // Seleccionar un elemento sin mezclar...
        randomIndex = Math.floor(Math.random() * currentIndex);
        currentIndex -= 1;
    
        // E intercambiarlo con el elemento actual
        temporaryValue = array[currentIndex];
        array[currentIndex] = array[randomIndex];
        array[randomIndex] = temporaryValue;
      }
    
      return array;
    }
   
});


/*
$(document).ready(function(){  
   //arreglos vacios, dinamicos


   $("#frm1").submit(function(evt){
         evt.preventDefault();

         var arrpal_1=["La", "ancha", "tierra","se","cubre","de","verde","pasto"];
         arrpal_1 = combinar(arrpal_1);
         console.log(arrpal_1);


         var arrpal_2=["Una", "gran", "manzana","cayo","al","mar"];
         arrpal_2 = combinar(arrpal_2);
         console.log(arrpal_2);

         var arrpal_3=["El","perro","salto","muy","alto"];
         arrpal_3 = combinar(arrpal_3);
         console.log(arrpal_3);
    //  $("#divres").html("<div class='alert alert-primary' role='alert'>Palabra Adicional</div>");
   });*/
   

 


  
  /*
   $("#p1").html("<div class='alert alert-primary' role='alert'>Palabra Adicional</div>");



   $("#frm1").submit(function(evt){
      evt.preventDefault();
      arrpal.push($("#txtpal").val());//para adisionar palabra al arreglo
      $("#divres").html("<div class='alert alert-primary' role='alert'>Palabra Adicional</div>");
   });
    
   $("#btnConsultar").click(function(){
      var i=0;
      $("#divres").append( "<h4>"+ arrpal +"</h4><ol>");
      for (i=0;i<arrpal.length;i++){
         $("#divres").append( "<li>"+ arrpal +"</li>");//recuperar elemento a partir del indice
      }
      $("#divres").append("</ol>")
   });
   $("#btnEliminar").click(function(){
      $("#modal1").modal("show");
   });
   $("#frm2").submit(function(evt){
      var pal = $("#txtbuscar").val();
      var i = arrpal.indexOf(pal);//buscar la palabra en el arreglo

      if(i<0){
         
      }
   })

});
*/
