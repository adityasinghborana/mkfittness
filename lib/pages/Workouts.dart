import 'dart:io';

import 'package:flutter/material.dart';

import 'package:mkfitness/Widgets/WorkoutWidget.dart';
import 'package:mkfitness/localdata/workouts.dart';


class Workouts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Workouts"),
        ),
        body: ListView.builder(

          itemBuilder: (BuildContext context, int Index) {

            return WorkoutWidget(pdfFilePath: allWorkouts[Index].PdfFilePath, Title: allWorkouts[Index].Title, SubTitle: allWorkouts[Index].SubTitle,popup: allWorkouts[Index].popup, imagepath: allWorkouts[Index].ImagePath);
          },
          itemCount: allWorkouts.length,
        ));
  }
}
