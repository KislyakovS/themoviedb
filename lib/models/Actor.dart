class Actor {
  final String name;
  final String lastName;
  final String photo;

  String get fullName => '$name $lastName';

  Actor({required this.name, required this.lastName, required this.photo});
}

final demoActors = [
  Actor(name: 'Scarlett', lastName: 'Johansson', photo: 'assets/images/actor.jpg'),
  Actor(name: 'Jason', lastName: 'Statham', photo: 'assets/images/actor.jpg'),
  Actor(name: 'Angelina', lastName: 'Jolie', photo: 'assets/images/actor.jpg'),
  Actor(name: 'Vin', lastName: 'Diesel', photo: 'assets/images/actor.jpg')
];