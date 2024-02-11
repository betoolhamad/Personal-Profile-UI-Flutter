import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 241, 140, 173),
            title: const Text(
              "Personal Profile",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                  color: Colors.white),
            )),
        body: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://picjumbo.com/wp-content/uploads/flying-above-pink-clouds-free-photo.jpg'),
              ),
              const SizedBox(height: 80),
              Container(
                decoration: BoxDecoration(color: Colors.pink[1000]),
              ),
              ListTile(
                title: Text('Name'),
                subtitle: Text('Betool Hamad'),
                leading: const Icon(Icons.person,
                    size: 26, color: Color.fromARGB(255, 239, 173, 220)),
                trailing: Icon(Icons.arrow_forward, color: Colors.pink[400]),
                tileColor: Colors.white,
              ),
              SizedBox(height: 40),
              ListTile(
                title: Text('Mobile Number'),
                subtitle: Text('0506981742'),
                leading: const Icon(Icons.phone,
                    size: 26, color: Color.fromARGB(255, 239, 173, 220)),
                trailing: Icon(Icons.arrow_forward, color: Colors.pink[400]),
                tileColor: Colors.white,
              ),
              SizedBox(height: 40),
              ListTile(
                title: Text('Address'),
                subtitle: Text('Riyadh'),
                leading: const Icon(Icons.add_location_alt_sharp,
                    size: 26, color: Color.fromARGB(255, 239, 173, 220)),
                trailing: Icon(Icons.arrow_forward, color: Colors.pink[400]),
                tileColor: Colors.white,
              ),
              SizedBox(height: 40),
              ListTile(
                title: Text('Email'),
                subtitle: Text('Betoolhamadd@gmail.com'),
                leading: const Icon(Icons.email,
                    size: 26, color: Color.fromARGB(255, 239, 173, 220)),
                trailing: Icon(Icons.arrow_forward, color: Colors.pink[400]),
                tileColor: Colors.white,
              ),
              SizedBox(height: 40),
            ],
          ),
        ));
  }
}
