class User {

  User(
      {this.id,
      this.email,
      this.name,
      this.password,
      this.userName,
      this.createdAt});

  String id;
  String email;
  String name;
  String password;
  String userName;
  DateTime createdAt;

  @override
  String toString() {
    return 'User{id: $id, email: $email, password: $password, userName: $userName, createdAt: $createdAt}';
  }

}