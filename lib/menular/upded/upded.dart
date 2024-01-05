import 'package:animatsiya/model/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../database/data_Base.dart';
import '../../main.dart';


class Updeds extends StatefulWidget {
  const Updeds({super.key});

  @override
  State<Updeds> createState() => _UpdedsState();
}

class _UpdedsState extends State<Updeds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                TextButton(

                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>Animat()));
                    },
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Icon(Icons.arrow_circle_left_sharp))),
                for (int i = 0; i < Database.Malumotlar.length; i++)
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>newcontakt(contak: Database.Malumotlar[i],)));
                      },
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        color: Colors.blue,
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text('${Database.Malumotlar[i].name}'),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ));
  }
}

class newcontakt extends StatelessWidget {
  Contact contak;
  newcontakt({super.key,required this.contak});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          SizedBox(
            height: 260,
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Name(con: contak)));
              },
              child: Text(
                "1.name -->",
                style: TextStyle(fontSize: 28),
              )),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Surname(con:contak)));
            },
            child: Text(
              "2.surname -->  ",
              style: TextStyle(fontSize: 28),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Number(con: contak,)));
            },
            child: Text(
              "3.phonenumber -->",
              style: TextStyle(fontSize: 28),
            ),
          ),

        ],
      ),
    );
  }
}

class Name extends StatelessWidget {
  Contact con;
 Name({super.key,required this.con});


  @override
  Widget build(BuildContext context) {
    bool isSaved=false;
    final newname=TextEditingController();
    return Scaffold(

      body: Column(
        children: [
          SizedBox(height: 200,),
          TextField(
            controller: newname,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Yangi ismingizni kiring"),
              hintText: "name",
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: (){
        con.setname(newname.text);
        isSaved=true;
        newname.clear();
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                //buttonni bosganda databaseda saqlangan malumotlar kelib chiqadi
                content: Text(
                  isSaved
                      ? "Muvafaqiyali saqlandi"
                      : "Bunday foydalanuvchi bor ekan",
                  style: const TextStyle(fontSize: 7),
                ),
              );
            });
      },
    ),
    );
  }
}
class Surname extends StatelessWidget {
  Contact con;
 Surname({super.key,required this.con});


  @override
  Widget build(BuildContext context) {
    bool isSaved=false;
    final newname=TextEditingController();
    return Scaffold(

      body: Column(
        children: [
          SizedBox(height: 200,),
          TextField(
            controller: newname,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Yangi familiyangizni kiring"),
              hintText: "surname",
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: (){
        con.setsurname(newname.text);
        isSaved=true;
        newname.clear();
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                //buttonni bosganda databaseda saqlangan malumotlar kelib chiqadi
                content: Text(
                  isSaved
                      ? "Muvafaqiyali saqlandi"
                      : "Bunday foydalanuvchi bor ekan",
                  style: const TextStyle(fontSize: 7),
                ),
              );
            });
      },
    ),
    );
  }
}
class Number extends StatelessWidget {
  Contact con;
 Number({super.key,required this.con});


  @override
  Widget build(BuildContext context) {
    bool isSaved=false;
    final newname=TextEditingController();
    return Scaffold(

      body: Column(
        children: [
          SizedBox(height: 200,),
          TextField(
            controller: newname,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Yangi familiyangizni kiring"),
              hintText: "surname",
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: (){
        con.setphonnumber(newname.text);
        isSaved=true;
        newname.clear();
        showDialog(

            context: context,
            builder: (context) {
              return AlertDialog(

                //buttonni bosganda databaseda saqlangan malumotlar kelib chiqadi
                content: Text(
                  isSaved
                      ? "Muvafaqiyali saqlandi"
                      : "Bunday foydalanuvchi bor ekan",
                  style: const TextStyle(fontSize: 7),
                ),
              );
            });
      },
    ),
    );
  }
}
