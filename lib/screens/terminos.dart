import 'dart:ui';
import 'package:flutter/material.dart'; 

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("", 
        style: TextStyle(fontSize: 26, fontWeight: 
        FontWeight.bold),),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Terminos y condiciones", 
        style: TextStyle(fontSize: 26, fontWeight: 
        FontWeight.bold),),
         SizedBox(height: 15,),
            Text("Para usar esta aplicacion es necesario que aceptes los terminos y condiciones ",
             style: TextStyle(fontSize: 16), textAlign: TextAlign.justify,),
             SizedBox(height: 15,),
           Text("Para usar esta aplicacion es necesario que aceptes los terminos y condiciones ",
             style: TextStyle(fontSize: 16), textAlign: TextAlign.justify,),
             SizedBox(height: 15,),
             Text("Para usar esta aplicacion es necesario que aceptes los terminos y condiciones ",
             style: TextStyle(fontSize: 16), textAlign: TextAlign.justify,),
             SizedBox(height: 15,),
             Text("Para usar esta aplicacion es necesario que aceptes los terminos y condiciones ",
             style: TextStyle(fontSize: 16), textAlign: TextAlign.justify,),
             SizedBox(height: 15,),
             Text("Para usar esta aplicacion es necesario que aceptes los terminos y condiciones ",
             style: TextStyle(fontSize: 16), textAlign: TextAlign.justify,),
             SizedBox(height: 15,),
             Text("Para usar esta aplicacion es necesario que aceptes los terminos y condiciones ",
             style: TextStyle(fontSize: 16), textAlign: TextAlign.justify,),
             SizedBox(height: 15,),
             TextButton(
                onPressed: (){
                },
                child: Text(
                  "Aceptar",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color:Colors.black87,

                  ),
                ),
                )
          ],
          ),
      ),
    );
  }
}