import 'package:flutter/material.dart';
import 'package:murtaza_final_project/Doctors%20info/appointmentrequest.dart';
import 'package:table_calendar/table_calendar.dart';

class DoctorsAppointments extends StatefulWidget {
  const DoctorsAppointments({Key? key}) : super(key: key);

  @override
  _DoctorsAppointmentsState createState() => _DoctorsAppointmentsState();
}

class _DoctorsAppointmentsState extends State<DoctorsAppointments> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Appointments'),
      ),
      body:Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: RaisedButton(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Today',style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                onPressed: null,
              ),
            ),
           SizedBox(height: 40,),
           Center(
             child: TableCalendar(
               firstDay: DateTime.utc(2010, 10, 16),
               lastDay: DateTime.utc(2030, 3, 14),
               focusedDay: DateTime.now(),
             )
           ),
            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: RaisedButton(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Appointment Requests',style: TextStyle(color: Colors.white,fontSize: 25),),
                ),
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppointmentsRequest()),
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
