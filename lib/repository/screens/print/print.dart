import 'package:flutter/material.dart';

import '../../widget/uihelper.dart';

class PrintScreen extends StatelessWidget {
  const PrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Scaffold(
        backgroundColor: Color(0xfffbf0ce),
        body: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              height: 160,
              width: double.infinity,
              color: Color(0xffF7CB45),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UIHelper.customText(
                      text: "Blinkit in",
                      color: Color(0xff000000),
                      fontWeight: FontWeight.bold,
                      fontsize: 12,
                      fontFamily: "bold"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      UIHelper.customText(
                          text: "16 minutes",
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontsize: 20,
                          fontFamily: "bold"),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      UIHelper.customText(
                          text: 'HOME',
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontsize: 12,
                          fontFamily: "bold"),
                      UIHelper.customText(
                          text: " - Vikrant Singh, Shekpura,kannauj,",
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontsize: 12)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  UIHelper.customTextFeild(contreller: searchController),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIHelper.customText(
                    text: "Print Store",
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontsize: 32,
                    fontFamily: "bold")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIHelper.customText(
                  text: "Blinkit ensures secure prints at every stage",
                  color: Color(0xff9C9C9C),
                  fontWeight: FontWeight.bold,
                  fontsize: 14,
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 163,
                width: 361,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 25,
                  ),
                  child: Stack(
                    children:[ Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        UIHelper.customText(
                            text: "Documents",
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontsize: 14,
                            fontFamily: "bold"),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            UIHelper.customImage(img: "star.png"),
                            SizedBox(width: 10,),
                            UIHelper.customText(
                                text: "Price starting at rs 3/page",
                                color: Color(0xff9C9C9C),
                                fontWeight: FontWeight.bold,
                                fontsize: 14)
                          ],
                        ),
                        Row(
                          children: [
                            UIHelper.customImage(img: "star.png"),
                            SizedBox(width: 10,),
                            UIHelper.customText(
                                text: "Paper quality: 70 GSM",
                                color: Color(0xff9C9C9C),
                                fontWeight: FontWeight.bold,
                                fontsize: 14)
                          ],
                        ),
                        Row(
                          children: [
                            UIHelper.customImage(img: "star.png"),
                            SizedBox(width: 10,),
                            UIHelper.customText(
                                text: "Single side prints",
                                color: Color(0xff9C9C9C),
                                fontWeight: FontWeight.bold,
                                fontsize: 14)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 125,  // Set width
                          height: 40,  // Set height
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff27AF34)
                            ),
                            child: Text('Upload Files'),
                          ),
                        ),

                      ],

                    ),
                      Positioned(child: UIHelper.customImage(img: "document.png"),
                        right: 18,
                        bottom: 30,
                      )
                    ]
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
