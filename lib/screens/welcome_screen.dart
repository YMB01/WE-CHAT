import 'package:flutter/material.dart';
import 'package:wechat/screens/login_screen.dart';
import 'package:wechat/screens/registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:wechat/components/rounded_button.dart';
class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{
  late AnimationController controller;
  late Animation animation;
  @override
  void initState() {
    controller = AnimationController(
     duration: Duration(seconds: 1),
     vsync: this,
    );
    animation = ColorTween(begin: Colors.blueGrey,end: Colors.white ).animate(controller);
    
    controller.forward();
    controller.addListener(() {
      setState(() {
        
      });
     
    });
    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                AnimatedTextKit(
                 animatedTexts : [
                  TypewriterAnimatedText('We Chat',
                  textStyle:  TextStyle(
                    color: Colors.black,
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                  ),
                  
                 ]
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            roundedButton(onPressed: () {
            Navigator.pushNamed(context, LoginScreen.id);
          },
          title: 'Log in',
          color: Colors.lightBlueAccent,
          ),
           roundedButton(
            onPressed:  () {
            Navigator.pushNamed(context, RegistrationScreen.id);
          },
           color: Colors.blueAccent, 
           title: 'Register')
          ],
        ),
      ),
    );
  }
}

