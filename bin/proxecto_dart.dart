import 'dart:io';

import 'package:proxecto_dart/proxecto_dart.dart' as proxecto_dart;


cargarDatosExemplo(){

}

bool comprobarOpcion(texto){

String? texto;
int? opcion;
bool opcionApta = false;

  if (texto == null){
    opcionApta = false;
    return opcionApta;
  } else {
    opcion = int.tryParse(texto.trim());
    if(opcion != null){
      if( opcion > 5 || opcion < 0){
        opcionApta == false;
      } else {
        opcionApta == true;
      }
    }
    
  }
}



mostrarMenu(){
String? texto;
int? opcion;
bool opcionApta = false;

  do{

  
   print("\nMENÚ:\n"
  "1. Engadir videoxogos\n"
  "2. Modificar videoxogo\n"
  "3. Eliminar videoxogo\n"
  "4. Listar videoxogos\n"
  "5. Buscar videoxogos\n"
  "0. Saír\n");

  
  
  stdout.write("Escolle unha opción: \n");
  texto = stdin.readLineSync();
  
  comprobarOpcion(texto);
  

  }while(!opcionApta);

  }


  











void main(List<String> arguments) {
int opcion;

// cargarDatosExemplo();
do{
  opcion = mostrarMenu();


  switch (opcion){
    case 1:
      engadirVideoxogos();
    break;
    case 2:
      modificarVideoxogo();
    break;
    case 3:
      eliminarVideoxogo();
    break;
    case 4:
      listarVideoxogos();
    break;
    case 5:
      buscarVideoxogo();
    break;
    default:
      print("Ha salido del programa.");
    break;


} while (opcion != 0);





}
