import 'package:flutter/material.dart';
import 'package:party_ui/animation/fade_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoging = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/im_party.jpeg"),
              fit: BoxFit.cover)),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.black.withOpacity(.6),
          Colors.black.withOpacity(.4),
          Colors.black.withOpacity(.3),
          Colors.black.withOpacity(.1),
        ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FadeAnimation(
              2,
              Text(
                "Find the best parties near you.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            FadeAnimation(
              3,
              Text(
                "let us find you a party for your interes",
                style: TextStyle(color: Colors.grey.shade400, fontSize: 25),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            _isLoging
                ? FadeAnimation(
                    4,
                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Colors.orange,
                      ),
                      child: Center(
                        child: Text(
                          "Start",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ))
                : FadeAnimation(
                    4,
                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Colors.deepOrange,
                      ),
                      child: Center(
                        child: Text(
                          "Google +",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    )),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ));
  }
}
