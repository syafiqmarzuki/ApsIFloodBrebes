import 'dart:convert';
import 'package:http/http.dart' as http;

class DebitR{
  String id;
  String ketinggian;
  String status;

  DebitR({this.id,this.ketinggian,this.status});

  factory DebitR.createDebit(Map<String, dynamic> object){
    return DebitR(
      id: object['id'].toString(),
      ketinggian: object['ketinggian'],
      status: object['status']
    );
  }

  static Future<DebitR> connectToAPI( String id) async{
    String apiURL = "https://webibf.herokuapp.com/api/sungai/" + id ;
    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);
    var debitData = (jsonObject as Map <String, dynamic>)['data'];
    return DebitR.createDebit(debitData);
    
  }


  

  
}