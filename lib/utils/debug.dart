import 'dart:convert';

import 'package:http/http.dart';
import 'package:logger/logger.dart';

var logLib = Logger(
  printer: PrettyPrinter(colors: true, printEmojis: true, methodCount: 0),
);

class Console {
  static http(Response request) {
    Console.log(request.statusCode);
    Console.log(request.request);
    Console.log(request.headers);
    Console.log(json.decode(request.body));
  }

  static toJson(var input) {
    json.decode(input);
  }

  static v(var input) {
    logLib.v(input);
  }
  static log(var input) {
    logLib.d(input);
  }
  static i(var input) {
    logLib.i(input);
  }
  static w(var input) {
    logLib.w(input);
  }
  static e(var input) {
    logLib.e(input);
  }
  static wtf(var input) {
    logLib.wtf(input);
  }
}

