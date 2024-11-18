import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mkfitness/Widgets/card.dart';
import 'package:mkfitness/helper/functions.dart';
import 'package:mkfitness/pages/Diets.dart';
import 'package:mkfitness/pages/Workouts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.orange,
          // Accent color
          onPrimary: Colors.white,
          // Text color on primary
          secondary: Colors.grey,
          // For body text or accents
          onSecondary: Colors.white,
          // Text color on secondary
          surface: Colors.orange,
          // Charcoal for surfaces like cards
          onSurface: Colors.white,
          // Text color on surfaces
          error: Colors.red,
          onError: Colors.white,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white, // Scaffold background color
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Image.asset(
              'asset/images/logo.png',
              height: 200,
              width: 500,
              scale: 0.5,
            ),
            SizedBox(
              height: 70,
            ),
            HomePageCards(
              onPressed: ()  {
                 route.goTo(context, Workouts());
              },
              imagePath: "asset/images/workouts.png",
              title: "Workouts",
              imageHeight: 300,
              imageWidth: 300,
              fontSize: 72,
              cardColor: Colors.blue,
              subtitle: "get your workout plans from here ",
              subtitlefontsize: 18,
            ),
            HomePageCards(
              onPressed: ()  {
                route.goTo(context, Diets());
              },
              subtitle: " get your free diet  ",
              imagePath: "asset/images/diet.png",
              title: "Diet Plans ",
              imageHeight: 300,
              imageWidth: 390,
              fontSize: 72,
              cardColor: Colors.green,
              subtitlefontsize: 18,
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.facebookF),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "M.k.fitness club ",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.instagram),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "@m.k.fitnessclub ",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
