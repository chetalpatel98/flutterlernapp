

import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/routs.dart';
class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    Material(
    child:  SingleChildScrollView(
      child: Padding(
        padding:EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 70,),

                                  Text('Sign Up',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 35),),

            
            SizedBox(height: 30,),
            Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "enter your name",
                    labelText: "Name",
                    labelStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.black87)
                  ),
                ),
                SizedBox(height: 20,),
                  TextFormField(
         keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText:"Email",
                    labelText: "Enter your email",
                    labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black87)
                  ),),
                    SizedBox(height: 20,),
                TextFormField(
         keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    hintText:"Birth date",
                    labelText: "Birth Date",
                    labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black87)
                  ),
                ),
                  SizedBox(height: 20,),
                 TextFormField(
         keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText:"Contact No",
                    labelText: " Mobile No",
                    labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black87)
                  ),),
                   SizedBox(height: 20,),
                   TextFormField(
                     
         keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
          
                    hintText:"Addresss",
                    labelText: "Address",
                    labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black87)
                  ),),
                   SizedBox(height: 20,),
                   TextFormField(
                     obscureText: true,
                  decoration: InputDecoration(
                    
                    hintText:"Password",
                    labelText: "Enter 8 Digit Password",
                    labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black87)
                  ),),
                   SizedBox(height: 20,),
                   TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
          
                    hintText:"ReEnter-Password",
                    labelText: "ReEnter Password",
                    labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black87)
                  ),),

              ],
              
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () {},
            style: TextButton.styleFrom(minimumSize: Size(330, 35),backgroundColor: Colors.black87),
             child: Text("Submit")),
           
           SizedBox(height: 50,),

            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                         
           MaterialButton(
                      onPressed: () { Navigator.pushNamed(context, MyRoutes.Home_page);},
                       color: Colors.black87,
                       textColor: Colors.white,
                        child: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                               size: 16,
                                    ),
                        padding: EdgeInsets.all(5),
                      shape: CircleBorder(),
                      ),
                 SizedBox(width: 110,height: 30,),     
                      MaterialButton(
                      onPressed: () { Navigator.pushNamed(context, MyRoutes.login_page);},
                       color: Colors.black87,
                       textColor: Colors.white,
                        child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                               size: 16,
                                    ),
                        padding: EdgeInsets.all(5),
                      shape: CircleBorder(),
                      ),
    
             ],
          ),
        
          ],
        ),
      )
    ),
    );
  }
}