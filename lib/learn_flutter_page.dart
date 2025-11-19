import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          }, 
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/einstein.jpg'),
          const SizedBox(height: 10,),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(5.0),
            color: Colors.blueGrey,
            width: double.infinity,
            child: const Center(child: Text('This is a Text', style: TextStyle(color: Colors.white),)),
          ),
          ElevatedButton(onPressed: (){
            debugPrint('Elevated Button');
          }, child: Text('Elevated Button X'),),
          OutlinedButton(onPressed: (){
            debugPrint('Elevated Button');
          }, child: Text('Elevated Button X'),),
        ],
      ),
    );
  }
}