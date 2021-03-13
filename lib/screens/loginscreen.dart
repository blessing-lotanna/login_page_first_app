import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:loginpagefirstapp/widgets/password_entry.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Baby Widgets")
        ),
        leading: Icon(Icons.menu
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/baby_widget.png",
            width: 70,
              height: 70,
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey)
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Username'
                ),
              ),
            ),

            PasswordEntry(),

            ElevatedButton(
              child: Text("Login"),
              onPressed: (){

              },
            ),
            Text("New User? Sign Up"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Container(
                 padding: EdgeInsets.all(5.0),
                 child: Center(
                     child: Text(
                     "T",
                       style: TextStyle(
                           color: Colors.white,
                           fontSize: 18
                       ),
                 )
                 ),
                 decoration:  BoxDecoration(
                   shape: BoxShape.circle,
                   color: Colors.purple,
                 ),
                 width: 50,
                 height: 50,
               ),

                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Center(
                      child: Text(
                          "F",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),
                      )),
                  decoration:  BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple,
                  ),
                  width: 50,
                  height: 50,
                ),

                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Center(
                      child: Text(
                          "G",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),
                      )
                  ),
                  decoration:  BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple,
                  ),
                  width: 50,
                  height: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}