//import 'package:covidinfo/api_service/apiService.dart';
//import 'package:covidinfo/model/model.dart';
import 'package:flutter/material.dart';

class WorldWide extends StatelessWidget {
  Map worldData;
  WorldWide({Key key,this.worldData,}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2),
        children: [
          SatusPannel(
            title: 'CONFORM',
            pannelcolor: Colors.orange[200],
            textColor: Colors.orange,
            count:worldData['cases'].toString(),
          ),
          SatusPannel(
             title: 'ACTIVE',
            pannelcolor: Colors.blue[200],
            textColor: Colors.blue,
            count:worldData['active'].toString(),
          ),
          SatusPannel(
             title: 'RECOVER',
            pannelcolor: Colors.green[200],
            textColor: Colors.green,
            count: worldData['recovered'].toString(),
          ),
          SatusPannel(
             title: 'DEATH',
            pannelcolor: Colors.red[200],
            textColor: Colors.red,
            count:worldData['deaths'].toString(),
          ),
        ],
      )
    );
  }
}
class SatusPannel extends StatelessWidget {
  final String title;
  final Color pannelcolor;
  final Color textColor;
  final String count;

  const SatusPannel({Key key, this.title, this.pannelcolor, this.textColor, this.count}): super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 80.0,
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(8.0),
      alignment: Alignment.center,
      width: width/2,
      color: pannelcolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, textAlign: TextAlign.center,style:TextStyle(fontSize: 16.0),),
          Text(count,style: TextStyle(color: textColor,fontSize: 20.0,fontWeight: FontWeight.bold),),
        ],
      )
      
    );
  }
}