import 'package:flutter/material.dart';

class Mostaffectpannel extends StatelessWidget {
   List countrData;
   Mostaffectpannel({Key key, this.countrData}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder:(context,index){
        return Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(countrData[index]['countryInfo']['flag'],height: 35.0,),
              ),
              Text(countrData[index]['country'],style: TextStyle(fontSize: 25.0),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Deaths:" + countrData[index]['deaths'].toString(),style: TextStyle(fontSize: 18.0,color: Colors.red),),
              ),
            ],
          ),
        );
      }
      );
  }
}