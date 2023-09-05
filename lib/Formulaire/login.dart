import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon Compte Fly'),
        backgroundColor: Color(0xFF082E70),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 20,),
            decoration: BoxDecoration(
              color:const Color(0xFF082E70),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 15,),
                    WidgetAnimator(
                              atRestEffect: WidgetRestingEffects.swing(),
                              child:Container(
                              margin: const EdgeInsets.only(bottom: 20),
                              decoration: BoxDecoration(
                                border:Border.all(
                                  color: const Color.fromARGB(255, 232, 236, 243),
                                  width: .2
                                ),
                                ),
                              child: Image.asset("assets/images/logo.png",height: 120),
                            ),
                        ),
                         const SizedBox(height: 15,),
                   TextFormField(
                     decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Votre Email',style: TextStyle(color: Color(0xFF2c2c54)),),
                      fillColor: Colors.white,
                      filled: true,
                       suffixIcon: Icon(Icons.email),
                     ),
                  ),
                  const SizedBox(height: 20,),
                   TextFormField(
                     decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Votre mot de passe',style: TextStyle(color: Color(0xFF2c2c54)),),
                      fillColor: Colors.white,
                      filled: true,
                       suffixIcon: Icon(Icons.visibility),
                     ),
                     obscureText: true,
                  ),

                   const SizedBox(height: 20,),
      
                   SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width/2,
                    child: ElevatedButton(
                      child: const Text("Connexion",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                      onPressed: (){},
                    ),
                   ),
                   const SizedBox(height: 100,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  
  }
}