import 'package:flutter/material.dart';

void main(){
  runApp(MyPage());}
  class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PointerDemo(),
    );
  }
}
class PointerDemo extends StatefulWidget {
  const PointerDemo({super.key});

  @override
  State<PointerDemo> createState() => _PointerDemoState();
}

class _PointerDemoState extends State<PointerDemo> {
  bool absorb = true;
  bool ignore = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Absorb and Ignore"),
      ),
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Absorb Pointer",style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 10,),
          Text("Turn the switch off to enable the button"),

          SwitchListTile(
            title: Text("Absor Pointer"),
            value: absorb, onChanged: (value){
            setState(() {
              absorb = value;
            });
          }),
          AbsorbPointer(
            absorbing: absorb,
            child: ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Absorb Pointer Button Pressed"),),);
            }, child: Text("Absrob button")),
          ),

          Divider(height: 50,),
       
 Text(
              "IgnorePointer Example",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

             SizedBox(height: 10),

             Text(
              "Turn the switch OFF to enable the button.",
            ),

            // Switch to enable/disable IgnorePointer
            SwitchListTile(
              title:  Text("Ignore Pointer"),
              value: ignore,

              onChanged: (value) {
                setState(() {
                  ignore = value;
                });
              },
            ),

            // IgnorePointer ignores all touch events
            IgnorePointer(
              ignoring: ignore,

              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("IgnorePointer Button Pressed"),
                    ),
                  );
                },

                child: Text("Ignore Button"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

  
  
