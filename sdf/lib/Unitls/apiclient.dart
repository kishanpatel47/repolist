import 'dart:convert';

import 'package:http/http.dart' as https;
import 'package:http/http.dart';

class Apiclient {
  // Future<Map<String, dynamic>> login(String email, String password) async {
  //   var result;
  //
  //   final Map<String, dynamic> loginData = {
  //     'user': {'email': email, 'password': password}
  //   };
  //
  //   Response response = await post(
  //     AppUrl.login as Uri,
  //     body: json.encode(loginData),
  //   );
  //
  //   if (response.statusCode == 200) {
  //     final Map<String, dynamic> responseData = json.decode(response.body);
  //
  //     var userData = responseData['data'];
  //
  //     User authUser = User.fromJson(userData);
  //
  //     UserPreferences().saveUser(authUser);
  //
  //     _loggedInStatus = Status.LoggedIn;
  //     notifyListeners();
  //
  //     result = {'status': true, 'message': 'Successful', 'user': authUser};
  //   } else {
  //     _loggedInStatus = Status.NotLoggedIn;
  //     notifyListeners();
  //     result = {
  //       'status': false,
  //       'message': json.decode(response.body)['error']
  //     };
  //   }
  //   return result;
  // }
}
