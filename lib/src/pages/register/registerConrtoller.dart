import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void goToLoginPage(){
    Get.toNamed("/");
  }

  void register(){
    String email = emailController.text.trim();
    String firstName = firstNameController.text.trim();
    String lastName = lastNameController.text.trim();
    String phone = phoneController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();

    if(isValidForm(email, firstName, lastName, phone, password, confirmPassword)){
      print("User register with email : $email ");
    }
  }

  bool isValidForm(String email,String firstName,String lastName,String phone,String password,String confirmPassword){
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
    
    if(firstName.isEmpty){
      Get.snackbar(
        "Invalid Form",
        "You must enter an First Name",
        backgroundColor: Colors.yellow.shade900,
        icon: Icon(Icons.error,color: Colors.white,size: 25,)
      );
      return false;
    }
    if(lastName.isEmpty){
      Get.snackbar(
        "Invalid Form",
        "You must enter an Last Name",
        backgroundColor: Colors.yellow.shade900,
        icon: Icon(Icons.error,color: Colors.white,size: 25,)
      );
      return false;
    }

    if(phone.isEmpty){
      Get.snackbar(
        "Invalid Form",
        "You must enter an phone number",
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
    if(confirmPassword.isEmpty){
      Get.snackbar(
        "Invalid Form",
        "You must enter password again",
        backgroundColor: Colors.yellow.shade900,
        icon: Icon(Icons.error,color: Colors.white,size: 25,)
      );
      return false;
    }
    if(password != confirmPassword){
      Get.snackbar(
        "Invalid Form",
        "Passwords do not match",
        backgroundColor: Colors.yellow.shade900,
        icon: Icon(Icons.error,color: Colors.white,size: 25,)
      );
      return false;
    }

    return true;
  }
}