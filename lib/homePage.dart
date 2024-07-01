
import 'package:firbase_application/customWidjets/addtasksreen.dart';
import 'package:firbase_application/customWidjets/tasklist.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class homePage extends StatefulWidget {

  static String screenRout = "homePge" ; 
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      
        backgroundColor: Color.fromRGBO(52, 91, 17, 1) ,
       
            actions:  [
          
          Row(
                
                children: [
                  SizedBox(width: 10 ,) ,
                  Icon(Icons.list_alt , color: Colors.white  , size: 40) , 
                  SizedBox(width: 5,) , 
                  Container(
                    
                  
                    child: Text(" Todaydo" , style: TextStyle(color: Colors.white  , fontSize: 30 , fontWeight: FontWeight.bold),)) ,
                    SizedBox(width: 180,)

                ],
              ),


          IconButton(
            onPressed: ()  {
             
            

          } , icon: Icon(Icons.exit_to_app ,color: Colors.white ,))

            ]
            
        
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: 
       FloatingActionButton(
        backgroundColor: Colors.indigo[400] ,
        onPressed: (){
          
          showModalBottomSheet(
            context: context  , 
            builder: (context){
              return
             addtasksreen() ; 


            }
          
          ) ; 
         
       } , 
       child: 
       Icon(Icons.add  ,),
       ),
      body: 
      Container(
        color: Color.fromRGBO(52, 91, 17, 1) ,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 60 ) , 
          child: Column(
            children: [
              
              // Row(
              //   children: [
              //     Icon(Icons.list_alt , color: Colors.white  , size: 40) , 
              //     SizedBox(width: 20,) , 
              //     Text("ToDayDo" , style: TextStyle(color: Colors.white  , fontSize: 30 , fontWeight: FontWeight.bold),) , 
              //   ],
              // ) ,
              SizedBox(height: 30 ,) ,  
                
              Consumer<taskData>(builder: (context , mytaskdata , child) {
                return 
              Container(
                width: double.infinity ,
                child: Text("${mytaskdata.tasks.length} tasks" ,
                 style: TextStyle(color: Colors.white ),
                 
                 ) 
                
              ) ; 
              }
              
              ) , 
        
        
                SizedBox(height: 20 , ) , 
        
                Expanded(
                  
        
                    
                    child: Container(
                      
                      
                      
                      decoration: BoxDecoration(
                        color: Colors.white ,  
                        borderRadius: BorderRadius.circular(20) , 
                      ),
                      child: 
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15 , vertical: 40  ) , 
                        child: 
                        tasklist()
                      )  
                    
                    ) 
                  
                ) 
         
        
            ],
          ),
        ),
      )
    ) ; 
  }
}




//we will creat a listtile than can have as title the name of task s

//