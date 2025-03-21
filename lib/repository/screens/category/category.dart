import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/uihelper.dart';

class Category extends StatelessWidget {

  late MediaQueryData mqData ;

  @override
  Widget build(BuildContext context) {

    TextEditingController searchController = TextEditingController();
    var grocerykitchen = [
      {"img": "image 41.png", "text": "Vagetabbles & \nFruits"},
      {"img": "image 42.png", "text": "Atta daal \nRice"},
      {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
      {"img": "image 44 (1).png", "text": "dairy bread & \nmilk"},
      {"img": "image 45 (1).png", "text": "Biscuits &\nbakery"},
    ];

    var secondGroceryKitech = [
      {"img": "image 21.png", "text": "Dry fruit & \nCereals"},
      {"img": "image 22.png", "text": "Kitechen & \nApliances"},
      {"img": "image 23.png", "text": "Tea &\nCoffe"},
      {"img": "image 24 (5).png", "text": "Ice-Cream& \nmuch more "},
      {"img": "image 25 (1).png", "text": "Noodles &\npackets food"},
    ];
    var snacksdrink = [
      {"img": "image 31.png", "text": "Chips &\nNamkeens"},
      {"img": "image 32.png", "text": "Sweets &\nChocalates"},
      {"img": "image 33.png", "text": "Drinks &\nJuices"},
      {"img": "image 34 (1).png", "text": "Sauces &\nSpreads"},
      {"img": "image 35.png", "text": "Beauty &\nCosmetis"},
    ];
    var HouseHold = [
      {"img": "image 36.png", },
      {"img": "image 37.png", },
      {"img": "image 38.png", },
      {"img": "image 39.png", },
      {"img": "image 40.png", },
    ];
    mqData = MediaQuery.of(context) ;
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 10,
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

              /// navebar is  over here ///
            ],
            /// navabar is  over here ///
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 15),
                  UIHelper.customText(
                      text: "Grocery & kitchen",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontsize: 14,
                      fontFamily: "bold")
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: mqData.size.height * 0.15,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: ListView.builder(
                    itemCount: grocerykitchen.length,
                    scrollDirection: Axis.horizontal,
                    // Moved itemCount before itemBuilder
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 78,
                              width: 71,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffD9EBEB),
                              ),
                              child: UIHelper.customImage(
                                  img: grocerykitchen[index]["img"].toString()),
                            ),
                          ),
                          UIHelper.customText(
                              text: grocerykitchen[index]["text"].toString(),
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontsize: 10)
                        ],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: mqData.size.height * 0.15,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: ListView.builder(
                    itemCount: secondGroceryKitech.length,
                    scrollDirection: Axis.horizontal,
                    // Moved itemCount before itemBuilder
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 78,
                              width: 71,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffD9EBEB),
                              ),
                              child: UIHelper.customImage(
                                  img: secondGroceryKitech[index]["img"].toString()),
                            ),
                          ),
                          UIHelper.customText(
                              text: secondGroceryKitech[index]["text"].toString(),
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontsize: 10)
                        ],
                      );
                    },
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  UIHelper.customText(
                      text: "Snacks & Drinks",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontsize: 14,
                      fontFamily: "bold")
                ],
              ),
              SizedBox(
                height: mqData.size.height * 0.15,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: ListView.builder(
                    itemCount: snacksdrink.length,
                    scrollDirection: Axis.horizontal,
                    // Moved itemCount before itemBuilder
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 78,
                              width: 71,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffD9EBEB),
                              ),
                              child: UIHelper.customImage(
                                  img: snacksdrink[index]["img"].toString()),
                            ),
                          ),
                          UIHelper.customText(
                              text: snacksdrink[index]["text"].toString(),
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontsize: 10),
                        ],
                      );
                    },
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  UIHelper.customText(
                      text: "Household Essentials",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontsize: 14,
                      fontFamily: "bold")
                ],
              ),
              SizedBox(
                height: mqData.size.height * 0.15,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: ListView.builder(
                    itemCount: HouseHold.length,
                    scrollDirection: Axis.horizontal,
                    // Moved itemCount before itemBuilder
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 78,
                              width: 71,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffD9EBEB),
                              ),
                              child: UIHelper.customImage(
                                  img: HouseHold[index]["img"].toString()),
                            ),
                          ),

                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),

      ],
    ));
  }
}
