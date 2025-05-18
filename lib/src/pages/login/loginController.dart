import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void goToRegisterPage(){
    Get.toNamed("/register");
  }

  void login() async{
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if(isValidForm(email, password)){
      print("ok");
    }
  }

  bool isValidForm(String email,String password){
    if(email.isEmpty){
      Get.snackbar(
        "Invalid Form",
        "You must enter an email",
        backgroundColor: Colors.yellow.shade900,
        icon: Icon(Icons.error,color: Colors.white,size: 25,)
      );
      return false;
    }
    if(!GetUtils.isEmail(email)){
      Get.snackbar(
        "Invalid Form",
        "You must enter an valid email",
        backgroundColor: Colors.yellow.shade900,
        icon: Icon(Icons.error,color: Colors.white,size: 25,)
      );
      return false;
    }
    if(password.isEmpty){
      Get.snackbar(
        "Invalid Form",
        "You must enter an password",
        backgroundColor: Colors.yellow.shade900,
        icon: Icon(Icons.error,color: Colors.white,size: 25,)
      );
      return false;
    }
    return true;
  }
}