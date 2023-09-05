import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class welcome_page2 extends StatefulWidget {
  const welcome_page2({super.key});

  @override
  State<welcome_page2> createState() => _welcome_page2State();
}

class _welcome_page2State extends State<welcome_page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF082E70),
      ),
      body: Container(
        // width: MediaQuery.of(context).size.width,
        // decoration: const BoxDecoration(
        //   color:  Color(0xFF082E70),
        // ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                margin: const EdgeInsets.only(left: 8, right: 8),
                height: MediaQuery.of(context).size.height / 1.3,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: .1,
                  ),
                  color: const Color(0xFF082E70),
                  borderRadius:
                      const BorderRadius.all(Radius.elliptical(10, 10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(children: [
                    WidgetAnimator(
                      atRestEffect: WidgetRestingEffects.swing(),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 232, 236, 243),
                              width: .2),
                        ),
                        child:
                            Image.asset("assets/images/logo.png", height: 120),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: const Text(
                        'Avec My Family plus besoin de se fatiguer',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: AutofillHints.countryName,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        child: const Text(
                          "Se Connecté",
                          style: TextStyle(
                              color: Color(0xFF2c2c54),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/Login');
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        child: const Text(
                          "S'inscrire",
                          style: TextStyle(
                              color: Color(0xFF2c2c54),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/Signup');
                        },
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5),
                            width: 25,
                            height: 21,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5),
                            width: 25,
                            height: 21,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 100,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/Home');
                            },
                            child: const Text(
                              "Plus tard",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                // decoration: TextDecoration
                                //     .underline, 
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/Home');
                            },
                            child: const Icon(
                              Icons.arrow_right,
                              size: 48,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
