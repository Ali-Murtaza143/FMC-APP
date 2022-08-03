import 'package:flutter/material.dart';
import 'package:murtaza_final_project/Doctors%20info/DoctorWelcomeScreen.dart';
import 'package:murtaza_final_project/Widgets/text_field_input.dart';

class DoctorsBioData extends StatefulWidget {
  const DoctorsBioData({Key? key}) : super(key: key);
  @override
  _DoctorsBioDataState createState() => _DoctorsBioDataState();
}
class _DoctorsBioDataState extends State<DoctorsBioData> {
  TextEditingController fulname = TextEditingController();
  TextEditingController degree = TextEditingController();
  TextEditingController contact_number = TextEditingController();
  TextEditingController clinic_address = TextEditingController();
  TextEditingController city = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(width: 10,height: 100,),
            Text('Enter Your Bio Data',
              style: TextStyle(fontSize: 30,color: Colors.blueAccent,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30,),
            TextFieldInput(
              hintText: 'Enter Full Name: ',
              textInputType: TextInputType.emailAddress,
              textEditingController:fulname ,
            ),
            TextFieldInput(
              hintText: 'Degree',
              textInputType: TextInputType.emailAddress,
              textEditingController: degree,
            ),
            TextFieldInput(
              hintText: 'Enter Contact Nmber',
              textInputType: TextInputType.emailAddress,
              textEditingController: contact_number,
            ),
            TextFieldInput(
              hintText: 'Enter Clinic Address',
              textInputType: TextInputType.emailAddress,
              textEditingController: clinic_address,
            ),
            TextFieldInput(
              hintText: 'Enter City, Province',
              textInputType: TextInputType.emailAddress,
              textEditingController: city,
            ),
            SizedBox(height: 50,),
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
                        MaterialPageRoute(builder: (context) => DoctorWelcomeScreen()),
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