import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:today_class/model/usermodel.dart';

//without model
getuser() async {
  var userdata = [];
  var baseurl = "https://jsonplaceholder.typicode.com/users";
  var url = Uri.parse(baseurl);
  var res = await http.get(url);
  var jsonRes = jsonDecode(res.body);
  print(res.statusCode);
  print(res.body);
  //WITH MODEL
  for (var i in jsonRes) {
    userdata.add(UserModel.fromJson(i));
    // return jsonRes;

  }
  return userdata;
}

getuserid(id) async {
  var userdata = [];
  var baseurl = "https://jsonplaceholder.typicode.com/users/$id";
  var url = Uri.parse(baseurl);
  var res = await http.get(url);
  var jsonRes = jsonDecode(res.body);
  print(res.statusCode);
  print(res.body);
  return UserModel.fromJson(jsonRes);
  //WITH MODEL
//   for (var i in jsonRes) {
//     userdata.add(UserModel.fromJson(i));
//     // return jsonRes;

//   }
//     return userdata;
// }
}
