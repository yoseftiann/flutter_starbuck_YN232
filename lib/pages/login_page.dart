import 'package:flutter/material.dart';
import 'package:qualif_yn232/pages/home_page.dart';
import 'package:qualif_yn232/pages/main_page.dart';
import 'package:qualif_yn232/utils/gap.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //Variables
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  String? usernameError;
  String? passwordError;
  String? emailError;

  bool isValidate = true;

  void resetError(){
    setState(() {
      isValidate = true;
      usernameError = null;
      passwordError = null;
      emailError = null;
    });
  }

  void validation(){
    resetError();
    //3 Unique validation
    String username = usernameController.text;
    String password = passwordController.text;
    String email = emailController.text;

    //Is empty
    if(username.isEmpty){
      setState(() {
        usernameError = "Username cannot be empty [!]";
        isValidate = false;
        return;
      });
    }else if(username.length > 25 ){ //length
      setState(() {
        usernameError = "Username cannot have more than 25 Character's [!]";
        isValidate = false;
        return;
      });
    }

    if(password.isEmpty){
      setState(() {
        passwordError = "Password cannot be empty [!]";
        isValidate = false;
        return;
      });
    }

    if(email.isEmpty){
      setState(() {
        emailError = "Email canot be empty [!]";
        isValidate = false;
        return;
      });
    }else if(!email.contains("@")){ //contains
      setState(() {
        emailError = "Email must contain @ [!]";
        isValidate = false;
        return;
      });
    }

    //if succeed
    if(isValidate){
      Navigator.pushReplacement(
      context, 
      MaterialPageRoute(builder: (context) {
        return MainPage();
      })
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //bacground image
          Image.asset('assets/loginBackground.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          )
          ,
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(
                  // alignment: Alignment.bottomCenter,
                  // height: MediaQuery.of(context).size.height,
                  // child: SingleChildScrollView(
                    // child: Expanded(
                      // child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // children:[
                              //Widget
                              Gap(30.0),
                              Image.asset('assets/starbucks_logo.png'),
                              Gap(10.0),
                              const Align(
                                alignment: Alignment.centerLeft ,
                                child: Text(
                                      "Welcome",
                                      style: TextStyle(
                                        fontSize: 54.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    )
                                ),
                                const Align(
                                alignment: Alignment.centerLeft ,
                                child: Text(
                                      "to Starbucks",
                                      style: TextStyle(
                                        fontSize: 54.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    )
                                ),
                              const Align(
                                alignment: Alignment.centerLeft ,
                                child: Text(
                                  "Find your favorite coffee now",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.0,
                                    wordSpacing: 3.0,
                                    letterSpacing: 0.75
                                  ),
                                  )
                              ),
                              const SizedBox(height: 10.0),
                              TextField(
                                controller: usernameController,
                                decoration: InputDecoration(
                                  errorText: usernameError,
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white)
                                  ),
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white)
                                  ),
                                  labelText: "Username",
                                  labelStyle: const TextStyle(
                                    fontSize: 16.0,   // Adjust the font size as needed
                                    color: Colors.white,   // Change the font color here
                                  ),
                                ),
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white
                                ),
                              ),
                              TextField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  errorText: emailError,
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white)
                                  ),
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white)
                                  ),
                                  labelText: "Email",
                                  labelStyle: const TextStyle(
                                    fontSize: 16.0,   // Adjust the font size as needed
                                    color: Colors.white,   // Change the font color here
                                  ),
                                ),
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white
                                )
                              ),
                              TextField(
                                controller: passwordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                  errorText: passwordError,
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white)
                                  ),
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white)
                                  ),
                                  labelText: "Password",
                                  labelStyle: const TextStyle(
                                    fontSize: 16.0,   // Adjust the font size as needed
                                    color: Colors.white,   // Change the font color here
                                  ),
                                ),
                                style: const TextStyle(
                                  color: Colors.white
                                ),
                              ),
                              Gap(20.0), //SizedBox
                              Container(
                                width: double.infinity,
                                child: TextButton(
                                  onPressed: () {
                                    validation();
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    )
                                  ), 
                                  child: const Text(
                                    "Log In",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                    ),
                                    )
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.black54,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    )
                                  ), 
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const[
                                      Icon(
                                        Icons.facebook,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(width: 5.0),
                                      Text(
                                        "Continue With Facebook",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                              ),
                              Gap(10.0),
                              const Align(
                                alignment: Alignment.centerLeft ,
                                child: Text(
                                  "By continuing, you agree to the Starbucks Terms & Conditions.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.0,
                                    wordSpacing: 3.0,
                                    letterSpacing: 0.75
                                  ),
                                  )
                              ),
                              Gap(20.0)
                          // ],
                        // ),
                    // ),
                  // ),
                // ),
              ],
            ),
          ),
          ),
        ],
      )
    );
  }
}