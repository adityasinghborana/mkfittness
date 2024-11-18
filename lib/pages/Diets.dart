import 'package:flutter/material.dart';
import 'package:mkfitness/helper/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mkfitness/helper/functions.dart';
import 'package:mkfitness/localdata/diettypes.dart';
import 'package:mkfitness/pages/calorieDiet.dart';

class Diets extends StatelessWidget {
  const Diets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Diets"),
      ),
      body: ListView.builder(
          itemCount: dietTypes.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: ()=>route.goTo(context,CaloriesPage(calorie: dietTypes[index].type)),
              child: Card(
                child:ListTile(
                  trailing: IconButton(
                      onPressed: null,
                      icon: Icon(
                        FontAwesomeIcons.circleArrowRight,
                        color: Colors.white,
                      )),
                  leading: CircleAvatar(
                    radius: 50,  // Adjust this value to change the CircleAvatar size
                    backgroundImage: AssetImage(dietTypes[index].imagepath),
                  ),
                  title: Text(
                    dietTypes[index].type,
                    style: TextStyle(fontSize: 48), // Adjust as needed
                  ),
                )
              
              ),
            );
          }),
    );
  }
}
