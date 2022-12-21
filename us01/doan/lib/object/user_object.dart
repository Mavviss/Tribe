class user {
  final String name;
  final String email;
  final int ? coreSignle;
  final int? coreBattle;
  final String password;

  user(this.name, this.email, this.coreSignle, this.coreBattle, this.password);

  user.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'],
        coreBattle = json['corebattle'],
        coreSignle = json['coreSingle'],
        password = json['password'];

  Map<String, Object?> toJson() {
    return {
      'name': name,
      'email': email,
      'corebattle': coreBattle,
      'coreSingle': coreSignle,
      'password': password
    };
  }
}
