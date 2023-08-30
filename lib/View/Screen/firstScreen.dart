import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:untitled/View/Screen/elementScreen.dart';
import 'foodCategory.dart';

class FirstScreen extends StatelessWidget {
  static String id = "FirstScreen";

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
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Container(
                width: 30,
                height: 30,
                decoration: (BoxDecoration(
                    color: Color.fromRGBO(245, 151, 151, 1.0),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5))),
                child: Icon(Icons.menu_rounded),
              ),
            ),
          ),
          Container(
            width: 30,
            height: 30,
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 400),
              child: Container(
                decoration: (BoxDecoration(
                    color: Color.fromRGBO(224, 181, 181, 0.9568627450980393),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5))),
                child: Icon(
                  Icons.shopping_cart,
                  size: 35,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70, left: 40),
            child: Container(
              width: 300,
              height: 40,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white)),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 14, left: 5),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: " Search Your Favourite Food...",
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                    prefix: Icon(
                      Icons.search_rounded,
                      color: Colors.black,
                      size: 15,
                    ),
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 71, left: 401),
            child: Container(
              width: 40,
              height: 40,
              decoration: (BoxDecoration(
                  color: Color.fromRGBO(211, 14, 14, 0.9568627450980393),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10))),
              child: Icon(
                Icons.read_more,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
          Stack(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(top: 180, left: 10),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100, right: 100),
                      child: Icon(
                        Icons.favorite,
                        size: 15,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 180, left: 180),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100, right: 100),
                    child: Icon(
                      Icons.favorite,
                      size: 15,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 180, left: 350),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100, right: 100),
                    child: Icon(
                      Icons.favorite,
                      size: 15,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 380, left: 10),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100, right: 100),
                    child: Icon(
                      Icons.favorite,
                      size: 15,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 380, left: 180),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100, right: 100),
                    child: Icon(
                      Icons.favorite,
                      size: 15,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 380, left: 350),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100, right: 100),
                    child: Icon(
                      Icons.favorite,
                      size: 15,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 600, left: 10),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100, right: 100),
                    child: Icon(
                      Icons.favorite,
                      size: 15,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 600, left: 180),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100, right: 100),
                    child: Icon(
                      Icons.favorite,
                      size: 15,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 600, left: 350),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100, right: 100),
                    child: Icon(
                      Icons.favorite,
                      size: 15,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150, left: 35),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ElementScreen.id);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset("images/4.png", fit: BoxFit.fill),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150, left: 200),
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.0),
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: Image.asset("images/5.png", fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150, left: 370),
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.0),
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: Image.asset("images/6.png", fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 350, left: 30),
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.0),
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: Image.asset("images/7.png", fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 350, left: 200),
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.0),
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: Image.asset("images/8.png", fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 350, left: 370),
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.0),
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: Image.asset("images/9.png", fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 550, left: 35),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.red)),
                  child: Image.asset("images/10.png", fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 550, left: 205),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.0),
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: Image.asset("images/11.png", fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 520, left: 360),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.0),
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: Image.asset("images/12.png", fit: BoxFit.fill),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 260, left: 30),
                  child: Text("classic pasta",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 300, left: 100),
                  child: Text("60 LE",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 260, left: 200),
                  child: Text("fettuccine pasta &\n chicken grill",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 300, left: 280),
                  child: Text("80 LE",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 260, left: 360),
                  child: Text("spaghetti & meatballs",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 300, left: 450),
                  child: Text("90 LE",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 460, left: 30),
                  child: Text("penne pasta",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 500, left: 100),
                  child: Text("60 LE",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 460, left: 200),
                  child: Text("carbonara pasta",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 500, left: 280),
                  child: Text("65 LE",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 460, left: 360),
                  child: Text("vegetarian farfalle",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 500, left: 450),
                  child: Text("65 LE",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 660, left: 30),
                  child: Text("seafood pasta",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 700, left: 100),
                  child: Text("100 LE",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 660, left: 200),
                  child: Text("pasta salad",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 700, left: 280),
                  child: Text("75 LE",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 650, left: 360),
                  child: Text("chinese noodles",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 700, left: 450),
                  child: Text("70 LE",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.normal)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
