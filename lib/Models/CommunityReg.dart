class CommunityReg {
  String name, email, password;
  CommunityReg(
      {required this.name, required this.email, required this.password});

  factory CommunityReg.fromJson(dynamic json) {
    return CommunityReg(
        name: json["name"], email: json["email"], password: json["password"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "email": email,
      "password": password,
    };
  }
}
