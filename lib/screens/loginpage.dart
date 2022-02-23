import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class login_page extends StatelessWidget
 {
  var ishover =true;

  @override
  Widget build(BuildContext context) {
    return Material(
      
      color: Colors.white,
      child: Column(
        children: [
         SizedBox( height: 100, ),
          Image.asset('image/login_image.png',fit:BoxFit.cover ,),
          SizedBox( height: 30,),
          Text('Login',style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),),
          SizedBox( height: 20,),
         
         Padding(padding:EdgeInsets.symmetric(vertical: 10,horizontal: 20), 
          child: Column(
             
            children: [
              TextFormField(
                decoration:InputDecoration(
                  hintText: "enter your name",
                  labelText: "Name",
                ),
              ),
              TextFormField(
                 obscureText: true,
                decoration:InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  
                ),
              ),
            ],
         )
         ),
         SizedBox(height: 40,),
           
          Row(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
               
               onPressed:(){}, 
               style:TextButton.styleFrom(padding:EdgeInsets.symmetric(horizontal: 35,)),
               child:Text("Login"),
               ),
               SizedBox(
                 width: 20,
               ),
                ElevatedButton(
               
               onPressed:(){}, 
               style:TextButton.styleFrom(padding:EdgeInsets.symmetric(horizontal: 35,)),
               child:Text("Cancel"),
               ),
            ],
          ),
        


        ],
      ),
    );
  }
}