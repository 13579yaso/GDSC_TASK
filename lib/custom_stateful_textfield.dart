import 'package:flutter/material.dart';
class CustomStateFulTextField extends StatefulWidget {
  final String label;
  final TextEditingController? controller;
  final TextInputType? keyboard;
  CustomStateFulTextField({required this.label,this.controller, this.keyboard});

  @override
  State<CustomStateFulTextField> createState() => CustomStateFulTextFieldState();
}

class CustomStateFulTextFieldState extends State<CustomStateFulTextField> {

  Color PurpilColor = Colors.purple;
  bool secure=true;
  bool isenable =false;
  bool show=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8,right: 8),
      child: TextField(
        onTap: (){
          setState((){
            isenable=!isenable;
          });
        },
        cursorColor: PurpilColor,
        controller: widget.controller,
        obscureText: secure,
        keyboardType:widget.keyboard,
        decoration: InputDecoration(
          fillColor: Colors.grey,
          filled: true,
          prefixIcon: Icon(
              Icons.lock_outline_sharp,
            color:isenable?PurpilColor:Colors.white,
          ),
          suffixIcon: InkWell(
            onTap: (){
              setState((){
                secure=!secure;
                show=!show;
              });
            },
            child:
            Icon(
                secure
                    ?
                Icons.visibility_off_outlined
                    :
                Icons.visibility,
              color:show?PurpilColor:Colors.white,
            ),
          ),
          labelText: widget.label,
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          floatingLabelStyle: TextStyle(
              color: PurpilColor,

          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 2,
              color: Colors.grey,

            ),

          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
                width: 2,
                color: PurpilColor

            ),

          ),

        ),
      ),
    );
  }
}
