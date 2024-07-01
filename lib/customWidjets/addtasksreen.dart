
import 'package:firbase_application/customWidjets/tasklist.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class addtasksreen extends StatefulWidget {
  
  const addtasksreen({super.key});

  @override
  State<addtasksreen> createState() => _addtasksreenState();
}

class _addtasksreenState extends State<addtasksreen> {
  
  TextEditingController mycontroller = TextEditingController() ;  
  
  @override
  Widget build(BuildContext context) {
    return Container(
     
     child: 
     Padding(
       padding:  EdgeInsets.symmetric(vertical: 20 , horizontal: 15 ) , 
       child:
       Consumer<taskData>(builder: (context , mytaskdata , child ){
        return 
        Column(
        children: [
          Text("Add Task" , style: TextStyle(color: Colors.indigo[400] , fontSize: 30 , fontWeight: FontWeight.bold),) , 
          TextFormField(
            controller:  mycontroller ,
       
          ) , 

          SizedBox(
            height: 30 ,
          ) , 
       
          MaterialButton(
            
            minWidth: double.infinity ,
            onPressed: (){
              
              mytaskdata.addnewtask(mycontroller.text) ;   

              Navigator.of(context).pop(context) ;

              // mytaskdata.addnewtask(mycontroller!.text) ; 

            } ,
            color: Colors.green , 
            child: 
            Text("add"), 
          )
          
        ],
       );

       })
     ),
    ) ; 
  }
}

