import 'package:flutter/material.dart';
import 'dart:developer';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String myStr = " updated from but 3";
  Color myColor1 = Colors.black;
  Color myColor2 = Colors.black;
  Color myColor3 = Colors.black;
  Color myColor4 = Colors.black;
  Color myColor = Colors.white;
  bool myFav1 = false;
  bool myFav2 = false;
  bool myFav3 = false;
  bool myFav4 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white, // appbar color.
          foregroundColor: Colors.black, // appbar text color.
          centerTitle: false,
          titleSpacing: 95,
          title: Row(children: [
            Icon(
              Icons.apple,
              size: 30,
            ),
            Text(
              'IPhone Cases',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ]),
          actions: [
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                print("CART");
              },
            ),
            // add more IconButton
          ],
        ),
        body: Container(
          color: myColor,
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Divider(
                height: 40,
                thickness: 0,
              ),
              Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurStyle: BlurStyle.outer,
                            color: Colors.black,
                            blurRadius: 25.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset.zero)
                      ],
                      border: Border.all(
                        width: 3,
                        strokeAlign: StrokeAlign.center,
                      ),
                    ),
                    child: Image.network(
                      "https://cdn.cliqueinc.com/posts/294899/designer-phone-cases-294899-1650040095554-main.1200x0c.jpg?interlace=true&quality=70",
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  Divider(
                    indent: 10,
                    thickness: 0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {
                          setState(() {
                            if (myFav1 == false) {
                              myColor1 = Color.fromARGB(255, 247, 16, 0);
                            }
                            if (myFav1 == true) {
                              myColor1 = Colors.black;
                            }
                            myFav1 = !myFav1;
                          });
                          log("button #1");
                        },
                        height: 40,
                        textColor: Colors.white,
                        splashColor: Color.fromARGB(255, 250, 17, 0),
                        color: Colors.white,
                        child: Icon(Icons.favorite, color: myColor1),
                        elevation: 20,
                      ),
                      Divider(
                        indent: 10,
                        thickness: 0,
                      ),
                      MaterialButton(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {
                          setState(() {
                            myStr = " updated from but 3";
                          });
                          log("button #1");
                        },
                        height: 40,
                        textColor: Colors.white,
                        splashColor: Color.fromARGB(255, 250, 17, 0),
                        color: Colors.white,
                        child: Icon(Icons.info, color: Colors.black),
                        elevation: 20,
                      ),
                      Divider(
                        indent: 10,
                        thickness: 0,
                      ),
                      MaterialButton(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {
                          setState(() {
                            myStr = " updated from but 3";
                          });
                          log("button #1");
                        },
                        height: 40,
                        textColor: Colors.white,
                        splashColor: Color.fromARGB(255, 250, 17, 0),
                        color: Colors.white,
                        child:
                            Icon(Icons.add_shopping_cart, color: Colors.black),
                        elevation: 20,
                      ),
                    ],
                  )
                ],
              ),
              Divider(
                height: 40,
                thickness: 0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurStyle: BlurStyle.outer,
                            color: Colors.black,
                            blurRadius: 25.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset.zero)
                      ],
                      border: Border.all(
                        width: 3,
                        strokeAlign: StrokeAlign.center,
                      ),
                    ),
                    child: Image.network(
                      "https://cdn.cliqueinc.com/posts/294899/designer-phone-cases-294899-1650040082987-main.1200x0c.jpg?interlace=true&quality=70",
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  Divider(
                    indent: 20,
                    thickness: 0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {
                          setState(() {
                            if (myFav2 == false) {
                              myColor2 = Color.fromARGB(255, 247, 16, 0);
                            }
                            if (myFav2 == true) {
                              myColor2 = Colors.black;
                            }
                            myFav2 = !myFav2;
                          });
                          log("button #2");
                        },
                        height: 40,
                        textColor: Colors.white,
                        splashColor: Color.fromARGB(255, 250, 17, 0),
                        color: Colors.white,
                        child: Icon(Icons.favorite, color: myColor2),
                        elevation: 20,
                      ),
                      MaterialButton(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {
                          setState(() {
                            myStr = " updated from but 3";
                          });
                          log("button #2");
                        },
                        height: 40,
                        textColor: Colors.white,
                        splashColor: Color.fromARGB(255, 250, 17, 0),
                        color: Colors.white,
                        child: Icon(Icons.info, color: Colors.black),
                        elevation: 20,
                      ),
                      MaterialButton(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {
                          setState(() {
                            myStr = " updated from but 3";
                          });
                          log("button #2");
                        },
                        height: 40,
                        textColor: Colors.white,
                        splashColor: Color.fromARGB(255, 250, 17, 0),
                        color: Colors.white,
                        child:
                            Icon(Icons.add_shopping_cart, color: Colors.black),
                        elevation: 20,
                      ),
                    ],
                  )
                ],
              ),
              Divider(thickness: 0, height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {
                          setState(() {
                            if (myFav3 == false) {
                              myColor3 = Color.fromARGB(255, 247, 16, 0);
                            }
                            if (myFav3 == true) {
                              myColor3 = Colors.black;
                            }
                            myFav3 = !myFav3;
                          });
                          log("button #3");
                        },
                        height: 40,
                        textColor: Colors.white,
                        splashColor: Color.fromARGB(255, 250, 17, 0),
                        color: Colors.white,
                        child: Icon(Icons.favorite, color: myColor3),
                        elevation: 20,
                      ),
                      MaterialButton(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {
                          setState(() {
                            myStr = " updated from but 3";
                          });
                          log("button #3");
                        },
                        height: 40,
                        textColor: Colors.white,
                        splashColor: Color.fromARGB(255, 250, 17, 0),
                        color: Colors.white,
                        child: Icon(Icons.info, color: Colors.black),
                        elevation: 20,
                      ),
                      MaterialButton(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {
                          setState(() {
                            myStr = " updated from but 3";
                          });
                          log("button #3");
                        },
                        height: 40,
                        textColor: Colors.white,
                        splashColor: Color.fromARGB(255, 250, 17, 0),
                        color: Colors.white,
                        child:
                            Icon(Icons.add_shopping_cart, color: Colors.black),
                        elevation: 20,
                      ),
                    ],
                  ),
                  Divider(
                    indent: 20,
                    thickness: 0,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurStyle: BlurStyle.outer,
                            color: Colors.black,
                            blurRadius: 25.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset.zero)
                      ],
                      border: Border.all(
                        width: 3,
                        strokeAlign: StrokeAlign.center,
                      ),
                    ),
                    child: Image.network(
                      "https://cdn.cliqueinc.com/posts/294899/designer-phone-cases-294899-1650040053070-main.1200x0c.jpg?interlace=true&quality=70",
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                ],
              ),
              Divider(
                height: 40,
                thickness: 0,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {
                          setState(() {
                            if (myFav4 == false) {
                              myColor4 = Color.fromARGB(255, 247, 16, 0);
                            }
                            if (myFav4 == true) {
                              myColor4 = Colors.black;
                            }
                            myFav4 = !myFav4;
                          });
                          log("button #4");
                        },
                        height: 40,
                        textColor: Colors.white,
                        splashColor: Color.fromARGB(255, 250, 17, 0),
                        color: Colors.white,
                        child: Icon(Icons.favorite, color: myColor4),
                        elevation: 20,
                      ),
                      Divider(
                        indent: 10,
                        thickness: 0,
                      ),
                      MaterialButton(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {
                          setState(() {
                            myStr = " updated from but 3";
                          });
                          log("button #4");
                        },
                        height: 40,
                        textColor: Colors.white,
                        splashColor: Color.fromARGB(255, 250, 17, 0),
                        color: Colors.white,
                        child: Icon(Icons.info, color: Colors.black),
                        elevation: 20,
                      ),
                      Divider(
                        indent: 10,
                        thickness: 0,
                      ),
                      MaterialButton(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {
                          setState(() {
                            myStr = " updated from but 3";
                          });
                          log("button #4");
                        },
                        height: 40,
                        textColor: Colors.white,
                        splashColor: Color.fromARGB(255, 250, 17, 0),
                        color: Colors.white,
                        child: Icon(
                          Icons.add_shopping_cart,
                          color: Colors.black,
                        ),
                        elevation: 20,
                      ),
                    ],
                  ),
                  Divider(
                    indent: 20,
                    thickness: 0,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurStyle: BlurStyle.outer,
                            color: Colors.black,
                            blurRadius: 25.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset.zero)
                      ],
                      border: Border.all(
                        width: 3,
                        strokeAlign: StrokeAlign.center,
                      ),
                    ),
                    child: Image.network(
                      "https://cdn.cliqueinc.com/posts/294899/designer-phone-cases-294899-1650040620428-main.1200x0c.jpg?interlace=true&quality=70",
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  Divider(
                    height: 20,
                    thickness: 0,
                  ),
                  Container(
                    color: Color.fromARGB(39, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              myColor = Colors.pink;
                            });
                            log("Icon button pink");
                          },
                          icon: Icon(
                            Icons.circle,
                            color: Colors.pink,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              myColor = Colors.blue;
                            });
                            log("Icon button blue");
                          },
                          icon: Icon(
                            Icons.circle,
                            color: Colors.blue,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              myColor = Colors.white;
                            });
                            log("Icon button white");
                          },
                          icon: Icon(
                            Icons.circle,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              myColor = Colors.green;
                            });
                            log("Icon button green");
                          },
                          icon: Icon(
                            Icons.circle,
                            color: Colors.green,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              myColor = Color.fromARGB(255, 77, 76, 76);
                            });
                            log("Icon button dark grey");
                          },
                          icon: Icon(
                            Icons.circle,
                            color: Color.fromARGB(255, 77, 76, 76),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
