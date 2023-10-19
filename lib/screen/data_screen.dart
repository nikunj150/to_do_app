import 'package:flutter/material.dart';
import 'package:to_do_app/modal/modal_class.dart';
import 'package:to_do_app/utils/global.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({super.key});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  TextEditingController txtwork = TextEditingController();
  TextEditingController txtdescrip = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back, color: Colors.black)),
          actions: const [
            Icon(
              Icons.nightlight_outlined,
              color: Colors.black,
            ),
          ],
          centerTitle: true,
          title: const Text("To-Do"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "Add To-do",
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                     
                    },
                    icon: const Icon(Icons.save),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.grid_view),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.refresh)),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "Priority",
                style: TextStyle(fontSize: 19),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: () {}, child: const Text("Low")),
                  ElevatedButton(onPressed: () {}, child: const Text("Medium")),
                  ElevatedButton(onPressed: () {}, child: const Text("High")),
                  ElevatedButton(onPressed: () {}, child: const Text("Urgent")),
                ],
              ),
              const SizedBox(height: 15),
              TextField(
                controller: txtwork,
                decoration: InputDecoration(
                    hintText: "Title",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4))),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: txtdescrip,
                decoration: InputDecoration(
                    hintText: "Description",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4))),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Text(
                    "Pick Date",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.date_range),
                  Text(
                    "Date",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text("19-10-2022"),
                ],
              ),
              const SizedBox(height: 40),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue),
                  child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
