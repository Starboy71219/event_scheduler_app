import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: NewSchedule(),
  ));
}
class NewSchedule extends StatefulWidget{
  @override
  State<NewSchedule> createState() => _NewScheduleState();
}

class _NewScheduleState extends State<NewSchedule> {
  final TextEditingController _textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.red[700],
        title: Text('Schedule New Event',style: TextStyle(fontSize: 20,
            color: Colors.white),),
      ),
      //------------------------------------------------------------------
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image:
              AssetImage('assets/e1b44d529f57720abd8bc1531c487131.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 230.0,bottom: 20,left: 60,right: 60),

              child: Container(
                margin: EdgeInsets.all(1.0),
                // hack textfield height
                padding: EdgeInsets.only(bottom: 15.0),

                child: TextField(
                  // decoration: InputDecoration(
                  //   hintText: "Comment!",
                  //   border: OutlineInputBorder(),
                  // ),
                  minLines: 1,
                  maxLines: 3,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    fillColor: Colors.red[700],
                    hintStyle: TextStyle(color: Colors.white60),

                    hintText: 'Type new Event',

                    // fillColor: Colors.white70),
                  ),
                  controller: _textEditingController,
                ),
              ),
            ),
            SizedBox(
              width: 260,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  backgroundColor: Colors.redAccent,
                  ),
                onPressed: (){
                String newEvent=_textEditingController.text;
                Navigator.of(context).pop(
                  newEvent
                );
              }, child: Text('ADD',style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            )
          ],
        )
    ),
      )
    );
  }
}