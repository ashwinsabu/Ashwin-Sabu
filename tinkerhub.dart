import 'dart:io';

class Online {
  String name;
  var time, choice;
  //DateTime launchDate;
  String setMentorOrLearner() {
    stdout.writeln(
        'Confimation:- Are you a mentor or listener (note:-enter in small letters)');
    this.name = stdin.readLineSync();
    if (this.name == 'listener') {
      print(".........Welcome ..........we provide you with the best mentors.");
      return 'listener';
    } else {
      print(
          ".........Welcome ..........we provide you with the best mentoring facilities.");
      return 'mentor';
    }
  }

  int setAvailableTime(String person) {
    if (person == 'mentor') {
      stdout.writeln(
          'Which time do you prefer: 1.morning 2.afternoon 3.evening (enter the choice in digit)');
      this.time = stdin.readLineSync();
      return time;
    }
  }

  int addStacks() {
    print(
        "Here we offers a wide variety of your dream courses...........as we are just started the courses offered are limited.............choose your favourite");
    stdout.writeln(
        '1.AI 2.iOt 3.App Development (note:-enter your choice in digits)');
    this.choice = stdin.readLineSync();
    return choice;
  }
  //void getMentor()
}

void main(List<String> args) {
  print("WELCOME TO TINKER HUB");
  var choice, time, person;
  Online s1 = Online();
  stdout.writeln("We would like to know your interest");
  choice = s1.addStacks();
  person = s1.setMentorOrLearner();
  time = s1.setAvailableTime(person);
}
