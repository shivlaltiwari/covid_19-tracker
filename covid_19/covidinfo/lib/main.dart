import 'package:covidinfo/component/ColorCompo.dart';
import 'package:covidinfo/ui/Homepage.dart';
import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(
    new MaterialApp(
      title: "Covid-19",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryBlack,
      ),
      home: Homepage(),
    )
  );
}