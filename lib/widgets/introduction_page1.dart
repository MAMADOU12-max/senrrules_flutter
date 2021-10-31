import 'package:flutter/material.dart';
import 'package:sen_rules/widgets/introduction_page2.dart';

class IntroductionPage1 extends StatefulWidget {
  const IntroductionPage1({ Key? key }) : super(key: key);

  @override
  _IntroductionPage1State createState() => _IntroductionPage1State();
}

class _IntroductionPage1State extends State<IntroductionPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 35.0),
             child: Center(
               child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                   children: [
                      Padding(padding: EdgeInsets.only(top: 35)),
                      Image.asset(
                        'images/logo_small.png',
                         width: MediaQuery.of(context).size.width ,
                      ),
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        'La savais vous?',
                         style: TextStyle(
                            fontSize: 35
                         ),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Text(
                            "La corruption est un crime qui touche tous les pays du monde. Chaque année, plus d'un trillion de dollars américains sont versés    en pots-de-vin dans le monde. Si seulement un cinquième de cette sommeétait utilisé annuellement pour soutenir les personnes dans le besoin, nous pourrions entièrement éradiquer de la pauvreté dans les 20 prochaines années.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25
                            ),
                       ),
                      Padding(padding: EdgeInsets.all(12)),
                      SizedBox(
                        width: 290.0,
                        height: 40.0,
                        child: ElevatedButton(
                            onPressed: () {
                                 Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (context) => IntroductionPage2())
                                 );
                            }, 
                            child: Text(
                              'Continuer',
                               style:TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                               ),
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.blue[900]),
                            ),
                        ),
                      ),
                   ],
               ),
             ),
          ),
        ),
    );
  }
}