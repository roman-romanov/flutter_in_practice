import '../BaseModel.dart';

class Appointment {
  int id;
  String title;
  String description;
  String apptDate;
  String apptTime;

//   Appointment(
//       {this.id, this.title, this.description, this.apptDate, this.apptTime});
// 
 }

class AppointmentsModel extends BaseModel {
  String apptTime;
  void setApptTime(String inApptTime) {
    apptTime = inApptTime;
    notifyListeners();
  }
}

 Appointment appointment = Appointment();

AppointmentsModel appointmentsModel;
