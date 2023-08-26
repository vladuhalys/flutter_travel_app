class User {
  final String id;
  final String name;
  final String email;
  final String password;
  final String? photoUrl;

  User(
      {required this.id,
      required this.name,
      required this.photoUrl,
      required this.email,
      required this.password});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        name: json['name'],
        photoUrl: json['photoUrl'],
        email: json['email'],
        password: json['password']);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'photoUrl': photoUrl,
        'email': email,
        'password': password
      };
}
