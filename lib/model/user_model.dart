class User {

  String? name;
  String? email;
  String? phone;
  String? password;
  String? confirm;

  User(this.name,this.email,this.phone,this.password,this.confirm);

  User.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    email = json["email"];
    phone =json["phone"];
    password = json["password"];
    confirm = json["confirm"];
  }


  Map<String, dynamic> toJson() => {
    "name" : name,
    "email" : email,
    "phone" : phone,
    "password" : password,
    "confirm" : confirm,
  };

}