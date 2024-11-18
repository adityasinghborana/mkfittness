import 'package:mkfitness/models/Diets.dart';
import 'package:mkfitness/models/calories.dart';

final List<Diets> dietTypes = [
  Diets(type: 'Vegetarian', imagepath: 'asset/images/diet.png'),
  Diets(type: 'Non Vegetarian', imagepath: 'asset/images/diet.png'),
];
final List<Calories> allCalories = [
  Calories(
    calorieCount: "1400",
    Type: 'Vegetarian',
    Path: 'asset/pdf/il1.pdf',
  ),
  Calories(
    calorieCount: "1600",
    Type: 'Vegetarian',
    Path: 'asset/pdf/il1.pdf',
  ),
  Calories(
    calorieCount: "1800",
    Type: 'Vegetarian',
    Path: 'asset/pdf/il1.pdf',
  ),
  Calories(
    calorieCount: "2000",
    Type: 'Vegetarian',
    Path: 'asset/pdf/il1.pdf',
  ),
  Calories(
    calorieCount: "1400",
    Type: 'Non Vegetarian',
    Path: 'asset/pdf/bl2.pdf',
  ),
  Calories(
    calorieCount: "1600",
    Type: 'Non Vegetarian',
    Path: 'asset/pdf/bl1.pdf',
  ),
  Calories(
    calorieCount: "1800",
    Type: 'Non Vegetarian',
    Path: 'asset/pdf/bl3.pdf',
  ),
  Calories(
    calorieCount: "2000",
    Type: 'Non Vegetarian',
    Path: 'asset/pdf/il1.pdf',
  ),
];
