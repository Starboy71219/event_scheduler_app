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
      backgroundColor: Colors.red.shade300,
      appBar: AppBar(
        title: Text('Event Scheduler',style: TextStyle(fontSize: 25)),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      //--------------------------------------------------------------------
      body: ListView.builder(
          itemCount: _list. length,
          itemBuilder: (context, index) {
            return Container(
              height: 80,
                // decoration: BoxDecoration(
                //   shape: BoxShape.rectangle,
                //   border: Border.all(width: 4,color: Colors.red),
                //   borderRadius: BorderRadius.circular(20.0),
                //     color: Colors.white,
                // ),
                child: Center(
                    child: ListTile(
                      textColor: Colors.black,
                      leading: Icon(Icons.schedule,color: Colors.black54,),
                      trailing: Image.asset(
                          'assets/pngtree-one-line-drawing-eagle-bird-'
                              'flying-continuous-vector-illustration-minimalism'
                              '-design-png-image_5046950-removebg-preview.png'),
                      tileColor: Colors.red.shade100,
                      title: _list[index],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                ),
            );
          }
      ),
      //-----------------------------------------------------------------------
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
