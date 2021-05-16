//import 'dart:convert';

import 'dart:convert';

import 'package:covidinfo/component/ColorCompo.dart';
import 'package:covidinfo/pannel/InfoPannel.dart';
import 'package:covidinfo/pannel/Mostaffectpannel.dart';
//import 'package:covidinfo/model/model.dart';
import 'package:covidinfo/pannel/WorldWidepannel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Map worldData;
  List countrData;
  fatchWorldWideData() async{
    http.Response response = await http.get(Uri.parse('https://corona.lmao.ninja/v2/all'));
   setState(() {
     worldData = jsonDecode(response.body);
   });
  }

  
  fatcCountryWideData() async{
    http.Response response = await http.get(Uri.parse('https://corona.lmao.ninja/v2/countries'));
   setState(() {
     countrData = jsonDecode(response.body);
   });
  }

  @override
  void initState() {
    super.initState();
    fatchWorldWideData();
    fatcCountryWideData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("COVID INFO"),
        //backgroundColor: ,
      ),
      body: ListView(
        children: [
          Column(
           mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100.0,
                //alignment: Alignment.center,
                color: Colors.orange[100],
                padding: EdgeInsets.only(top: 5.0,bottom: 10.0, left: 3.0, right: 3.0),
                child: Text(DataSource.quote,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold ),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left:12.0
                  ),
                  child: Text("Worlddata", style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                  ),
                  Padding(padding: EdgeInsets.only(left: 110.0),
                  child: FlatButton(onPressed: (){
                    print("pressed");
                  },
                  shape:  new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),),
                   child: Text("Region", style: TextStyle(color: Colors.white,fontSize: 20.0),), color: Colors.black,),
                  
                  )
                ],
              ),
              //Text(worldWidedata['updated']),
             worldData == null? CircularProgressIndicator():WorldWide(worldData: worldData,),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left:10.0,top: 20.0,bottom: 18.0),
                   child: Text("Most Affect Country", style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                 ),
               ],
             ),
             countrData == null? Container(color: Colors.black,):Mostaffectpannel(countrData:countrData),
             InfoPannel(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Column(
                  children: [
                    Text("WE ARE TOGHTER IN FIGHT", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            )

            // WorldWide(),
            ],
          )
        ],
      ),
    );
  }
}