import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
class CountryPage extends StatefulWidget {
  @override
  _CountryPageState createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  List countryData;

  fatcCountryWideData() async{
    http.Response response = await http.get(Uri.parse('https://corona.lmao.ninja/v2/countries'));
   setState(() {
     countryData = jsonDecode(response.body);
   });
  }
  @override
  void initState() {
    super.initState();
    fatcCountryWideData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Country Info"),
      ),
      body: countryData==null? Center(child: CircularProgressIndicator(),):
       ListView.builder(
      itemCount: countryData.length==null? 0 :countryData.length,
      itemBuilder: (context,index){
      return Container(
        child:Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(countryData[index]['country'], style: TextStyle(fontSize: 20.0),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(countryData[index]['countryInfo']['flag'],height: 50.0,),
            ),
          ],
        ),
        Column(
          //crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            Text("Conform: " +countryData[index]['cases'].toString(), style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
            Text("Active: " +countryData[index]['active'].toString(),style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold)),
            Text("Recoverd: " +countryData[index]['recovered'].toString(),style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold)),
            Text("Death: "+ countryData[index]['deaths'].toString(),style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    )

      ),

      );
    })
    );
  }
}