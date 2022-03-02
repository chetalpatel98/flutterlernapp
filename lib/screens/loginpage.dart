

import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/routs.dart';
import 'package:google_fonts/google_fonts.dart';
class login_page extends StatefulWidget
 {
  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  var ishover =true;
  bool loginbutten =false;
 final _formkey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      
      color: Colors.white,
      child: Column(
        children: [
           SizedBox( height: 70, ),
          
         SizedBox( height: 30, ),
          Image.asset('image/login_image.png',fit:BoxFit.cover ,),
          SizedBox( height: 30,),
          Text('Login',style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),),
          SizedBox( height: 20,),
         
        
         
            Padding(padding:EdgeInsets.symmetric(vertical: 10,horizontal: 20), 
            child: Column(
               key: _formkey,
              children: [
                TextFormField(
                  decoration:InputDecoration(
                    hintText: "enter your email",
                    labelText: "Email",
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
               style:TextButton.styleFrom(padding:EdgeInsets.symmetric(horizontal: 35,),backgroundColor: Colors.black87),
               child:Text("Login"),
               ),
               SizedBox(
                 width: 20,
               ),
                ElevatedButton(
               
               onPressed:(){}, 
               style:TextButton.styleFrom(padding:EdgeInsets.symmetric(horizontal: 35,),backgroundColor: Colors.black87),
               child:Text("Cancel"),
               ),
            ],
          ),
        SizedBox(height: 110,),
        Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
                
           MaterialButton(
                      onPressed: () { 
                        Navigator.pushNamed(context, MyRoutes.Home_page);
                        },
                       color: Colors.black87,
                       textColor: Colors.white,
                        child: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                               size: 16,
                                    ),
                        padding: EdgeInsets.all(5),
                      shape: CircleBorder(),
                      )
             ],
          ),


        ],
      ),
    );
  }
}