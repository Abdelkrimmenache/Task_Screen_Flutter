
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class tasklist extends StatefulWidget {
    
 


  @override
  State<tasklist> createState() => _tasklistState();
}

class _tasklistState extends State<tasklist> {
  @override
  Widget build(BuildContext context) {
    return  Consumer<taskData>(
      builder: (context , mytextdata , child ){
        return 
       ListView.builder(
        itemCount: mytextdata.tasks.length  ,
        itemBuilder: (context , i ) {
      return
      
      ListTile(
        title: Text("${mytextdata.tasks[i].name}" , 
        style: TextStyle(decoration: 
        mytextdata.tasks[i].ischecked ?
        TextDecoration.lineThrough :
        TextDecoration.none 
        
        ),
        
        )  , //here we add the name of the task , 
        trailing: Checkbox(
          value: mytextdata.tasks[i].ischecked,
           onChanged: (val){    
            mytextdata.tasks[i].ischecked = val! ; 

            setState(() {
              
            });
      
        }
        
        ) ,
         //here we add the checkbox 
        onLongPress: (){
          mytextdata.deletetask(mytextdata.tasks[i]) ; 

          
        },
      );
      
      });
      }
    ) ;
}
}





class taskData extends ChangeNotifier {

  List<task> tasks = [
    task(name: "the first thing" , ischecked: false )   , 
    task(name: "the second thing"  , ischecked: false )    , 
    task(name: "the thirddd thing   " , ischecked: false  ) ,   
  ] ; 

  addnewtask (String newtasktitle){
    tasks.add(task(ischecked: false , name: newtasktitle ))  ; 
    notifyListeners() ; 
  }

  deletetask (task deletedtask) {
    tasks.remove(deletedtask) ; 
    notifyListeners() ;
 
  }

   
}


class task {
  final  String? name  ; 
   bool ischecked  = false  ; 

  task({this.name , required this.ischecked }) ;
}
