import 'package:flutter/material.dart';
import 'package:untitled/View/Screen/HomeAppBar.dart';
import 'package:untitled/View/Screen/burger_meals.dart';
import 'package:untitled/View/Screen/feedBackScreen.dart';
import 'package:untitled/View/Screen/pizza_meals.dart';
import 'package:untitled/View/Widgets/Alert.dart';

import '../../srevices/count_provider.dart';
import '../Widgets/counter_button.dart';

String price = "0";
double totalPrice = 0;
var count = 0;
var counter = 0;

class ElementScreen extends StatefulWidget {
  const ElementScreen({Key? key}) : super(key: key);
  static String id = "ElementScreen";
  static int n = 0;
  @override
  State<ElementScreen> createState() => _ElementScreenState();
}

class _ElementScreenState extends State<ElementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color.fromRGBO(224, 181, 181, 0.9647058823529412),
            alignment: Alignment.topLeft,
            child: Container(
              width: 500,
              height: 500,
              transformAlignment: Alignment.topRight,
              transform: Matrix4.rotationZ(2.6 / 4),
              decoration: BoxDecoration(
                color: Color.fromRGBO(224, 182, 182, 0.9568627450980393),
                image: DecorationImage(
                    image: AssetImage(
                      "images/4.png",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 340, left: 50),
            child: Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.orange.withAlpha(180),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.only(top: 7, left: 4),
                child: Text("classic pasta",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 347, left: 320),
            child: Container(
              width: 150,
              height: 30,
              color: Colors.white.withAlpha(0),
              child: Text("60 LE",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 430, left: 180, right: 50),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () => setState(() {
                          counter == 0 ? print('counter at 0') : counter--;
                        }),
                    child: Icon(Icons.remove, size: 80, color: Colors.orange)),
                Text(
                  '${counter}',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        print('set');
                        counter++;
                      });
                    },
                    child: Icon(
                      Icons.add,
                      size: 80,
                      color: Colors.orange,
                    )),
                ItemCountButton(
                    icon: Icons.indeterminate_check_box,
                    function: () {
                      setState(() {
                        reset();
                        remove();
                        totalPrice -= double.parse(price);
                      });
                    }),
                /*Text(
                  count.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),*/
                ItemCountButton(
                    icon: Icons.add_box,
                    function: () {
                      setState(() {
                        reset();
                        add();

                        totalPrice += double.parse(price);
                      });
                    }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 550, left: 80),
            child: Container(
              width: 300,
              height: 60,
              color: Colors.white.withAlpha(0),
              child: Text("so yummy",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black.withAlpha(100),
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 536, left: 150),
            child: Container(
                width: 300,
                height: 60,
                color: Colors.white.withAlpha(0),
                child: Icon(
                  Icons.tag_faces_sharp,
                  size: 30,
                  color: Colors.black.withAlpha(100),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640, left: 150),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, HomeAppBar.id);
              },
              child: Container(
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(236, 6, 6, 1.0),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 7, left: 4),
                  child: Text("Add",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
