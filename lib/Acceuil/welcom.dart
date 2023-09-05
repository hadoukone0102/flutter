import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

// ignore: camel_case_types
class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        color:  const Color(0xFF082E70),
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const SizedBox(height: 40),
              WidgetAnimator(
                atRestEffect: WidgetRestingEffects.swing(),
                child: Container(
                   padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border:Border.all(
                      color: const Color.fromARGB(255, 232, 236, 243),
                      width: .1
                    ),
                    boxShadow: const[
                      BoxShadow(
                        color:Color(0xFF082E70),
                        blurRadius: 5.0,
                        offset: Offset(0,3),
                      )
                    ]),
                  child: Image.asset("assets/images/logo.png"),
                  // color: Colors.blue,
                ),
              ),
              SizedBox(height: 20,),
            Container(
    
              child: const Text('Bienvenue sur My family',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: AutofillHints.middleName
              ),
              
              ),
            ),
            const SizedBox(height: 100),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                onPressed: (){
                  Navigator.pushNamed(context, '/welcom2');
                },
                child: const Text('Commencer',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2c2c54),
                ),),
                ),
                ),
     
          ]),
        ),
      ),
    );
  }
}
