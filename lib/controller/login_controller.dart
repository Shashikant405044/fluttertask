import 'package:flutter/material.dart';
import 'package:flutter_assessment_demo/views/home_page.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
 late TextEditingController emailController;
 late TextEditingController passwordController;


   RxString errorEmail = "".obs;
  RxString errorPassword = "".obs;

  


  @override
  void onInit() async{
    emailController = TextEditingController();  
    passwordController =  TextEditingController();
    super.onInit();
  }


  
  void onChangeEmail({required String  value}){
    if(value.isEmpty){
      errorEmail.value = "enter email";
    } else{
      errorEmail.value = "";
    }
  }


  void onChangePassword({required String  value}){
    if(value.isEmpty){
      errorPassword.value = "enter password";
    } else if(passwordController.text.length < 8){
      errorPassword.value = "Password length should be 8 digit";
    } else{
      errorPassword.value = "";
    }
  }


    //creating method for validation
  Future<void> login()async{
    if(await validation()){  
      Get.to(const HomePage());
    }

  }


  Future<bool> validation()async{
    if(emailController.text.isEmpty){
      errorEmail.value = "Enter Email";
      return false;
    } else if(passwordController.text.isEmpty){
      errorPassword.value = "Enter password";
      return false;
    }else if(passwordController.text.length < 8) {
      errorPassword.value = "Password length should be 8 digit";
      return false;
    } else{
      return true;
    }
  }


}