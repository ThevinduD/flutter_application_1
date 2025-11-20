import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {

  bool isSwitch = false;
  bool? isCheck = false;

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
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: isSwitch ? Colors.blue : Colors.green
            ),
            onPressed: (){
              debugPrint('Elevated Button');
            }, 
            child: Text('Elevated Button X'),
          ),

          OutlinedButton(onPressed: (){
            debugPrint('Elevated Button');
          }, child: Text('Elevated Button X'),),

          TextButton(onPressed: (){
            debugPrint('Elevated Button');
          }, child: Text('Text Button X'),),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: (){
              debugPrint('This is row widget');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.local_fire_department, 
                  color: Colors.blue,
                ),
                Text('Row widget'),
                Icon(
                  Icons.local_fire_department,
                  color: Colors.blue,
                )
              ],
            ),
          ),
          Switch(value: isSwitch, onChanged: (bool newBool) {
            setState(() {
              isSwitch = newBool;
            });  
          }),
          Checkbox(value: isCheck, onChanged: (bool? newBool){
            setState(() {
              isCheck = newBool;
            });
          })
        ],
      ),
    );
  }
}