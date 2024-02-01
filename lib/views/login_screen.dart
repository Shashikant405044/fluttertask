import 'package:flutter/material.dart';
import 'package:flutter_assessment_demo/controller/login_controller.dart';
import 'package:flutter_assessment_demo/views/home_page.dart';
import 'package:get/get.dart';



class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

   final loginController = Get.put(LoginController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login',style: TextStyle(color: Colors.black),),
        centerTitle: true,
         backgroundColor: Colors.transparent,
        leading: const Icon(Icons.keyboard_arrow_left,color: Colors.black,),
      ),
      body:
       Column(
         mainAxisSize: MainAxisSize.min,
         children: [
          const SizedBox(height: 30,),
          Container(
            margin: const EdgeInsets.only(left: 30,right: 30,bottom: 10),
             child: Obx(() => 
             TextField(
              controller: loginController.emailController,
               maxLines: 1,
              onChanged: (value) => loginController.onChangeEmail(value: value),
               decoration: InputDecoration(
                 border: const UnderlineInputBorder(),
                 hintText: "Email",
                 errorText: loginController.errorEmail.value.isEmpty
                 ? null
                 : loginController.errorEmail.value,
                 prefixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.email_rounded,color: Colors.grey)),
               ),
               keyboardType: TextInputType.emailAddress,
               textInputAction: TextInputAction.next,
             ),
          ) 
             
           ),
           const SizedBox(height: 10,),
            Container(
              margin: const EdgeInsets.only(left: 30,right: 30,bottom: 10),
              child: Obx(() =>  
              TextField(
              controller: loginController.passwordController,
              maxLines: 1,
           onChanged: (value) => loginController.onChangePassword(value: value),
           textInputAction: TextInputAction.done,
            keyboardType: TextInputType.phone,
               decoration: InputDecoration(
                 border: const UnderlineInputBorder(),
                 hintText: "Password",
                 errorText: loginController.errorPassword.value.isEmpty
                 ? null
                 : loginController.errorPassword.value,
                 prefixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.lock,color: Colors.grey,)),
               ),
              
              ),
            )
             
            ),
            const SizedBox(height: 20,),
            TextButton(
                  onPressed: () async{    
                    if(await loginController.validation()){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));   
                    }
                  },
                  child: Container(
                    height: 45,
                    width: double.maxFinite,
                    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: const Center(
                      child: Text(
                        'Log In',style: TextStyle(color: Colors.white, fontSize: 16.0), 
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),


              const SizedBox(
                child: Text(
                  '....................OR....................'
                  )),

                 const SizedBox(height: 10,),

                
            TextButton(
                  onPressed: () {
                    
                  },
                  child: Container(
                    height: 45,
                    width: double.maxFinite,
                    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: const Center(
                      child: Text(
                        'Sign In',style: TextStyle(color: Colors.white, fontSize: 16.0),
                        
                      ),
                    ),
                  ),
                ),
         ],
       ),
    ); 
  }

}