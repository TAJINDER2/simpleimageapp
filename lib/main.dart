import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 234, 234),
        appBar: AppBar(
          title: Text(
            "SIMPLE IMAGE APP",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Text(
                "Image From Local Assets",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Image.asset("images/photo.webp", height: 209, width: 922),
              SizedBox(height: 10),
              Text(
                "Image from Network",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Image.network(
                "https://media.istockphoto.com/id/471926619/photo/moraine-lake-at-sunrise-banff-national-park-canada.jpg?s=612x612&w=0&k=20&c=mujiCtVk5QA697SD3d8V8BGmd91-8HlxCNHkolEA0Bo=",
                height: 209,
                width: 922,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
