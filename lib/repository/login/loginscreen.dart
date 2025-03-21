import 'package:blinkit_app/repository/screens/bottom_nav/bottumnavscreen.dart';
import 'package:blinkit_app/repository/widget/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UIHelper.customImage(img: "Blinkit Onboarding Screen.png"),
            SizedBox(
              height: 6,
            ),
            UIHelper.customImage(img: "image 10.jpg"),
            SizedBox(
              height: 6,
            ),
            UIHelper.customText(
                text: "India's  last  minute  app",
                color: Color(0xff000000),
                fontWeight: FontWeight.bold,
                fontsize: 20,
                fontFamily: "bold"),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  width: 350,
                  height: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Column(children: [
                    SizedBox(
                      height: 20,
                    ),
                    UIHelper.customText(
                        text: "Vikrant Singh Chahan",
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                        fontsize: 14),
                    SizedBox(
                      height: 5,
                    ),
                    UIHelper.customText(
                        text: "9005869912",
                        color: Color(0xff9C9C9C),
                        fontWeight: FontWeight.bold,
                        fontsize: 14,
                        fontFamily: "bold"),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BottomNavScreen(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Color(0xffE23744),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                UIHelper.customText(
                                    text: "login With",
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.bold,
                                    fontsize: 14,
                                    fontFamily: "bold"),
                                SizedBox(
                                  width: 5,
                                ),
                                UIHelper.customImage(img: "image 9.png"),
                              ],
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    UIHelper.customText(
                        text:
                            "Access your saved addresses from Zomato automatically!",
                        color: Color(0xff9C9C9C),
                        fontWeight: FontWeight.bold,
                        fontsize: 10),
                    SizedBox(
                      height: 5,
                    ),
                    UIHelper.customText(
                        text: "or login with phone number",
                        color: Color(0xff269237),
                        fontWeight: FontWeight.normal,
                        fontsize: 15)
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
