import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../../widget/uihelper.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  late MediaQueryData mqData;

  /// VOICE RECOGNITION ........ SPEECH TO TEXT ... //
  bool isRecording = false ;
  final SpeechToText speechToText = SpeechToText();
  bool isAvailable = false;

  @override
  void initState() {
    super.initState();
    initializedSpeechToText();
  }

  Future<void> initializedSpeechToText() async {
    isAvailable = await speechToText.initialize();
    setState(() {});
  }

  /// start
  void startListening() {
    if (isAvailable) {
      setState(() {
        isRecording = true;
      });
      speechToText.listen(onResult: (result) {
        setState(() {
          searchController.text = result.recognizedWords ;
        });
      });

      // Stop after 5 seconds
      Future.delayed(const Duration(seconds: 5), () {
        stopListening();
      });
    }
  }

  void stopListening() {
    if (isRecording) {
      speechToText.stop();
      setState(() {
        isRecording = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var data = [
      {"img": "image 50.png", "text": "Lights, Diyas & \nCandles"},
      {"img": "image 51.png", "text": "Diwal & \nGifts"},
      {"img": "image 52.png", "text": "Appliances & \nGadgets"},
      {"img": "image 53.png", "text": "Home & \nLiving "},
    ];
    var grocerykitchen = [
      {"img": "image 41.png", "text": "Vagetabbles & \nFruits"},
      {"img": "image 42.png", "text": "Atta daal \nRice"},
      {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
      {"img": "image 44 (1).png", "text": "dairy bread & \nmilk"},
      {"img": "image 45 (1).png", "text": "Biscuits &\nbakery"},
    ];
    mqData = MediaQuery.of(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffEC0505),
          flexibleSpace: Container(
            padding: const EdgeInsets.only(left: 25, right: 25),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIHelper.customText(
                    text: "Blinkit in",
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.bold,
                    fontsize: 12,
                    fontFamily: "bold"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UIHelper.customText(
                        text: "16 minutes",
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                        fontsize: 20,
                        fontFamily: "bold"),
                    const CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    UIHelper.customText(
                        text: 'HOME',
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                        fontsize: 12,
                        fontFamily: "bold"),
                    UIHelper.customText(
                        text: " - Vikrant Singh, Shekpura,kannauj,",
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w400,
                        fontsize: 12)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                UIHelper.customTextFeild(contreller: searchController , myOnTap: startListening ,
                mySuffixColor: isRecording ? Colors.blue : Colors.red ,
                  mySuffixIcon: isRecording ? Icons.mic : Icons.mic_none
                ),
              ],
            ),
          ),
          toolbarHeight: mqData.size.height * 0.2,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Divider(
                height: 1,
              ),
              Column(
                children: [
                  Container(
                    height: mqData!.size.height * 0.25,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Color(0xffEC0505),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            UIHelper.customImage(img: "image 60.png"),
                            UIHelper.customImage(img: "image 55.png"),
                            UIHelper.customText(
                                text: "Mega Diwali Sale",
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontsize: 22,
                                fontFamily: "bold"),
                            UIHelper.customImage(img: "image 55.png"),
                            UIHelper.customImage(img: "image 60.png"),
                          ],
                        ),
                        SizedBox(
                          height: mqData.size.height * 0.15,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: ListView.builder(
                                itemCount: data.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Container(
                                      height: 108,
                                      width: 86,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xffEAD3D3),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          UIHelper.customText(
                                              text: data[index]["text"]
                                                  .toString(),
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontsize: 10),
                                          UIHelper.customImage(
                                              img:
                                                  data[index]["img"].toString())
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Stack(
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        elevation: 4,
                                        child: UIHelper.customImage(
                                            img: "image 54.png"),
                                      ),
                                      Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: UIHelper.customButton(
                                              callback: () {})),
                                    ],
                                  ),
                                  UIHelper.customText(
                                      text:
                                          "Golden Glass \nWooden Lid Candle (Oudh)",
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
                                          text: "79",
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.bold,
                                          fontsize: 20,
                                          fontFamily: "bold")
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Stack(
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        elevation: 4,
                                        child: UIHelper.customImage(
                                            img: "image 57.png"),
                                      ),
                                      Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: UIHelper.customButton(
                                              callback: () {})),
                                    ],
                                  ),
                                  UIHelper.customText(
                                      text: "Royal Gulab Jamun \nBy Bikano",
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
                                          text: "79",
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.bold,
                                          fontsize: 20,
                                          fontFamily: "bold")
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Stack(
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        elevation: 4,
                                        child: UIHelper.customImage(
                                            img: "image 63.png"),
                                      ),
                                      Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: UIHelper.customButton(
                                              callback: () {})),
                                    ],
                                  ),
                                  UIHelper.customText(
                                      text: "Bikaji Bhujia",
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
                                          text: "79"
                                              "",
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.bold,
                                          fontsize: 20,
                                          fontFamily: "bold")
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
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
                    height: mqData!.size.height * 0.2,
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
                                      img: grocerykitchen[index]["img"]
                                          .toString()),
                                ),
                              ),
                              UIHelper.customText(
                                  text:
                                      grocerykitchen[index]["text"].toString(),
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontsize: 10)
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
