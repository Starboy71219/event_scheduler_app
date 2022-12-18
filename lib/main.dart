import 'package:flutter/material.dart';
import 'package:event_scheduler_app/NewSchedule.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}
class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex=0;
  final List<Widget> _list=[];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Event Scheduler',style: TextStyle(fontSize: 25)),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      //--------------------------------------------------------------------
      body: ListView.builder(
        padding: EdgeInsets.only(top: 50,bottom: 45,left: 50,right: 50),
            itemCount: _list.length,
            itemBuilder: ((context,index)=>_list[index])),


      floatingActionButton: Builder(
        builder: (context) {
          return FloatingActionButton(
            backgroundColor: Colors.red,
              // currentIndex: currentIndex,
              onPressed: () async {
                String newText=await Navigator.of(context).push(

                    MaterialPageRoute(builder: (context)=>NewSchedule()));
                setState(() {
                  _list.add(Text(newText));
                });
              },
              child: Icon(Icons.add),);
        }
      ),
    );
  }
}
