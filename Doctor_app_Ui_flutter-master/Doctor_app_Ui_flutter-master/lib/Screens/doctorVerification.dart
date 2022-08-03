import 'package:flutter/material.dart';
import 'package:murtaza_final_project/Screens/CustomerVerification.dart';


class DoctorVerify extends StatefulWidget {
  const DoctorVerify({Key? key}) : super(key: key);

  @override
  _DoctorVerifyState createState() => _DoctorVerifyState();
}

class _DoctorVerifyState extends State<DoctorVerify> {
  TextEditingController code =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text('Doctor Verification'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: TextField(
                  controller: code,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'example@gmail.com',
                    labelText: 'Verification Code'
                  ),
                ),
              ),
            ),
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
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => PatientVerification()),
                  // );
                },
              ),
            ),
            SizedBox(height: 460,),
            Padding(
              padding: const EdgeInsets.only(left: 80.0),
              child: Row(
                children: [
                  Text("Don't have an account yet?"),
                  TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PatientVerification()),
                    );
                  }, child: Text('Sign Up.'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
