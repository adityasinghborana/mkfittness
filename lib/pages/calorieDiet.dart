import 'package:flutter/material.dart';
import 'package:mkfitness/pages/pdfscreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../helper/functions.dart';
import '../localdata/diettypes.dart';
import '../models/calories.dart';

class CaloriesPage extends StatelessWidget {
  final String calorie;

  CaloriesPage({super.key, required this.calorie});

  @override
  Widget build(BuildContext context) {
    // Filtered list based on the selected calorie type
    final List<Calories> finalList =
        allCalories.where((e) => e.Type == calorie).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("$calorie Diet"),
      ),
      body: ListView.builder(
        itemCount: finalList.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              route.goTo(
                  context, PDFScreen(pdfFilePath: finalList[index].Path));
            },
            child: Card(
              color: Theme.of(context).colorScheme.primary,
              child: Container(

                child: Padding(
                  padding: const EdgeInsets.all(26.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${finalList[index].calorieCount} Calories",style: TextStyle(fontSize: 48),),
                          Text("${finalList[index].Type} ",style: TextStyle(fontSize: 28),),
                        ],
                      ),

                    Icon(
                      FontAwesomeIcons.circleArrowRight,
                      color: Colors.white,
                      size: 42,
                    ),
                    ],
                  ),
                ),
              ), // Display each calorie item's name or other properties
            ),
          );
        },
      ),
    );
  }
}
