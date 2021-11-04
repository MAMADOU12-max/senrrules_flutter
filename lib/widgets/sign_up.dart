import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:sen_rules/widgets/sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Container(
          //  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
           padding: EdgeInsets.only(top:120, left: 30, right: 30 ),
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
                             
                             'Veuillez vous connecter pour pouvoir faire une dénonciation!',
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
                                    labelText: 'Nom d\'utilisateur',
                                    // hintText: 'hint',
                                    // helperText: 'help',
                                    // counterText: 'counter',
                                    // icon: Icon(Icons.star),
                                    // prefixIcon: Icon(Icons.search),
                                    suffixIcon: Icon(Icons.account_circle_outlined),
                                  ),
                                ),

                                Padding(padding: EdgeInsets.only(top: 30)),
                                
                                TextField( 
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    filled: true,
                                    fillColor: Colors.grey[300],
                                    labelText: 'Mot de passe',
                                    hintText: 'hint',
                                    // helperText: 'help',
                                    counterText: 'mot de passe oublié ?',
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
                                      'SE CONNECTER',
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
                                      MaterialPageRoute(builder: (context) => SignIn()));
                                 },
                                  child: Text.rich(
                                    TextSpan(
                                      text: 'Vous n\'avez pas encore de compte? ',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.blue.shade900,
                                          fontWeight: FontWeight.bold
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: 'Enregistrez-vous',
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