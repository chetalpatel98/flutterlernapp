
import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/routs.dart';
class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
           color: Colors.white,
       child: Column(
                 
                children: [
                  SizedBox( height: 100,),
                  Image.asset('image/home_page.png'),
                  SizedBox( height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                     style:TextButton.styleFrom(backgroundColor: Colors.black87, fixedSize:Size(90, 40)) ,
                     onPressed:  ()
                      {
                         Navigator.pushNamed(context, MyRoutes.login_page);
                      }, 
                      child: Text('Log in')),


                      SizedBox(width: 20,),


                      ElevatedButton( 
                        style: TextButton.styleFrom(backgroundColor: Colors.black87,fixedSize: Size(90, 40)),
                       onPressed: ()
                       {
                         Navigator.pushNamed(context, MyRoutes.Signin_page);
                       },
                        child: Text('Sign Up')),
                    ],
                  )
                ],
              
            )
    
    );
  }
}