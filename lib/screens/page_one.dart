import 'package:flutter/material.dart';
import 'package:powerfullmind/screens/page_two.dart';


class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/foto1.png"),
                Text(
                  'Powerfulmind',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Cada día es una nueva oportunidad para ser una versión mejor de ti misma!!.',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            // Image.asset("images/foto1.png"),
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
                    builder: (context) => PageTwo(),
                    ));
                      },
                      child: Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Center(
                        child: Text("Continuar", 
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
          ]
          ),
                  
                ),
            ),
            
        );
      
    
  }
}
