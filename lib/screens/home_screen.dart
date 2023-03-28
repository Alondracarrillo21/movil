import 'package:flutter/material.dart';
import 'package:powerfullmind/screens/appointment_screen.dart';
import 'package:powerfullmind/screens/page_two.dart';

class HomeScreen extends StatelessWidget{
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
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                Text(
                  "Hola de nuevo",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("images/LOGO.png"),
                )
              ],
            ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // InkWell(
                //   onTap: (){},
                //   child: Container(
                //     padding: EdgeInsets.all(20),
                //     decoration: BoxDecoration(
                //       color: Color(0xFF7165D6),
                //       borderRadius: BorderRadius.circular(10),
                //       boxShadow: [
                //         BoxShadow(
                //         color: Colors.black12,
                //         blurRadius: 6,
                //         spreadRadius: 4,
                //         ),
                //       ],
                //     ),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Container(
                //           padding: EdgeInsets.all(8),
                //           decoration: BoxDecoration(
                //             color: Colors.white,
                //             shape: BoxShape.circle,
                //           ),
                //           child: Icon(
                //             Icons.add,
                //             color: Color(0xFF7165D6),
                //             size: 35,
                //           ),
                //         ),
                //         SizedBox(height: 30),
                //         Text(
                //             "Agendar Cita",
                //             style: TextStyle(
                //               fontSize: 18,
                //               color: Colors.white,
                //               fontWeight: FontWeight.w500,
                //             ),
                //         ),
                //         // SizedBox(height: 5),
                //         // Text("Agendar Cita",
                //         // style: TextStyle(
                //         //   color: Colors.black54,
                //         // )
                //         // ),
                //       ],
                //     ),
                //   ),
                // ),
                // InkWell(
                //   onTap: (){},
                //   child: Container(
                //     padding: EdgeInsets.all(20),
                //     decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(10),
                //       boxShadow: [
                //         BoxShadow(
                //         color: Colors.black12,
                //         blurRadius: 6,
                //         spreadRadius: 4,
                //         ),
                //       ],
                //     ),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Container(
                //           padding: EdgeInsets.all(8),
                //           decoration: BoxDecoration(
                //             color: Color(0xFFF0EEFA),
                //             shape: BoxShape.circle,
                //           ),
                //           child: Icon(
                //             Icons.home_filled,
                //             color: Color(0xFF7165D6),
                //             size: 35,
                //           ),
                //         ),
                //         SizedBox(height: 30),
                //         Text(
                //             "Visitar Inicio",
                //             style: TextStyle(
                //               fontSize: 18,
                //               // color: Colors.black,
                //               fontWeight: FontWeight.w500,
                //             ),
                //         ),
                //         SizedBox(height: 5),
                //         Text("Llamar Psicologo",
                //         style: TextStyle(
                //           color: Colors.black54,
                //         )
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text("Psicologos Con Mejor Reseña",
            style: TextStyle(fontSize: 23,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
            ),
          ),
        ),
        ListView.builder(
          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisCount: 2,
          // ),
          itemCount: 6,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: ((context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute (builder: (context)=> AppointmentScreen(),
              ));
              } ,
            child: Container(
              margin:  EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("images/${imgs[index]}"),
                  ),
                  Text(
                    "Psic. Nombre de Psicologa",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Icon(
                      Icons.star, color:
                       Colors.amber,
                      ),
                      Text(
                        "4.9",
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            );
          }),
        ),
        ],
      ),
    );
  }
}