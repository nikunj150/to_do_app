

import 'package:flutter/cupertino.dart';
import 'package:to_do_app/screen/data_screen.dart';
import 'package:to_do_app/screen/home_screen.dart';
import 'package:to_do_app/screen/splesh_screen.dart';

Map<String,WidgetBuilder> appRoutes ={

  '/':(context)=>SpleshScreen(),
  'home':(context)=>HomeScreen(),
  'data':(context)=>DataScreen(),

};