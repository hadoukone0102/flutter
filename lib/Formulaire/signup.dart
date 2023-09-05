import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

final _formKey = GlobalKey<FormState>();

final ConfNameController = TextEditingController();
final ConfPrenomController = TextEditingController();
final ConfEmailController = TextEditingController();
final ConfMdpController = TextEditingController();
String SelectSex ='M';
DateTime SelectectBirthday = DateTime.now();

@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    ConfEmailController.dispose();
    ConfMdpController.dispose();
    ConfPrenomController.dispose();
    ConfNameController.dispose();
  }

 
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
        title: const Text('Mon Compte Fly'),
        backgroundColor: const Color(0xFF082E70),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/1.2,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 20,),
            decoration: BoxDecoration(
              color:const Color(0xFF082E70),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                         padding: const EdgeInsets.all(10),
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
                            ),
                              ]),  
                        child: Image.asset("assets/images/logo.png",height: 80,),
                      ),
                      const SizedBox(height: 15,),
                          TextFormField(
                         decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Votre Nom',style: TextStyle(color: Color(0xFF2c2c54)),),
                          fillColor: Colors.white,
                          filled: true,
                           suffixIcon: Icon(Icons.person),
                         ),
                         validator: (value){
                          if(value == null || value.isEmpty){
                            return "vide !";
                          }
                          return null;
                         },
                         controller: ConfNameController,
                      ),
                        const SizedBox(height: 15,),
                       TextFormField(
                         decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Votre Prenom',style: TextStyle(color: Color(0xFF2c2c54)),),
                          fillColor: Colors.white,
                          filled: true,
                           suffixIcon: Icon(Icons.person),
                         ),
                         validator: (value){
                          if(value == null || value.isEmpty){
                            return "vide !";
                          }
                          return null;
                         },
                         controller: ConfPrenomController,
                      ),
                      const SizedBox(height: 20,),

                      DropdownButtonFormField(
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(),
                        ),
                        items:const [ 
                        DropdownMenuItem(value: 'M',child: Text('Masculin'),),
                        DropdownMenuItem(value: 'F',child: Text('Feminin'),),
                        ],
                        value: SelectSex,
                        onChanged: (value){
                          setState(() {
                            SelectSex = value!;
                          });
                        },
                      ),
                      const SizedBox(height: 20,),
                     DateTimeFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,                // Activer le remplissage du champ
                          fillColor: Colors.white,    // Couleur de fond en blanc
                          suffixIcon: Icon(Icons.event_note),
                          labelText: 'Votre Date',
                        ),
                        mode: DateTimeFieldPickerMode.dateAndTime,
                        autovalidateMode: AutovalidateMode.always,
                        validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                        onDateSelected: (DateTime value) {
                          setState(() {
                            SelectectBirthday = value ;
                          });
                        },
                      ),


                      const SizedBox(height: 20,),
                       TextFormField(
                         decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Votre Email',style: TextStyle(color: Color(0xFF2c2c54)),),
                          fillColor: Colors.white,
                          filled: true,
                           suffixIcon: Icon(Icons.email),
                         ),
                         validator: (value){
                          if(value == null || value.isEmpty){
                            return "vide";
                          }
                          return null;
                         },
                         controller: ConfEmailController,
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
                         validator: (value) {
                           if(value == null || value.isEmpty){
                            return "vide";
                           }
                           return null;
                         },
                         controller: ConfMdpController,
                      ),
                            
                       const SizedBox(height: 20,),
                    
                       SizedBox(
                        height: 60,
                        width: MediaQuery.of(context).size.width/2,
                        child: ElevatedButton(
                          child: const Text("Inscription",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                          onPressed: (){

                            if(_formKey.currentState!.validate()){
                               // recupération de mes éléments

                              final nom = ConfNameController.text;
                              final prenom = ConfPrenomController.text;
                              final email = ConfEmailController.text;
                              final mdp = ConfMdpController.text;

                              print("$nom, $prenom ,$email, $mdp");
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content:Text("Envoi en cour..."),backgroundColor: Colors.white,)
                              );

                              // formons le clavier après le clic
                              FocusScope.of(context).requestFocus(FocusNode());
                              
                            }
                          },
                        ),
                       ),

                       
                       
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  
  }
}