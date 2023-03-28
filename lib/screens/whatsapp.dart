// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';



// void main() => runApp(const Whats());

// class Whats extends StatelessWidget {
//   const Whats({super.key});

//   void launWhatsapp({@required number, @required Message}) async {
//     String url = "whatsapp://send?phone=$number&text=$Message";

//     await canLaunch(url) ? launch(url) : print('No puedes abrir whatsapp');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       body: Center(
//           child: ElevatedButton(
//         onPressed: () {
//           launWhatsapp(
//               number: "9991371125",
//               Message:
//                   "Bienvenidas, esperamos que puedan sentirse seguras con nuestras profesionales");
//         },
//         child: Text('Agendar'),
//       )),
//     ));
//   }
// }