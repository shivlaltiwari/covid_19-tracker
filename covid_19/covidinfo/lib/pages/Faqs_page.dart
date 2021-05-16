import 'package:covidinfo/component/ColorCompo.dart';
import 'package:flutter/material.dart';
class FaqsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAQS"),
        centerTitle: true,
        backgroundColor: primaryBlack,
      ),
      body:ListView.builder(
        itemCount: DataSource.questionAnswers.length,
        itemBuilder: (context,index){
        return ExpansionTile(
          title: Text(DataSource.questionAnswers[index]["question"], style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(DataSource.questionAnswers[index]["answer"], style: TextStyle(fontSize: 16.0),),
            ),
          ],
        
        );
      }) ,
    );
  }
}