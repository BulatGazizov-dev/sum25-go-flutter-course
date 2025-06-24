import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String email;
  final int age;
  final String? avatarUrl;

  const ProfileCard({
    Key? key,
    required this.name,
    required this.email,
    required this.age,
    this.avatarUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Implement profile card UI
    return Container(
        child: Column(
            children: <Widget>[
              CircleAvatar(
                  backgroundImage: NetworkImage(this.avatarUrl ?? ""),
                  child: Text(this.name[0])
              ),
              Text(this.name),
              Text(this.email),
              Text("Age: " + this.age.toString())
            ]
        )
    );
  }

}
