class LoginClass {
  String? email;
  String? password;

  LoginClass({this.email, this.password});
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {'email': email, 'password': password};
    return map;
  }
}
