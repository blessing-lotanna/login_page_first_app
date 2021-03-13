import 'package:flutter/material.dart';

class PasswordEntry extends StatefulWidget {
  bool viewPassword = true;
  @override
  _PasswordEntryState createState() => _PasswordEntryState();
}

class _PasswordEntryState extends State<PasswordEntry> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment.centerRight,
      children: [
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
              hintText: 'Password'
          ),
          keyboardType: TextInputType.number,
          obscureText: widget.viewPassword,

      ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              setState(() {
                widget.viewPassword = widget.viewPassword ? false : true;
              });
            },
            child:
                widget.viewPassword
                    ?
                Icon(
                  Icons.remove_red_eye_rounded,
                  size: 20,
                )
                    :
                Icon(
                  Icons.remove_red_eye_outlined,
                  size: 20,
                )

          ),
        )
      ]
    );
  }
}
