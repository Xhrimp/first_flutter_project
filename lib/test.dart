import 'package:flutter/material.dart';

void main(List<String> args) {
  Tets tets = Tets(date: 123, name: "Tets");
  tets.date = 2;

}

class Tets {
  int date;
  String name;

  Tets({required this.date, required this.name});
}

