import 'package:blinkit_app/repository/widget/uihelper.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
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
        SizedBox(
          height: 10,
        ),
        UIHelper.customImage(img: "shopping-cart (1) 1.png"),
        SizedBox(
          height: 2,
        ),
        UIHelper.customText(
            text: "Reordering will be easy",
            color: Color(0xff000000),
            fontWeight: FontWeight.bold,
            fontsize: 16,
            fontFamily: "bold"),
        SizedBox(
          height: 2,
        ),
        UIHelper.customText(
            text: "Items you order will show up here so you can buy",
            color: Color(0xff000000),
            fontWeight: FontWeight.w700,
            fontsize: 10),
        SizedBox(
          height: 2,
        ),
        UIHelper.customText(
            text: "them again easily.",
            color: Color(0xff000000),
            fontWeight: FontWeight.w700,
            fontsize: 10),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  UIHelper.customText(
                      text: "Bestsellers",
                      color: Color(0xff000000),
                      fontWeight: FontWeight.bold,
                      fontsize: 16,
                      fontFamily: "bold"),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 4,
                              child: UIHelper.customImage(img: "image 45.png"),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: UIHelper.customButton(callback: () {})),
                          ],
                        ),
                        UIHelper.customText(
                            text: "Amul Taaza Toned",
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w600,
                            fontsize: 10),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            UIHelper.customImage(img: "timer 1.png"),
                            UIHelper.customText(
                                text: "16 MINS",
                                color: Color(0xff9C9C9C),
                                fontWeight: FontWeight.bold,
                                fontsize: 10,
                                fontFamily: "bold"),
                          ],
                        ),
                        Row(
                          children: [
                            UIHelper.customImage(img: "image 47.png"),
                            UIHelper.customText(
                                text: "27",
                                color: Color(0xff000000),
                                fontWeight: FontWeight.bold,
                                fontsize: 20,
                                fontFamily: "bold")
                          ],
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 4,
                              child: UIHelper.customImage(img: "image 44.png"),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: UIHelper.customButton(callback: () {})),
                          ],
                        ),

                        UIHelper.customText(
                            text: "Potato (Aloo)",
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w600,
                            fontsize: 10),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            UIHelper.customImage(img: "timer 1.png"),
                            UIHelper.customText(
                                text: "16 MINS",
                                color: Color(0xff9C9C9C),
                                fontWeight: FontWeight.bold,
                                fontsize: 10,
                                fontFamily: "bold"),
                          ],
                        ),
                        Row(
                          children: [
                            UIHelper.customImage(img: "image 47.png"),
                            UIHelper.customText(
                                text: "27",
                                color: Color(0xff000000),
                                fontWeight: FontWeight.bold,
                                fontsize: 20,
                                fontFamily: "bold")
                          ],
                        )
                      ],
                    ),


                    Column(
                      children: [
                        Stack(
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 4,
                              child: UIHelper.customImage(img: "image 46.png"),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: UIHelper.customButton(callback: () {})),
                          ],
                        ),

                        UIHelper.customText(
                            text: "Hybrid Tomato",
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w600,
                            fontsize: 10),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            UIHelper.customImage(img: "timer 1.png"),
                            UIHelper.customText(
                                text: "16 MINS",
                                color: Color(0xff9C9C9C),
                                fontWeight: FontWeight.bold,
                                fontsize: 10,
                                fontFamily: "bold"),
                          ],
                        ),
                        Row(
                          children: [
                            UIHelper.customImage(img: "image 47.png"),
                            UIHelper.customText(
                                text: "27",
                                color: Color(0xff000000),
                                fontWeight: FontWeight.bold,
                                fontsize: 20,
                                fontFamily: "bold")
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
