
import 'package:flutter/material.dart';

class DeletePatient extends StatefulWidget {
  const DeletePatient({Key? key}) : super(key: key);

  @override
  _DeletePatientState createState() => _DeletePatientState();
}

class _DeletePatientState extends State<DeletePatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delete Patient'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                style: TextStyle(fontSize: 20),
                decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    labelText: 'Enter Patient Name: '
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                style: TextStyle(fontSize: 20),
                decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    labelText: 'Enter Patient ID: '
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                style: TextStyle(fontSize: 20),
                decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    labelText: 'Enter Contact Number: '
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(top: 40.0,left: 75,right: 80),
              child: RaisedButton(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.delete,size: 27,color: Colors.white,),
                      Text('Delete Patient',style: TextStyle(color: Colors.white,fontSize: 25),),
                    ],
                  ),
                ),
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                onPressed: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
