import 'package:flutter/material.dart';
import 'package:monkey_app_demo/screens/loginScreen.dart';

import '../const/colors.dart';
import '../utils/helper.dart';

class LandingScreen extends StatelessWidget {
  static const routeName = "/landingScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                height: Helper.getScreenHeight(context) * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.placeholder,
                      offset: Offset(0, 15),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    Helper.getAssetName("login_bg.png", "virtual"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                Helper.getAssetName("MealMonkeyLogo.png", "virtual"),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: Helper.getScreenHeight(context) * 0.3,
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    Flexible(
                      child: Text(
                        "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed(
                            LoginScreen.routeName,
                          );
                        },
                        child: Text("Login"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          foregroundColor: MaterialStateProperty.all(AppColor.orange),
                          shape: MaterialStateProperty.all(
                            StadiumBorder(
                              side: BorderSide(color: AppColor.orange, width: 1.5),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text("Create an Account"),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
