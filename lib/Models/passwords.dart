class passwords {
  String? platform;
  String? username;
  String? password;

  passwords();

  Map<String, dynamic> toJson() =>
      {'platform': platform, 'username': username, 'password': password};

  passwords.fromSnapshot(snapshot)
      : platform = snapshot.data()['platform'],
        username = snapshot.data()['username'],
        password = snapshot.data()['password'];
}
