import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/utils/app_routes.dart';

void main(){

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: appRoutes,
      theme: ThemeData(useMaterial3: true),
    ),
  );
}