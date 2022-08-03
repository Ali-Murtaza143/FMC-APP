import 'package:flutter/material.dart';
import 'package:murtaza_final_project/PatientDashboard/PatientWelcomeScreen.dart';
import 'package:murtaza_final_project/Widgets/text_field_input.dart';

class PatientsBioData extends StatefulWidget {
  const PatientsBioData({Key? key}) : super(key: key);
  @override
  _PatientsBioDataState createState() => _PatientsBioDataState();
}
class _PatientsBioDataState extends State<PatientsBioData> {
  TextEditingController fulname = TextEditingController();
  TextEditingController dateofbirth = TextEditingController();
  TextEditingController contact_number = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController city = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Your BioData'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60,),
            TextFieldInput(
              hintText: 'Enter Full Name: ',
              textInputType: TextInputType.emailAddress,
              textEditingController:fulname ,
            ),
            TextFieldInput(
              hintText: 'Date Of Birth',
              textInputType: TextInputType.emailAddress,
              textEditingController: dateofbirth,
            ),
            TextFieldInput(
              hintText:'Enter Contact Nmber',
              textInputType: TextInputType.emailAddress,
              textEditingController: contact_number,
            ),
            TextFieldInput(
              hintText:'Address',
              textInputType: TextInputType.emailAddress,
              textEditingController: address,
            ),
            TextFieldInput(
              hintText:'Enter City, Province',
              textInputType: TextInputType.emailAddress,
              textEditingController: city,
            ),
            TextFieldInput(
              hintText: 'Baby',
              textInputType: TextInputType.emailAddress,
              textEditingController: city,
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: RaisedButton(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Continue',style: TextStyle(color: Colors.white,fontSize: 30),),
                ),
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PatientWelcomeScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}