import 'package:curso_job_finder_app/pages/main_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static final String routeName = "splash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/imgs/img_main.png"),
            Column(
              children: [
                Text(
                  "Job hunting",
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  "made aesy",
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
            MaterialButton(
              onPressed: () {
                //Navigator.pushReplacementNamed(context, MainScreen.routeName);

                Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: Duration(milliseconds: 800),
                    transitionsBuilder:
                        (context, animation, animationDuration, child) {
                      // return ScaleTransition(
                      //   alignment: Alignment.bottomCenter,
                      //   child: child,
                      //   scale: animation,
                      // );

                      return SlideTransition(
                        child: SlideTransition(
                          child: child,
                          position: Tween<Offset>(
                            begin: const Offset(1.0, 0.0),
                            end: Offset.zero,
                          ).animate(animation),
                        ),
                        position: Tween<Offset>(
                          begin: const Offset(1.0, 0.0),
                          end: Offset.zero,
                        ).animate(animation),
                      );
                    },
                    pageBuilder: (context, animation, animationDuration) {
                      return MainScreen();
                    },
                  ),
                );
              },
              elevation: 10.0,
              minWidth: 170.0,
              height: 50.0,
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              child: Text(
                "Get Started",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
