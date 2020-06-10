//import 'package:firebase_database/firebase_database.dart';
class DebitR{
 final double ketinggian;
 final String status;

DebitR({ this.ketinggian, this.status });

 factory DebitR.fromJson(Map<dynamic, dynamic> json) {
    double parser(dynamic source) {
      try {
        return double.parse(source.toString());
      } on FormatException {
        return -1;
      }
    }

    return DebitR(
        ketinggian: parser(json['Ketinggian']),
        status: json['Status']);
  }

}