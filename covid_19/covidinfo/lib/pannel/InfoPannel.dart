import 'package:covidinfo/component/ColorCompo.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class InfoPannel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("FAQS",style: TextStyle(color: Colors.white,fontSize: 25.0),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward, color: Colors.white,size: 25.0,),
                  ),
                ],
              ),
            ),
          ),
           GestureDetector(
             onTap: (){
               launch('https://www.who.int/emergencies/diseases/novel-coronavirus-2019/donate');
             },
              child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: primaryBlack,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("DONATE",style: TextStyle(color: Colors.white,fontSize: 25.0),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_forward, color: Colors.white,size: 25.0,),
                    ),
                  ],
                ),
              ),
          ),
           ),
           GestureDetector(
             onTap: (){
               launch('https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public/myth-busters');
             },
                child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                color: primaryBlack,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("MYTH BUSTER",style: TextStyle(color: Colors.white,fontSize: 25.0),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_forward, color: Colors.white,size: 25.0,),
                    ),
                  ],
                ),
              ),
          ),
          ),
        ],
      ),
    );
  }
}