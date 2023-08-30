import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:untitled/Auth.dart';
import '../../custmtextbox.dart';
import 'foodCategory.dart';
import 'homeScreen.dart';

class OnBoardingScreen extends StatefulWidget {
  static String id = "onBoarding";

  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  TextEditingController _userName = TextEditingController();

  TextEditingController _address = TextEditingController();

  TextEditingController _phone = TextEditingController();

  TextEditingController _email = TextEditingController();

  TextEditingController _password = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Future signUp() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _email.text.trim(), password: _password.text.trim());
    Navigator.of(context).pushNamed('Auth');
  }

  void openOnBordingScreen() {
    Navigator.of(context).pushReplacementNamed('OnBoardingScreen');
  }

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
    _userName.dispose();
    _address.dispose();
    _phone.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color.fromARGB(244, 224, 182, 182),
          child: const Padding(
              padding: EdgeInsets.only(left: 30, top: 10),
              child: SizedBox(
                width: 30,
                child: Text(
                  "sign up : ...",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Color.fromRGBO(115, 1, 1, 10),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextField(
                  controller: _userName,
                  validator: MultiValidator(
                      [RequiredValidator(errorText: "Required")]),
                  icon: Icons.person,
                  labelText: 'Username',
                ),
                CustomTextField(
                  controller: _address,
                  validator: RequiredValidator(errorText: "Required"),
                  icon: Icons.home,
                  labelText: 'Address',
                ),
                CustomTextField(
                  controller: _phone,
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Required"),
                    MinLengthValidator(11,
                        errorText: "enter a valid mobile number"),
                    MaxLengthValidator(11,
                        errorText: "enter a valid mobile number"),
                  ]),
                  icon: Icons.phone,
                  labelText: 'Mobile number',
                ),
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
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Required"),
                    MinLengthValidator(6,
                        errorText:
                            "Password must contain at least 6 characters"),
                    MaxLengthValidator(15,
                        errorText: "Password cannot be more 15 characters"),
                    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
                        errorText:
                            "Password must have at least one special character"),
                  ]),
                  icon: Icons.lock,
                  labelText: 'Password',
                  obscure: true,
                  prefix: Icons.remove_red_eye_outlined,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 565, left: 130),
          child: Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(224, 182, 182, 1),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(30),
            ),
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
              borderRadius: BorderRadius.circular(30),
              child: Container(
                alignment: Alignment.center,
                child: const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "You have an account ? login",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black87,
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
          padding: const EdgeInsets.only(top: 650, left: 20),
          child: InkWell(
            onTap: signUp,
            child: Container(
              width: 120,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                border: Border.all(color: const Color.fromRGBO(139, 1, 1, 1)),
                borderRadius: BorderRadius.circular(30),
              ),
              child: InkWell(
                onTap: signUp,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 25),
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
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.arrow_right_alt,
              size: 30,
            ),
          ),
        )
      ]),
    );
  }
}
