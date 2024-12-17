import 'dart:ffi';

class Student {
  int? id;
  String? name;
  int? age;
  double? salary; 

  Student({
    this.id;
    this.name;
    this.age;
    this.salary;
  });

  factory Student.fromJson(Map json){
    return Student(
      id: json["id"],
      name: json["name"],
      age: json["age"],
      salary: json["salary"],
    );
  }
}
