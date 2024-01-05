import 'package:animatsiya/main.dart';
import 'package:animatsiya/model/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../database/data_Base.dart';

class Read extends StatefulWidget {
  const Read({super.key});

  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Contakts(
                                  kontakt: Database.Malumotlar[i],
                                )));
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

class Contakts extends StatelessWidget {
  Contact kontakt;

  Contakts({
    super.key,
    required this.kontakt,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,


              children: [

                TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>Read()));
                    },
                    child: Icon(Icons.arrow_circle_left_sharp)),
            Row(
              children: [
                SizedBox(width: 170,),
                Icon(Icons.drive_file_rename_outline),
                Icon(Icons.contact_page),
                Icon(Icons.menu),
                Text("    "),
              ],

            ),

              ],
            ),
            SizedBox(
              height: 50,
            ),
            Center(
                child: Text(
              '${kontakt.name}',
              style: TextStyle(fontSize: 30),
            )),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        '+998${kontakt.phonenumber}    ',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text('Mobilniy'),
                    ],
                  ),

                  Icon(Icons.call),
                  Icon(Icons.message),
                  Icon(
                    Icons.video_call,
                    size: 30,
                  ),
                ],
              ),
            ),
            Column(

              children: [
                Text(
                  '+998${kontakt.phonenumber}               ',
                  style: TextStyle(fontSize: 30),
                ),
                Text('Meet                                '),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
