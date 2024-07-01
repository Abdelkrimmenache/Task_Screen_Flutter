


import 'package:flutter/material.dart';
import 'package:path/path.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

//  List<UserModel> userList = []  ; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"), 
      ),
 
      // body:  getAllUser() 
      


    

    );
  }
  
  // getAllUser() {
  // return FutureBuilder(
  //   future: _getData() ,
  //   builder: (Context , snaphot ) {
  //     return creatListView(context , snaphot )  ; 

  //   }
     
     
     
  //    )


  // }
  
  // Future<List<UserModel>> _getData() async  {
  
  //   DatatbaseHelper.db.getAllUser().then((value) {
  //     print(value)  ; 
  //     userList = value ; 

  //   }) ;

  //   return userList ; 

  // }
  
  // creatListView(Context context, AsyncSnapshot<List<UserModel>> snaphot) {


    
  // } 
}