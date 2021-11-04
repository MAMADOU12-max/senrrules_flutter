import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Activite> mesActivites = [
    new Activite("velo", Icons.bike_scooter),
    new Activite("Peinture", Icons.format_paint),
    new Activite("Golf", Icons.gamepad_outlined),
    new Activite("Arcade", Icons.gamepad),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(

      // ),
      body: Container(
        padding: EdgeInsets.only(top: 65, bottom: 10, left: 20, right: 20),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Image.asset(
                'images/logo_small.png',
                width: MediaQuery.of(context).size.width / 4,
                alignment: Alignment.bottomLeft,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.notifications,
                    color: Colors.blue[900],
                    size: 27.0,
                  ),
                  Padding(padding: EdgeInsets.only(left: 6)),
                  Icon(
                    Icons.help_outline,
                    color: Colors.blue[900],
                    size: 27.0,
                  ),

                  //  IconButton(
                  //    onPressed: null,
                  //    icon: Icon(Icons.help_outline),
                  //    color: Colors.yellow,

                  // ),
                ],
              )
            ]),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: OutlinedButton(
                    onPressed: null,
                    style: ButtonStyle(
                        // backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                        shadowColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.yellow)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.circle,
                          color: Colors.blue[900],
                          size: 18.0,
                        ),
                        Text(
                          'Raccourcis',
                          style: TextStyle(color: Colors.blue[900]),
                        )
                      ],
                    )),
              ),
            ),

            Card(
              child: Container(
                color: Colors.grey[300],
                padding: EdgeInsets.only(top: 7.0, right: 5.0),
                child: Column(
                  children: [
                    Text(
                      'Classement par Indice de Perception de la corruption',
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.left,
                    ),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Image.asset(
                          'images/senegal.png',
                          width: MediaQuery.of(context).size.width / 4,
                          // alignment: Alignment.bottomLeft,
                        ),
                        Row(
                          children: [
                            Text("69 ", style: TextStyle(fontSize: 25)),
                            Text("ème", style: TextStyle(fontSize: 13)),
                            Text(" / 195", style: TextStyle(fontSize: 25)),
                            Text(" pays", style: TextStyle(fontSize: 13)),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.grey[300],
              //  child: GridView.builder(
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),  // number by line
              //   itemCount: mesActivites.length,
              //   itemBuilder: (context, i) {
              //       return new Container(

              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: null,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.8,
                          height: MediaQuery.of(context).size.width / 2.8,
                          child: Card(
                            elevation: 5.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.library_books,
                                  color: Colors.black,
                                  size: 75,
                                ),
                                Text(
                                  'Bibliothèque',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 20.0)),
                      InkWell(
                        onTap: null,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.8,
                          height: MediaQuery.of(context).size.width / 2.8,
                          child: Card(
                            elevation: 5.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // Icon(
                                //   Icons.dangerous,
                                //   color: Colors.black,
                                //   size: 75,
                                // ),
                                 Image.asset(
                                    'images/corruption.png',
                                    width: MediaQuery.of(context).size.width / 4,
                                    // alignment: Alignment.bottomLeft,
                                  ),
                                Text(
                                  'Dénoncer',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10.0)),
                  Row(
                    children: [
                      InkWell(
                        onTap: null,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.8,
                          height: MediaQuery.of(context).size.width / 2.8,
                          child: Card(
                            elevation: 5.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.report_gmailerrorred,
                                  color: Colors.black,
                                  size: 75,
                                ),
                                Text(
                                  'Actualités',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 20.0)),
                      InkWell(
                        onTap: null,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.8,
                          height: MediaQuery.of(context).size.width / 2.8,
                          child: Card(
                            elevation: 5.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.transgender_outlined,
                                  color: Colors.black,
                                  size: 75,
                                ),
                                //  Image.asset(
                                //     'images/corruption.png',
                                //     width: MediaQuery.of(context).size.width / 4,
                                //     // alignment: Alignment.bottomLeft,
                                //   ),
                                Text(
                                  'Objectifs',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10.0)),
                  Row(
                    children: [
                      InkWell(
                        onTap: null,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.8,
                          height: MediaQuery.of(context).size.width / 2.8,
                          child: Card(
                            elevation: 5.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.question_answer,
                                  color: Colors.black,
                                  size: 75,
                                ),
                                Text(
                                  'FAQs',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 20.0)),
                      InkWell(
                        onTap: null,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.8,
                          height: MediaQuery.of(context).size.width / 2.8,
                          child: Card(
                            elevation: 5.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.account_box,
                                  color: Colors.blue[200],
                                  size: 75,
                                ),
                                Text(
                                  'Compte',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // );
              // },
            ),

           
          ],
        ),
      ),
    );
  }
}

class Activite {
  late String nom;
  late IconData icone;

  Activite(String nom, IconData icone) {
    this.nom = nom;
    this.icone = icone;
  }
}
