import 'package:flutter/material.dart';
import 'package:powerfullmind/screens/home_screen.dart';
import 'package:powerfullmind/widgets/navbar_roots.dart';


class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/PageDos.jpg"),
                Text(
                  'Powerfulmind',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Tú eres la única persona que puede limitarte a ti misma. No te rindas antes de empezar!!.',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            // Image.asset("images/foto2.png"),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: double.infinity,
                child: Material(
                      color: Color.fromRGBO(151, 83, 214, 1),
                      borderRadius: BorderRadius.circular(30),
                      child: InkWell(
                      onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                    builder: (context) => NavBarRoots(),
                    ));
                      },
                      child: Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Center(
                        child: Text("Iniciar", 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                      ),
                      ),
                    ),
              ),
            ),
              ],
            )
        ),
      ));
  }
}
