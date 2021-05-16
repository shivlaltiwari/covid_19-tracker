//import 'dart:convert';

class Model{
  String active;
  String deaths;
  String cases;
  String recovered;
  Model({this.active, this.cases, this.deaths, this.recovered});
  factory Model.fromJson(Map<String, dynamic> json){
    return Model(
      active:json['active'] ,
      deaths: json['deaths'],
      cases: json['cases'],
      recovered: json['recovered']
      );
  }

}