
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../database/data_Base.dart';
import '../../main.dart';

class Delete extends StatelessWidget {
  const Delete({super.key});

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

                        Database.Malumotlar.remove(Database.Malumotlar[i]);
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
