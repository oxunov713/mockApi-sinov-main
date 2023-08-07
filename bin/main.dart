import 'dart:convert';

import 'package:http/http.dart' as myHTTP;

import '../lib/models/todo_model.dart';

Future<void> main() async {
  String baseUrl = "https://64c9fb25b2980cec85c2ab7a.mockapi.io";

  Uri uriForTodos = Uri.parse("$baseUrl/todos");
  Uri uriForUsers = Uri.parse("$baseUrl/Users");
  /* 
 ///This is [get] 
  myHTTP.Response responseGetTodos = await myHTTP.get(uriForTodos);
  myHTTP.Response responseGetUsers = await myHTTP.get(uriForUsers);

 
 List<TodoModel> todos = List<Map<String, Object?>>.from(
    jsonDecode(responseOfTodos.body),
  ).map(TodoModel.fromJson).toList();

  List<User> users = List<Map<String, Object?>>.from(
    jsonDecode(responseOfUsers.body),
  ).map(User.fromJson).toList();

  print(todos[0].account_name);
  print(users[0].married);
*/
  ///This is [post]

  TodoModel todo1 = TodoModel(
      country: 'Posttodo', city: 'Posttodo', account_name: 'Posttodo');
  //tododa yangi obyekt yasab oldim

  TodoModel todo2 = TodoModel(country: '000000000', city: '00000');

  TodoModel todo3 = TodoModel();

  myHTTP.Response responsePostTodos1 = await myHTTP.post(
    uriForTodos,
    headers: <String, String>{},
    body: jsonEncode(todo1.toJson()),
  ); // post qildim

  myHTTP.Response responsePostTodos2 = await myHTTP.post(
    uriForTodos,
    headers: <String, String>{
      "Content-Type": "application/json; charset=UTF-8"
    },
    body: jsonEncode(todo2.toJson()),
  ); //post qildim

  myHTTP.Response responsePostTodos3 = await myHTTP.post(
    uriForTodos,
    headers: <String,
        String>{}, //agar header yozilmasa,bo'sh bo'lsa o'zi yangi malumot bn to'ldiardi agar headers yozilgan bolsa malumoti bo'lmasa null bn to'ldiradi
    body: jsonEncode(todo3.toJson()),
  ); //post qildim
}
