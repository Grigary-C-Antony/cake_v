// import 'dart:js';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class map {
  // ignore: non_constant_identifier_names
  var Context;
  var context;
  map(this.Context) {
    context = this.Context;
  }
  double mapw(double x) {
    double sW = MediaQuery.of(context).size.width;
    print(sW);
    return (x - 0) * (sW - 0) / (1366 - 0) + 0;
  }

  double maph(double x) {
    double sW = MediaQuery.of(context).size.width;
    print(sW);
    return (x - 0) * (sW - 0) / (695 - 0) + 0;
  }
}
