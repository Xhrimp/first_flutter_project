class Employee {
  //"?" means nullable variable
  String name;
  int age;
  String subject;
  double salary;

  Employee(this.name, this.age, [this.subject = "N/A", this.salary = 0]);

  void display() {
    print("Employee information");
    print("Name: ${this.name}");
    print("Age: ${this.age}");
    print("Subject: ${this.subject}");
    print("Salary: ${this.salary}");
  }
}

class Car {
  final String name;
  final String model;
  final int prize;

  const Car(this.name, this.model, this.prize);
}

class Vehicle {
  final _carName = "Car";

  String getCarName() {
    return _carName;
  }
}

void main() {
  // define an object
  Employee employee1 = Employee("Phuc", 18);
  employee1 = Employee("Pham", 20);
  employee1.display();


  const Car car = Car("Nissan", "R35", 100000);
  print("Car information");
  print("Name: ${car.name}");
  print("Model: ${car.model}");
  print("Prize: ${car.prize}");

  Vehicle vehicle = Vehicle();
  print("Get car name");
  print("${vehicle.getCarName()}");
}
