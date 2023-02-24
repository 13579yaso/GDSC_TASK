import 'package:flutter/material.dart';
import 'custom_stateful_textfield.dart';
import 'custom_textfield.dart';
class RegisterScreen extends StatelessWidget {
   RegisterScreen({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
   Color PurpilColor = Colors.purple;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
             children: [
               Image.asset('assets/photo.jpg',
                   width:double.infinity,fit: BoxFit.fill,),
                 Text(
        'Register',
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
      ),
             ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                height: 50,
                child:CustomTextField(
                  label: "Full Name",
                  customController: nameController,
                  keyboard: TextInputType.name,
                  icon: Icons.person_outline,
                )
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 50,
                child: CustomTextField(
                  label: "Phone Number",
                  customController: phoneController,
                  keyboard: TextInputType.phone,
                  icon: Icons.phone_outlined,
                )
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 50,
                child: CustomTextField(
                  label: "Email",
                  customController: emailController,
                  keyboard: TextInputType.emailAddress,
                  icon: Icons.email_outlined,
                )
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              child: CustomStateFulTextField(
                label: "Password",
                controller: passwordController,
                keyboard: TextInputType.visiblePassword,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              child: CustomStateFulTextField(
                label: "Confirm Password",
                keyboard: TextInputType.visiblePassword,
              ),
            ),
            SizedBox(
              height: 20,

            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: PurpilColor.withOpacity(0.1),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: PurpilColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Register",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                  ),

                  ),
                ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: PurpilColor.withOpacity(0.1),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
              border: Border.all(
                  color: PurpilColor
              ),
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Login",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: PurpilColor
                  ),
                  ),

                ),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ) ,
    );
  }
}
