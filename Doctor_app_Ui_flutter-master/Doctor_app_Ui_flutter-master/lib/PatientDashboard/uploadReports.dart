import 'package:flutter/material.dart';
import 'package:murtaza_final_project/PatientDashboard/ReportStatus.dart';

class UploadReports extends StatefulWidget {
  const UploadReports({Key? key}) : super(key: key);

  @override
  _UploadReportsState createState() => _UploadReportsState();
}

class _UploadReportsState extends State<UploadReports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Upload Reports',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(right: 180.0),
              child: Text('Report Details:',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Test Name: ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent,fontSize: 20),),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text('Laboratory: ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent,fontSize: 20),),
                      // TextField (
                      //   decoration: InputDecoration(
                      //     border: OutlineInputBorder(),
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text('Date: ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent,fontSize: 20),),
                      // TextField (
                      //   decoration: InputDecoration(
                      //     border: OutlineInputBorder(),
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.only(left: 65.0,right: 65),
                    child: RaisedButton(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_circle_up_rounded,size: 23,color: Colors.blueAccent,),
                            Text('Upload Report',style: TextStyle(color: Colors.blueAccent,fontSize: 15),),
                          ],
                        ),
                      ),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => PatientsBioData()),
                        // );
                      },
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 60,),
            RaisedButton(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child:Text('Add Report',style: TextStyle(color: Colors.white,fontSize: 25),),
              ),
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReportStatus()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
