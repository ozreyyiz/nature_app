import 'package:flutter/material.dart';
import 'package:wally_app/screens/animal_screen.dart';
import 'package:wally_app/screens/building_screen.dart';
import 'package:wally_app/screens/car_screen.dart';
import 'package:wally_app/screens/city_screen.dart';
import 'package:wally_app/screens/nature_screen.dart';

import 'package:wally_app/screens/sea_screen.dart';
import 'package:wally_app/screens/weather_screen.dart';

class Category {
  final String title;
  final String image;
  final Widget page;

  Category( {required this.page,required this.title, required this.image});
}

List<Category> categories = <Category>[
  Category(title: "Animal", image: "https://images.pexels.com/photos/792381/pexels-photo-792381.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",page: AnimalScreen()),
  Category(title: "City", image: "https://images.pexels.com/photos/374870/pexels-photo-374870.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",page: CityScreen()),
  Category(title: "Car", image: "https://images.pexels.com/photos/305070/pexels-photo-305070.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",page: CarScreen()),
  Category(title: "Nature", image: "https://images.pexels.com/photos/2559941/pexels-photo-2559941.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",page: NatureScreen()),

  Category(title: "Sea", image: "https://images.pexels.com/photos/994605/pexels-photo-994605.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",page: SeaScreen()),
  Category(title: "Weather", image: "https://images.pexels.com/photos/844297/pexels-photo-844297.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",page: WeatherScreen()),
  Category(title: "Building", image: "https://images.pexels.com/photos/273209/pexels-photo-273209.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",page: BuildingScreen()),
];
