class Person {
  String? name = 'John';
  int? age = 30;
  String? sex = 'male';

  Person({String? name, int? age, String? sex}) {
    this.name = name;
    this.age = age;
    this.sex = sex;
  }
}

addNumber(int num1, int num2) {
  return num1 + num2;
}

void main() {
  Person p1 = new Person(age: 20);
  Person p2 = new Person(sex: 'male');

  print(p1.age);
  print(p2.age);
}
