import 'package:flutter/material.dart';

// Define a User class to represent user data
class User {
  final String username;
  final String email;

  User(this.username, this.email);
}

class UsersPage extends StatelessWidget {
  // Define a list of users
  final List<User> users = [
    User('John Doe', 'john@example.com'),
    User('Jane Smith', 'jane@example.com'),
    User('Alice Johnson', 'alice@example.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Usuarios'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    // Build a ListTile for each user
                    return ListTile(
                      title: Text(users[index].username),
                      subtitle: Text(users[index].email),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}