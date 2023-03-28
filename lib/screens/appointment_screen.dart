import 'package:flutter/material.dart';
import 'package:powerfullmind/screens/whatsapp.dart';



class AppointmentScreen  extends StatelessWidget{
  List imgs = [
    "psicologa1.jpg",
    "psicologa2.jpg",
    "psicologa3.jpg",
    "psicologa4.jpg",
    "psicologa5.jpg",
    "psicologa6.jpg",
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(151, 83, 214, 1),
      body: SingleChildScrollView(child: Column(children: [
        SizedBox(height: 50),
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 25,
                          ),
                        ),
                                InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
            ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        CircleAvatar(radius: 35,
                        backgroundImage: AssetImage("images/psicologa1.jpg"),
                        ),
                        SizedBox(height: 15),
                        Text("Psic.Nombre de Psicologa",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),),
                        SizedBox(height: 5),
                        Text("Psicologa",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height/ 1.5,
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 20,
                left: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Acerca de la Psicologa",
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  ),
                  ),
                  SizedBox(height: 5),
                  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged",
                  style: TextStyle(fontSize: 16,
                  color: Colors.black54,
                  ),
                  ),
                  SizedBox(height: 20),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Especialidad:",
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  ),
                  ),
                  SizedBox(height: 5),
                  Text("",
                  style: TextStyle(fontSize: 16,
                  color: Colors.black54,
                  ),
                  ),
                  SizedBox(height: 20),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Cedula:",
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  ),
                  ),
                  SizedBox(height: 5),
                  Text("21090786",
                  style: TextStyle(fontSize: 16,
                  color: Colors.black54,
                  ),
                  ),
                  SizedBox(height: 20),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Reseñas:",
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  ),
                  ),
                  SizedBox(height: 10),
                      SizedBox(width: 10  ),
                      Icon(Icons.star, color: Colors.amber),
                      Text("4.9",
                      style: TextStyle(),
                      ),
  
                    ]
              )
                  ),
                  SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color.fromRGBO(151, 83, 214, 1),
                  borderRadius: BorderRadius.circular(30),
                  child: InkWell(
                  onTap: (){
                    // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Whats()));
                     
                  },
                  child: Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 80),
                  child: Text("Agendar", 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                  ),
                  ),
                ),
              ],
            ) 
                ],
              ),
            ),

          ],
        )
      ),
      ]
      )
      )
      ]
      )
      )
    );
  
  }
}