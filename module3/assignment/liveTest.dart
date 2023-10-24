class Student {
  String name;
  int roll;
  String address;

  Student(this.name, this.roll, this.address);

  void sayHello() {
    print("Hello, my name is $name.");
  }

  int getRollSquared() {
    return roll * roll;
  }
}

void main() {
  String name = "Ostad";
  int roll = 3;
  String address = "Baridhara, Dhaka";

  Student student = Student(name, roll, address);

  student.sayHello();

  int rollSquared = student.getRollSquared();
  print("Roll squared: $rollSquared");
}
