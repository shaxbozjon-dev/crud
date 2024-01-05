
import 'package:animatsiya/model/model.dart';

class Database{
 static List Malumotlar=[];
 static bool isContains(Contact kontakt) {
  if (!Malumotlar.contains(kontakt.phonenumber)) {

   Malumotlar.add(kontakt);

   //mapga  obyektlarni qushib beradi
   print("Car qushildi✅ ");
   return true;
  } else {
   print("bunday mashina ruyhatdan turargohda bor");

   return false;
  }
 }
}