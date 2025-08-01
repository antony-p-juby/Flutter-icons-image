import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple,brightness: Brightness.dark),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      ), 
      body: Stack(
        children:[
        Image.asset('assets/image.jpg',
        fit: BoxFit.cover,
        height: 300,
        ),
        SizedBox(height: 300,
        child: Center(
          child: Text('SOmething'),
        ),),       
        ListTile(
          leading: Icon(Icons.add_reaction_sharp),
          trailing:Icon(Icons.apps_sharp),
          onTap: (){
              print('clicked button'); //Don't invoke 'print' in production use logging framework.
          },) ,
          
        ]
      
      ),
    );
  }
}
