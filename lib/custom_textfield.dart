import 'package:flutter/material.dart';
class CustomTextField extends StatefulWidget {
  final String label;
  final TextEditingController? customController;
  final TextInputType? keyboard;
  final IconData? icon;

  CustomTextField(
      {required this.label,  this.customController, this.keyboard, this.icon});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
bool isenable =false;

  @override
  Color PurpilColor = Colors.purple;

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
        controller: widget.customController,
        keyboardType: widget.keyboard,
        decoration: InputDecoration(
          fillColor: Colors.grey,
          filled: true,
          prefixIcon: Icon(
            widget.icon,color:isenable?PurpilColor:Colors.white,
          ),
          labelText: widget.label,
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          floatingLabelStyle: TextStyle(
              color: PurpilColor
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