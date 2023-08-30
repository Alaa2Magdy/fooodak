import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';
import 'package:untitled/View/Screen/firstScreen.dart';
import 'package:untitled/View/Screen/foodCategory.dart';
import '../../custmtextbox.dart';
import 'package:untitled/View/Widgets/custom_button.dart';
import "package:untitled/srevices/provider.dart";
import 'package:untitled/srevices/shared_preferences.dart';
import 'package:untitled/srevices/auth_firebase.dart';
import 'package:untitled/View/Widgets/custom_snackBar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/srevices/database.dart';
import 'package:untitled/View/Screen/onBoardingScreen.dart';
import 'package:untitled/Auth.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _email = TextEditingController();

  TextEditingController _password = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _email.text.trim(), password: _password.text.trim());
    Navigator.of(context).pushNamed('Auth');
  }

  void openHomeScreen() {
    Navigator.of(context).pushReplacementNamed('HomeScreen');
  }

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromRGBO(224, 181, 181, 0.9647058823529412),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 450),
              child: Container(
                width: 900,
                height: 900,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(224, 181, 181, 0.9647058823529412),
                    image: DecorationImage(
                        image: AssetImage(
                          "images/3.png",
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(1000),
                      bottomRight: Radius.circular(1000),
                    )),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
        ),
        Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(top: 300, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextField(
                  controller: _email,
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Required"),
                    EmailValidator(
                        errorText: "Please enter a valid email address"),
                  ]),
                  icon: Icons.email,
                  labelText: 'Email',
                ),
                CustomTextField(
                  controller: _password,
                  validator: RequiredValidator(errorText: "Required"),
                  icon: Icons.lock,
                  labelText: 'Password',
                  prefix: Icons.remove_red_eye_outlined,
                  obscure: true,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 650, left: 20),
          child: InkWell(
            onTap: signIn,
            child: Container(
              width: 120,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                border: Border.all(color: Color.fromRGBO(139, 1, 1, 1)),
                borderRadius: BorderRadius.circular(30),
              ),
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: signIn,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      "Next",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(0, 0, 255, 1),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 100, top: 660),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_right_alt,
              size: 30,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 50, left: 180, top: 550),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.facebook_rounded,
              size: 40,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 50, left: 270, top: 550),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.email_rounded,
              color: Color.fromRGBO(47, 46, 218, 1.0),
              size: 40,
            ),
          ),
        ),
      ]),
    );
  }
}
