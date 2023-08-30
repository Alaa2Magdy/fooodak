import 'package:flutter/material.dart';
import 'package:untitled/Auth.dart';
import 'package:untitled/View/Screen/burger_meals.dart';
import 'package:untitled/View/Screen/custom_text.dart';
import 'package:untitled/View/Screen/elementScreen.dart';
import 'package:untitled/View/Screen/feedBackScreen.dart';
import 'package:untitled/View/Screen/firstScreen.dart';
import 'package:untitled/View/Screen/foodCategory.dart';
import 'package:untitled/View/Screen/homeScreen.dart';
import 'package:untitled/View/Screen/onBoardingScreen.dart';
import 'package:untitled/View/Screen/pizza_meals.dart';
import 'package:untitled/View/Screen/product_card.dart';
import 'package:untitled/View/Screen/splashScreen.dart';
import 'package:untitled/View/Screen/view.dart';
import 'package:untitled/View/Screen/HomeAppBar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:untitled/View/Widgets/custom_button.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'custmtextbox.dart';
import 'srevices/provider.dart';
import 'package:untitled/srevices/database.dart';

// ...
Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        OnBoardingScreen.id: (context) => OnBoardingScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        FirstScreen.id: (context) => FirstScreen(),
        ElementScreen.id: (context) => ElementScreen(),
        FeedBackScreen.id: (context) => FeedBackScreen(),
        BurgerMeals.id: (context) => BurgerMeals(),
        AllProductsView.id: (context) => AllProductsView(),
        PizzaMeals.id: (context) => PizzaMeals(),
        HomeAppBar.id: (context) => HomeAppBar(),
        FoodCategory.id: (context) => FoodCategory(),
        Auth.id: (context) => Auth(),
      },
    );
  }
}
