import 'package:flutter/material.dart';
import 'package:to_do_app/modal/modal_class.dart';
import 'package:to_do_app/utils/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController txtwork = TextEditingController();
  TextEditingController txtdescrip = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "To-do",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.grid_view)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.nightlight_outlined))
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:Container(
                height: MediaQuery.of(context).size.height*0.20,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.green.shade200,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("title",style: TextStyle(fontSize: 24),),
                      SizedBox(height: 20),
                      Text("description",style: TextStyle(fontSize: 24),),
                      Spacer( ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text("10-12-2022",style: TextStyle(fontSize: 15),)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple.shade200,
          onPressed: () {
            Navigator.pushNamed(context, 'data');
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
// Container(
// height: MediaQuery.of(context).size.height*0.20,
// width: double.infinity,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(5),
// color: Colors.green.shade200,
// ),
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text("title",style: TextStyle(fontSize: 24),),
// SizedBox(height: 20),
// Text("description",style: TextStyle(fontSize: 24),),
// Spacer( ),
// Align(
// alignment: Alignment.bottomRight,
// child: Text("10-12-2022",style: TextStyle(fontSize: 15),)),
//
//
//
// ],
// ),
// ),
// ),
