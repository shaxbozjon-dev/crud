import 'package:animatsiya/model/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../database/data_Base.dart';
class Cread extends StatefulWidget {
  const Cread({super.key});

  @override
  State<Cread> createState() => _CreadState();
}

class _CreadState extends State<Cread> {
 late final namecontrol;
 late final phonenumbercontrol;
late final surname;
  @override
  void initState() {
    phonenumbercontrol = TextEditingController();
    namecontrol = TextEditingController();
surname=TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    namecontrol.dispose(); //buni ishlashiga tushunmadim
    phonenumbercontrol.dispose();
surname.dispose();
    super.dispose(); // super.dispose(); har doym turishi kerak
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
backgroundColor: Colors.deepOrangeAccent.shade100,

      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: namecontrol,
                decoration: InputDecoration(

              border: OutlineInputBorder(),
               prefixIcon: Icon(Icons.nest_cam_wired_stand),
                  hintText: "name kiriitng",

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: surname,
                decoration: InputDecoration(
                  border:OutlineInputBorder(),
                  prefixIcon: Icon(Icons.nest_cam_wired_stand),
                  hintText: "familiyangizni kiriitng",

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(

                controller: phonenumbercontrol,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(

                  border:OutlineInputBorder(),
               prefixText: '+998',

               prefixIcon: Icon(Icons.call),


                ),
              ),
            ),





          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
child: Icon(Icons.add),
        onPressed: (){

          Contact newcontakt=Contact(name: namecontrol.text, phonenumber:phonenumbercontrol.text,surname: surname.text);
          Database.isContains(newcontakt);
          print(Database.Malumotlar);

namecontrol.clear();
phonenumbercontrol.clear();
surname.clear();

        },
      ),
    );
  }
}
