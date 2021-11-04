import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sen_rules/widgets/homepage.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  List<Activite> mesActivites = [
    new Activite("velo", Icons.bike_scooter),
    new Activite("Peinture", Icons.format_paint),
    new Activite("Golf", Icons.gamepad_outlined),
    // new Activite("Arcade", Icons.gamepad),
    // new Activite("Arcade", Icons.gamepad),
    new Activite("Arcade", Icons.gamepad),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
               Padding(padding: EdgeInsets.only(top: 6)),
               Column(
                    children: [
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          InkWell(
                             onTap: () {
                                Navigator.pushReplacement( context,
                                MaterialPageRoute(builder: (context) => Homepage()));
                            },
                            child: Row(
                                children: [
                                    Icon(
                                      Icons.arrow_back_outlined,
                                      color: Colors.yellow[900],
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 6)),
                                    Text(
                                      'ACCEUIL',
                                      style: TextStyle(
                                          color: Colors.yellow[900]
                                      ),
                                    ),    
                                ],
                            ),
                          ),
                          SizedBox(
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
                        ],
                      ),
                    ],
                  ),

              Card(
                child: Container(
                  color: Colors.blue[50],
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Column(
                    children: [
                      Text(
                        'Tout sur la corruption'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold
                          ),
                        textAlign: TextAlign.left,
                      ),
                       Padding(padding: EdgeInsets.only(top: 10)),
                      SizedBox(
                        height: 45.0,
                        child: TextField( 
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            labelText: 'Mot clés ...',
                            hintText: 'hint',
                            // helperText: 'help',
                            // counterText: 'counter',
                            // icon: Icon(Icons.star),
                            prefixIcon: Icon(Icons.search),
                            // suffixIcon: Icon(Icons.park),
                          ),
                        ),
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
      
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: null,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2.6,
                            height: MediaQuery.of(context).size.width / 2.6,
                            child: Card(
                              elevation: 5.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   Text(
                                    '11 ITEMS',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.blue[900],
                                        fontSize: 11.0,
                                         fontWeight: FontWeight.w900
                                        ),
                                  ),
                                   Image.asset(
                                      'images/Black.png',
                                      width: MediaQuery.of(context).size.width / 3.8,
                                    ),
                                  Text(
                                    'TYPES DE CORRUPTION',
                                    style: TextStyle(
                                        color: Colors.blue[900],
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 15.0)),
                        InkWell(
                          onTap: null,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2.6,
                            height: MediaQuery.of(context).size.width / 2.6,
                            child: Card(
                              elevation: 5.0,
                              child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   Text(
                                    '41 ITEMS',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.blue[900],
                                        fontSize: 11.0,
                                         fontWeight: FontWeight.w900
                                        ),
                                  ),
                                   Image.asset(
                                      'images/actes_corruption.png',
                                      width: MediaQuery.of(context).size.width / 3.8,
                                    ),
                                  Text(
                                    'ACTES & CODES',
                                    style: TextStyle(
                                        color: Colors.blue[900],
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 20.0)),
                    Row(
                      children: [
                        InkWell(
                          onTap: null,
                          child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.6,
                            height: MediaQuery.of(context).size.width / 2.6,
                            child: Card(
                              elevation: 5.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   Text(
                                    '29 ITEMS',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.blue[900],
                                        fontSize: 11.0,
                                         fontWeight: FontWeight.w900
                                        ),
                                  ),
                                   Image.asset(
                                      'images/law.png',
                                      width: MediaQuery.of(context).size.width / 3.8,
                                    ),
                                  Text(
                                    'LOIS & REGLEMENT',
                                    style: TextStyle(
                                        color: Colors.blue[900],
                                        fontSize: 12.0,
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
                           width: MediaQuery.of(context).size.width / 2.6,
                            height: MediaQuery.of(context).size.width / 2.6,
                            child: Card(
                              elevation: 5.0,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   Text(
                                    '12 ITEMS',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.blue[900],
                                        fontSize: 11.0,
                                         fontWeight: FontWeight.w900
                                        ),
                                  ),
                                   Image.asset(
                                      'images/accord.png',
                                      width: MediaQuery.of(context).size.width / 3.8,
                                    ),
                                  Text(
                                    'ACCORDS & DECRETS',
                                    style: TextStyle(
                                        color: Colors.blue[900],
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 20.0)),
                    Row(
                      children: [
                        InkWell(
                          onTap: null,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2.6,
                            height: MediaQuery.of(context).size.width / 2.6,
                            child: Card(
                              elevation: 5.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   Text(
                                    '71 ITEMS',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.blue[900],
                                        fontSize: 11.0,
                                         fontWeight: FontWeight.w900
                                        ),
                                  ),
                                  Image.asset(
                                      'images/convention.png',
                                      width: MediaQuery.of(context).size.width / 3.8,
                                    ),
                                  Text(
                                    'CONVENTIONS',
                                   style: TextStyle(
                                        color: Colors.blue[900],
                                        fontSize: 12.0,
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
                            width: MediaQuery.of(context).size.width / 2.6,
                            height: MediaQuery.of(context).size.width / 2.6,
                            child: Card(
                              elevation: 5.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   Text(
                                    '29 ITEMS',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.blue[900],
                                        fontSize: 11.0,
                                         fontWeight: FontWeight.w900
                                        ),
                                  ),
                                   Image.asset(
                                      'images/directives.png',
                                      width: MediaQuery.of(context).size.width / 3.8,
                                    ),
                                  Text(
                                    'DIRECTIVES',
                                   style: TextStyle(
                                        color: Colors.blue[900],
                                        fontSize: 12.0,
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
