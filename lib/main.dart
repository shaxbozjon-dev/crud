
import 'package:animatsiya/menular/upded/upded.dart';
import 'package:flutter/material.dart';

import 'menular/cread/cread.dart';
import 'menular/delete/delete.dart';
import 'menular/read/read.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Animat(),
  ));
}

const duration = Duration(milliseconds: 250);

class Animat extends StatefulWidget {
  const Animat({super.key});

  @override
  State<Animat> createState() => _AnimatState();
}

class _AnimatState extends State<Animat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 260,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Cread()));
                  },
                  child: Text(
                    "1.Cread",
                    style: TextStyle(fontSize: 28),
                  )),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Read()));
                },
                child: Text(
                  "2.read  ",
                  style: TextStyle(fontSize: 28),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Updeds()));
                },
                child: Text(
                  "3.upded",
                  style: TextStyle(fontSize: 28),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Delete()));
                },
                child: Text(
                  "4.delete",
                  style: TextStyle(fontSize: 28),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
