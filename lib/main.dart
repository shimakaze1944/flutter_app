import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var aColor = Colors.grey.shade800;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("FlutterApp"),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Colors.black, Colors.black]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                      flex: 3,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.white,
                        child: Image(
                          image: AssetImage("assets/image/sby-1.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      )),
                  Flexible(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/image/sby-2.jpg")),
                                color: Colors.black,),
                            width: 115,
                            height: 115,
                            margin: EdgeInsets.all(5),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/image/sby-3.png")),
                                color: Colors.black,),
                            width: 115,
                            height: 115,
                            margin: EdgeInsets.all(5),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/image/sby-4.jpg")),
                                color: Colors.black,),
                            width: 115,
                            height: 115,
                            margin: EdgeInsets.all(5),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/image/sby-5.jpeg")),
                                color: Colors.black,),
                            width: 115,
                            height: 115,
                            margin: EdgeInsets.all(5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Surabaya",
                        style: mainHeader,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: ListView(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: RichText(
                            text: TextSpan(
                                text:
                                "Surabaya is a port city on the Indonesian island of Java. A vibrant, sprawling metropolis, it mixes modern skyscrapers with canals and buildings from its Dutch colonial past.", style: subHeader),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: RichText(
                            text: TextSpan(
                                text:
                                "It has a thriving Chinatown and an Arab Quarter whose Ampel Mosque dates to the 15th century", style: subHeader),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: RichText(
                            text: TextSpan(
                                text:
                                "The Tugu Pahlawan (Heroes Monument) honors the independence battles waged in Surabaya’s streets in 1945.", style: subHeader),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment(0.95, -0.9),
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (aColor == Colors.grey.shade800) {
                      aColor = Colors.red;
                    } else if (aColor == Colors.red) {
                      aColor = Colors.grey.shade800;
                    }
                  });
                },
                backgroundColor: Colors.white54,
                child: Icon(
                  Icons.favorite,
                  color: aColor,
                  size: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
TextStyle mainHeader = TextStyle(
    fontSize: 26,
    color: Colors.white,
    fontFamily: 'Times',
    fontWeight: FontWeight.w700
);

TextStyle subHeader = TextStyle(
    fontSize: 16,
    color: Colors.white60,
    fontFamily: 'Times',
    fontWeight: FontWeight.w300
);