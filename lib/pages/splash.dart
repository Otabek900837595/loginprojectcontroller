import 'package:flutter/material.dart';
import 'package:loginproject/pages/home.dart';

import '../model/user_model.dart';
import '../service/prefs_service.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:  IconButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          icon: const Icon(Icons.arrow_back_rounded,color: Colors.black,),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Let's Get Started!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    // SizedBox(height: 10,),
                    Text("Create an accaunt to Q Allure to get all features",style: TextStyle(color: Colors.grey,fontSize: 12),),
                  ],
                ),

                const SizedBox(height: 20,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: TextField(
                    controller: name,
                    decoration: InputDecoration(
                      hintText: "name",hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.account_circle_rounded),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(31),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(31),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    style: TextStyle(color: Colors.blue),
                  ),
                ),

                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                      hintText: "email",hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.email),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(31),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(31),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    style: TextStyle(color: Colors.blue),
                  ),
                ),

                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: TextField(
                    controller: phone,
                    decoration: InputDecoration(
                      hintText: "phone",hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.phone_android),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(31),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(31),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    style: TextStyle(color: Colors.blue),
                  ),
                ),

                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: TextField(
                    controller: password,
                    decoration: InputDecoration(
                      hintText: "password",hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.lock),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(31),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(31),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    style: TextStyle(color: Colors.blue),
                  ),
                ),

                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: TextField(
                    controller: confirm,
                    decoration: InputDecoration(
                      hintText: "confirm password",hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.lock),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(31),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(31),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                    style: const TextStyle(color: Colors.blue),
                  ),
                ),

                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: (){
                        userService();
                      },
                      height: 50,
                      minWidth: 150,
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Create",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("All ready an account ",style: TextStyle(color: Colors.grey.shade700),),
                    const SizedBox(width: 4,),
                    TextButton(
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                          },
                        child: Text("Login hare",style: TextStyle(color: Colors.blue.shade900))),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }


  void userService(){
    User user = User(
      "Name: $name",
      "Email: $email",
      "Phone: $phone",
      "Password: $password",
      "Confirm Password: $confirm",
    );
    PrefsService.storeUser(user);
    PrefsService.loadUser().then((value) => {
      // ignore: avoid_print
      print(value?.toJson()),
    });
  }



}
