import 'package:flutter/material.dart';

class UIHelper {
  static customImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static customText(
      {required String text,
      required Color color,
      required FontWeight fontWeight,
      String? fontFamily,
      required double fontsize}) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: fontsize ,
          fontWeight: fontWeight,
          fontFamily: fontFamily ?? "regular"),
    );
  }
  static customTextFeild({
    required TextEditingController contreller  ,
    VoidCallback? myOnTap ,
    IconData? mySuffixIcon ,
    Color mySuffixColor = Colors.black


  }){
    return Container(
      height: 37,
      width: 346,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        color: Colors.white,
          border: Border.all(
          color: Color(0xffC5C5C5),
      ),
      ),
      child: TextField(
        controller: contreller,
        decoration: InputDecoration(
          hintText: "Search 'ice-cream'",
          prefixIcon: Image.asset("assets/images/search-interface-symbol 1.png"),
          suffixIcon: GestureDetector(
             onTap: myOnTap,
              child:  Icon(mySuffixIcon , color: mySuffixColor ,)),
          border: InputBorder.none
        ),
      ),
    );
  }
  static customButton({required VoidCallback callback}){
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Color(0xff27AF34)
            )
      ),
      child: Center(
        child: Text("Add",style: TextStyle(
          color: Color(0xff27AF34),
          fontSize: 10,
          fontFamily: "regular",
        ),
        ),
      ),
    );
  }
}
