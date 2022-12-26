import 'package:flutter/material.dart';
import 'package:loginproject/pages/splash.dart';

import '../service/prefs_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                const Image(
                  height: 190,
                  width: double.infinity,
                  image: AssetImage("assets/images/p.jpg")
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Welcome back!",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Log in is to your existant accaunt of Q Allure",style: TextStyle(color: Colors.grey,fontSize: 11,fontWeight: FontWeight.bold)),
                  ],
                ),

                SizedBox(height: 10,),

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
                      prefixIcon: Icon(Icons.account_circle_rounded),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(31),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(31),
                          borderSide: BorderSide(color: Colors.grey)
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
                    controller: name,
                    decoration: InputDecoration(
                      hintText: "password",hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.lock),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(31),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(31),
                          borderSide: BorderSide(color: Colors.grey)
                      ),
                    ),
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(margin: const EdgeInsets.symmetric(horizontal: 20),child: Text("Forgot Password?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: (){
                        dateService();
                        dateService1();
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
                          Text("Log in",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Or connect using",style: TextStyle(color: Colors.grey)),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: (){},
                      height: 50,
                      minWidth: 120,
                      color: Colors.blue.shade800,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Facebook",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),)
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    MaterialButton(
                      onPressed: (){},
                      height: 50,
                      minWidth: 120,
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Google",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text("Don't have an accaunt?",style: TextStyle(color: Colors.grey.shade700),),
                    SizedBox(width: 4,),
                    TextButton(
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SplashPage()));
                        },
                        child: Text("Sign up",style: TextStyle(color: Colors.blue.shade900))),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }


  void dateService(){
    PrefsService.storeName("Email: ${email.text}");
    PrefsService.loadName().then((value) => {

      print(value),
    });
  }
  void dateService1(){
    PrefsService.storeName("Password: ${name.text}");
    PrefsService.loadName().then((value) => {
      print(value),
    });
  }


}
