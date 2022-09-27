import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main() {
  var uri="https://jsonplaceholder.typicode.com/users";
  post(uri);

}
post(var uri) async{
  var res =await http.get(Uri.parse(uri));
  print(jsonDecode(res.body));
}
