import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:powerfullmind/screens/settings_screen.dart';

class PERFIL extends StatelessWidget {
  const PERFIL({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PERFIL",
      home: EditProfilePage(),
    );
  }
}

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(151, 83, 214, 1),
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
             color: Color.fromRGBO(151, 83, 214, 1),
            ),
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ()));
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Text(
                "Editar perfil",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://www.abogadasmx.org.mx/wp-content/uploads/2020/07/unnamed-702x526.jpg"))),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          color: Colors.deepPurpleAccent,
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              buildTextField("Nombres", "", false),
              buildTextField("Apellidos", "", false),
              buildTextField("e-mail", "", false),
              buildTextField("Contraseña", " ", true),
              SizedBox(
                height: 35,
              ),
              Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
         primary: Color.fromRGBO(151, 83, 214, 1),
        padding: EdgeInsets.symmetric(horizontal: 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        textStyle: TextStyle(
          fontSize: 20,
          letterSpacing: 2.2,
          color: Colors.white,
        ),
      ),
      child: Text("Cancelar"),
    ),
    SizedBox(width: 10),
    ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
         primary: Color.fromRGBO(151, 83, 214, 1),
        padding: EdgeInsets.symmetric(horizontal: 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        textStyle: TextStyle(
          fontSize: 20,
          letterSpacing: 2.0,
          color: Colors.white,
        ),
      ),
      child: Text("Guardar"),
    ),
  ],
)

            ],
          ),
        ),
      ),
    );
  }

  // este es el metodo para el perfil de usario donde se ve reflejado el nombre y sus componentes
  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText:  placeholder,
            hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ),
    );
  }
}