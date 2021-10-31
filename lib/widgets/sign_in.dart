import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:sen_rules/widgets/sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Container(
           padding: EdgeInsets.only(top:100, left: 30, right: 30 ),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                          Image.asset(
                          'images/logo2.png',
                          width: MediaQuery.of(context).size.width / 1.5,
                          ),
                          Padding(padding: EdgeInsets.only(top: 50)),
                          Text(
                             
                             'Créér votre compte!',
                              style: TextStyle(
                                   fontSize: 24,
                                   color: Colors.blue[900],
                                   fontWeight: FontWeight.bold                              
                              ),
                              textAlign: TextAlign.center,
                          ),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15)),
                          Form(
                          // key: _formKey,
                            child: Column(
                              children: <Widget>[
                                TextField( 
                                  //  keyboardType: TextInputType.name,
                                  // textInputAction: TextInputAction.next,
                                  // focusNode: _nameFocusNode,
                                  // onFieldSubmitted: (String value) {
                                  //   //Do anything with value
                                  //   _nextFocus(_phoneFocusNode);
                                  // },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    filled: true,
                                    fillColor: Colors.grey[300],
                                    labelText: 'Nom et Prénom(s)',
                                    // hintText: 'hint',
                                    // helperText: 'help',
                                    // counterText: 'counter',
                                    // icon: Icon(Icons.star),
                                    // prefixIcon: Icon(Icons.search),
                                    suffixIcon: Icon(Icons.account_circle_outlined),
                                  ),
                                ),

                                Padding(padding: EdgeInsets.only(top: 20)),
                                TextField( 
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    filled: true,
                                    fillColor: Colors.grey[300],
                                    labelText: 'Numéro de téléphone',
                                    hintText: 'hint',
                                    counterStyle: TextStyle(
                                         color: Colors.blue[900],
                                         fontSize: 15,
                                         fontWeight: FontWeight.bold
                                     ),
                                    suffixIcon: Icon(Icons.call),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                TextField( 
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    filled: true,
                                    fillColor: Colors.grey[300],
                                    labelText: 'Mot de passe',
                                    hintText: 'hint',
                                    counterStyle: TextStyle(
                                         color: Colors.blue[900],
                                         fontSize: 15,
                                         fontWeight: FontWeight.bold
                                     ),
                                    // icon: Icon(Icons.star),
                                    // prefixIcon: Icon(Icons.search),
                                    suffixIcon: Icon(Icons.remove_red_eye),
                                  ),
                                ),
                               Padding(padding: EdgeInsets.only(top: 20)),
                                TextField( 
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    filled: true,
                                    fillColor: Colors.grey[300],
                                    labelText: 'Confirmer mot de passe',
                                    hintText: 'hint',
                                    counterStyle: TextStyle(
                                         color: Colors.blue[900],
                                         fontSize: 15,
                                         fontWeight: FontWeight.bold
                                     ),
                                    // icon: Icon(Icons.star),
                                    // prefixIcon: Icon(Icons.search),
                                    suffixIcon: Icon(Icons.remove_red_eye),
                                  ),
                                ),




                                Padding(padding: EdgeInsets.only(top: 20)),
                                 SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: 50.0,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Navigator.pushReplacement(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) => Homepage()));
                                    },
                                    child: Text(
                                      'CREER UN COMPTE',
                                      style: TextStyle(fontSize: 20, color: Colors.white),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(Colors.blue.shade900),
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                               
                                InkWell(
                                    onTap: () {
                                      Navigator.pushReplacement( context,
                                      MaterialPageRoute(builder: (context) => SignUp()));
                                 },
                                  child: Text.rich(
                                    TextSpan(
                                      text: 'Vous avez déjà un compte? ',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.blue.shade900,
                                          fontWeight: FontWeight.bold
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: 'Connectez-vous',
                                            style: TextStyle(
                                              fontSize: 16,
                                              decoration: TextDecoration.underline,
                                            )),
                                        // can add more TextSpans here...
                                      ],
                                    ),
                                  ),
                                )
                              
                              ],
                            ),
                          )
                    ],
                ),
            )
        ),
      ),
    );
  }
}