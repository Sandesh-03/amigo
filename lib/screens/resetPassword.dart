

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}
 TextEditingController emailController = TextEditingController();


class _ResetPasswordState extends State<ResetPassword> {

@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
  }
  @override
  Future passwordReset() async {
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailController.text);
      showDialog(context: context, builder:(context){
        return const AlertDialog(
          content: Text("Reset link sent to your Email"),
        );
      });
    }on FirebaseAuthException catch (e){

      showDialog(context: context, builder:(context){
        return AlertDialog(
          content: Text(e.message.toString()),
        );
      });
    }

  }
Widget build(BuildContext context) {



    final emailField = TextFormField(
        autofocus: false,
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Please Enter Your Email");
          }
          // reg expression for email validation
          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              .hasMatch(value)) {
            return ("Please Enter a valid email");
          }
          return null;
        },
        onSaved: (value) {
          emailController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          fillColor: Colors.grey.shade100,
          filled: true,
          prefixIcon: const Icon(Icons.mail),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          const Padding(padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50)),
          Row(mainAxisAlignment: MainAxisAlignment.center,

          children: const [
            Text('Enter your email to reset password')
          ],
          ),
          const SizedBox(height: 30,),
          Card(
            child: emailField,
          ),
          const SizedBox(height: 30,),
          Card(
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(30),
              color: Colors.redAccent,
              child: MaterialButton(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                minWidth: MediaQuery.of(context).size.width,
                  onPressed: (){
                   setState(() {
                     passwordReset();
                   });
                  },
                child: const Text(
                  "Submit",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),

              ),
            )
            ),
          ),

        ],
      ),
    );
  }
}
