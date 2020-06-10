//import 'package:firebase_database/firebase_database.dart';
class SungaiR{
 final double ketinggian;
 final String status;

SungaiR({ this.ketinggian, this.status });

 factory SungaiR.fromJson(Map<dynamic, dynamic> json) {
    double parser(dynamic source) {
      try {
        return double.parse(source.toString());
      } on FormatException {
        return -1;
      }
    }

    return SungaiR(
        ketinggian: parser(json['Ketinggian']),
        status: json['Status']);
  }

}