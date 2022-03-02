

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/screens/signpage.dart';
import 'package:flutter_application_2/utils/routs.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
     final myimage="https://scontent.fstv5-1.fna.fbcdn.net/v/t1.6435-9/69667497_102516797795686_3735024343671898112_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=5ooHmQEGDI4AX8Sa1vg&_nc_oc=AQlnryQZk1yaSHuKYhL5GmZKJN1D73_gf_mQtBnQwm4hPEzRg4XGpRa-pit7kUqNPMU&_nc_ht=scontent.fstv5-1.fna&oh=00_AT-2lTxOxfTq09lS2bM0JVEhdBf9ccHU3sITUIqI9q3S_A&oe=624376C6";

    return Drawer(
      backgroundColor: Colors.black87,
      child: Container(
        child:ListView(
          children: [
            DrawerHeader(
              
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text('Chetal patel'),
                 accountEmail: Text('chetalpatel14@gmail.com'),
                 currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(myimage)),
                 )
              ),
              ListTile(
                leading: Icon(CupertinoIcons.home,color: Colors.white,),
                subtitle: Text('home page',style: TextStyle(color: Colors.white38),textScaleFactor:0.9,),
                trailing: Icon(CupertinoIcons.arrow_right_circle_fill,color: Colors.white,),
                title: Text('Home ',style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
                onTap: (){Navigator.pushNamed(context, MyRoutes.Home_page);},
              ),

               ListTile(
                leading: Icon(CupertinoIcons.person,color: Colors.white,),
                subtitle: Text('login page',style: TextStyle(color: Colors.white38),textScaleFactor:0.9,),
                trailing: Icon(CupertinoIcons.pencil_circle_fill,color: Colors.white,),
                title: Text('Log In ',style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
                onTap: (){Navigator.pushNamed(context, MyRoutes.login_page);},
              ),

               ListTile(
                 onTap: () {
                   Navigator.pushNamed(context, MyRoutes.Signin_page);
                 },
                leading: Icon(CupertinoIcons.person_add,color: Colors.white,),
                subtitle: Text('signup page',style: TextStyle(color: Colors.white38),textScaleFactor:0.9,),
                trailing: Icon(CupertinoIcons.add_circled_solid,color: Colors.white,),
                title: Text('Sign Up ',style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
              )
          ],
        ),
      ),
      
    );

  }
}