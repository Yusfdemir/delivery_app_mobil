import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backgroundCover(context),
          _formContainer(context),
          Column(crossAxisAlignment: CrossAxisAlignment.center,
           children: [
              _logo(),
              _titleText(),
              const Spacer(),
              _footerText(context)
            ],
          ),
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

  Widget _logo() {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0),
      child: Center(
        child: Image.asset(
          "assets/img/delivery.png",
          width: 150,
          height: 150,
          ),
      ),
    );
  }

  Widget _titleText(){
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text(
        "Delivery App",
        style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _formContainer(BuildContext context){
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.33,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child:Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.black12,blurRadius:10, offset: Offset(0,5))
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _formTitle(),
              const SizedBox(height: 20,),
              _textFieldEmail(),
              const SizedBox(height: 20,),
              _textFieldPassword(),
              const SizedBox(height: 20,),
              _loginButton(context),
            ],
          ),
        ) ,
      )
    );
  }

  Widget _formTitle(){
    return Text("Login",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.grey.shade900),);
  }

  Widget _textFieldEmail(){
    return TextField(
      keyboardType:TextInputType.emailAddress,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email_outlined,color: Colors.red,),
        labelText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.red),
        )
      ),
    );
  }

  Widget _textFieldPassword(){
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_outline,color: Colors.red,),
        labelText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.red),
        )
      ),
    );
  }

  Widget _loginButton(BuildContext context){
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: (){

        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15,),
          backgroundColor: Colors.red.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          )
        ),
        child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 18),)
      ),
    );
  }

  Widget _footerText(BuildContext context){
    return Padding(
      padding:const EdgeInsets.only(bottom:30),
      child: GestureDetector(
        onTap: (){},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Do you have an account",style: TextStyle(fontSize: 16,color: Colors.black),),
            Text("Register",style: TextStyle(fontSize: 16,color: Colors.red.shade900,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
 