enum PersonType { sudent, employee }
abstract class Person {
  String? firstName;
  String? lastName;
  static String personLabel = "Person name:";

  Person([this.firstName, this.lastName]);
  // Person.anonymous() {}

  // String getFullName() => "$firstName $lastName";
  void set fullName(String fullName) {
    var parts = fullName.split(" ");
    this.firstName = parts.first;
    this.lastName = parts.last;
  }
  static void printsPerson(Person person) {
    print("$personLabel ${person.firstName} ${person.lastName}");
  }

  String get fullName; 
  String get initials => "${firstName?[0]}. ${lastName?[0]}.";
}

class Student extends Person {
  String nickName;

  Student(String firstName, String lastName, this.nickName): super(firstName, lastName);

  String get fullName => "$firstName $lastName"; 
  @override
  String toString() => "$fullName, also know as $nickName";
}

abstract class Employee implements Person {
  String number;

  @override
  String fistName;

  @override
  String? lastName;

  Employee(this.fistName, this.lastName, this.number);

  @override
  String get fullName => "$firstName $lastName";
}

class ProgrammingSkills {
  void coding() {
    print("writing code...");
  }
}

class ManagementSkills {
  void manage() {
    print("managing project...");
  }
}

abstract class SeinorDeveloper extends Person with ProgrammingSkills, ManagementSkills {
  SeinorDeveloper(String firstName, String lastName) : super(firstName, lastName);
}

void main(List<String> args) {
  Student student = new Student("Elizabeth", "Olsen", "Cute-Pussy");
  print("This is a student: $student");

}
