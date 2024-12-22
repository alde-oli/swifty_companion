import 'package:flutter/material.dart';

class UserDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> userDetails =
    ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(title: Text('User Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Login: ${userDetails['login']}', style: TextStyle(fontSize: 18)),
            Text('Email: ${userDetails['email']}', style: TextStyle(fontSize: 18)),
            Text('Level: ${userDetails['cursus_users'][0]['level']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 16),
            Text('Skills:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ...userDetails['cursus_users'][0]['skills'].map<Widget>((skill) {
              return Text('${skill['name']}: ${skill['level']}');
            }).toList(),
            Text('Projects:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ...userDetails['projects_users'].map<Widget>((project) {
              return Text(
                '${project['project']['name']}: ${project['status']} (${project['final_mark'] ?? 'No mark'})',
              );
            }).toList(),

          ],
        ),
      ),
    );
  }
}
