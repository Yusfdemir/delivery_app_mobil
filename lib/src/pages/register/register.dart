import 'package:delivery_app_mobil/src/pages/register/registerConrtoller.dart';
import 'package:delivery_app_mobil/src/widgets/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  RegisterController con = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          _backgroundCover(context),
          _buttonBack(),
          _ImageUser(context,),
          _boxForm(context)
        ],
      ),
    );
  }

  Widget _backgroundCover(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.red.shade900,Colors.red.shade300],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
        )
      ),
    );
  }

  Widget _buttonBack(){
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(left: 20),
        child: IconButton(
          onPressed: ()=>con.goToLoginPage(), 
          icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 28,)
        ),
      )
    );
  }

  Widget _ImageUser(BuildContext context){
    return SafeArea(
      child:Container(
        margin: EdgeInsets.only(top: 30),
        alignment: Alignment.topCenter,
        child: GestureDetector(
          onTap: (){},
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/img/profile.png'),
            radius: 60,
            backgroundColor: Colors.white,
          ),
        ),
      ) 
    );
  }

  Widget _boxForm(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      margin: EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.3,left: 30,right: 30 ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [BoxShadow(color: Colors.black26,blurRadius: 15,offset: Offset(0,5))],
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _textYourInfo(),
            const SizedBox(height: 20,),
            CustomTextField(hintText: "Email", icon: Icons.email_outlined, iconColor: Colors.red,controller: con.emailController,),
            const SizedBox(height: 20,),
            CustomTextField(hintText: "First Name", icon: Icons.person, iconColor: Colors.red,controller: con.firstNameController,),
            const SizedBox(height: 20,),
            CustomTextField(hintText: "Last Name", icon: Icons.person, iconColor: Colors.red,controller: con.lastNameController,),
            const SizedBox(height: 20,),
            CustomTextField(hintText: "Phone", icon: Icons.phone, iconColor: Colors.red,controller: con.phoneController,),
            const SizedBox(height: 20,),
            CustomTextField(hintText: "Password", icon: Icons.lock, iconColor: Colors.red,isPassword: true,controller: con.passwordController,),
            const SizedBox(height: 20,),
            CustomTextField(hintText: "Confirm Password", icon: Icons.lock, iconColor: Colors.red,isPassword: true,controller: con.confirmPasswordController,),
            const SizedBox(height: 20,),
            _registerButton(context)
          ],
        ),
      ),
    );
  }  

  Widget _textYourInfo(){
    return Center(
      child: Text("Enter Your Information",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black87),),
    );
  }

  Widget _registerButton(BuildContext context){
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: ()=> con.register(),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15,),
          backgroundColor: Colors.red.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          )
        ),
        child: Text("Register",style: TextStyle(color: Colors.white,fontSize: 18),)
      ),
    );
  }
}