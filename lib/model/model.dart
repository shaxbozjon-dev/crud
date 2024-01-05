class Contact {
  String name;
  String surname;
  String phonenumber;

  Contact({required this.name,required this.surname, required this.phonenumber});
  String  getname(){
    return name;
  }

  void setname(String newname){
    name=newname;
  }
   void setsurname(String newsurname){
    surname=newsurname;
  }
   void setphonnumber(String number){
    phonenumber=number;
  }


  Map<String, Object?> toJson() {
    return {
      'name': name,
      'phonenumber': phonenumber,
      'surname':surname,
    };
  }

  factory Contact.fromJson(Map<String, Object?> json) {
    return Contact(
        name: json['name'] as String,
        surname:json['surname']as String,
        phonenumber: json['phonenumber'] as String);

  }
  bool operator ==(Object other) {
    return other is Contact &&
        other.name == name &&
        other.phonenumber == phonenumber;
  }
  @override
  String toString() {
    // TODO: implement toString
    return "$name\n$surname\n$phonenumber\n ";
  }
}
