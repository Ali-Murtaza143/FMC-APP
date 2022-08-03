import 'package:flutter/material.dart';
class Appoinments extends StatefulWidget {
  const Appoinments({Key? key}) : super(key: key);
  @override
  _AppoinmentsState createState() => _AppoinmentsState();
}

class _AppoinmentsState extends State<Appoinments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appoinment Requests'),
      ),
    );
  }
}
