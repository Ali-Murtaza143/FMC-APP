import 'package:flutter/material.dart';

class ReportStatus extends StatefulWidget {
  const ReportStatus({Key? key}) : super(key: key);

  @override
  _ReportStatusState createState() => _ReportStatusState();
}

class _ReportStatusState extends State<ReportStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report Status'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text('Report has been successfully addeed',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 40,),
           Text('Do you want to add another report?',style: TextStyle(fontSize: 20),),
            SizedBox(height: 30,),
            RaisedButton(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child:Text('Add Another Report',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => PatientsBioData()),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}
