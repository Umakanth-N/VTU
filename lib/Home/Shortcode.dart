import 'package:flutter/material.dart';
import 'package:get/get.dart';

Drawer dd() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          accountName: Text('Umakanth N'),
          accountEmail: Text('umakanth@gmail.com'),
        ),
        ListTile(
          leading: Icon(Icons.home,color: Colors.greenAccent,size: 45,),
          title: Text('Home',style: TextStyle(color: Colors.amber,fontSize: 30),),
          onTap: () {
            BuildContext context;
            Navigator.pop(context);
          },
        )
      ],
    ),
  );
}

// ListTile moduleList(
//     {var listTileText,
//     Color listTileTextColor,
//     IconData listTileIcon,
//     Color c,
//     navigator,
//     /*hat keyWord is used in onTap 2 navigate where is neaded */
//     String uri}) {
//   return ListTile(
//     minLeadingWidth: 10,
//     leading: Icon(listTileIcon),
//     title: Center(
//         child: Text(listTileText,
//             style: TextStyle(color: listTileTextColor, fontSize: 20))),
//     onTap: () {
//       Get.to(navigator);
//     },
//   );
// }

// This Bellow Code Listoftiles Can used in different dart files to reduce Code size
ListTile listoftiles(
    {var listTileText,
    Color listTileTextColor,
    IconData listTileIcon,
    Color c,
    navigator,
    /*hat keyWord is used in onTap 2 navigate where is neaded */
    String uri}) {
  return ListTile(
    minLeadingWidth: 10,
    leading: Icon(listTileIcon),
    title: Center(
        child: Text(listTileText,
            style: TextStyle(color: listTileTextColor, fontSize: 20))),
    onTap: () {
      Get.to(navigator);
    },
  );
}

// This Bellow code expasinTile() is used in different dart file to reduce code size
Stack expansionTile(
    {var expText,
    Color expTextColor,
    gradintColSquarBrace,
    childrenSquarBrace}) {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: ShapeDecoration(
            gradient: LinearGradient(
                colors: gradintColSquarBrace,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(6),
              topLeft: Radius.circular(6),
              topRight: Radius.circular(30),
            )),
          ),
          child: ExpansionTile(
              title: Center(
                child: Text(
                  expText,
                  style: TextStyle(color: expTextColor, fontSize: 25),
                ),
              ),
              leading: Icon(
                Icons.view_list_outlined,
                color: Colors.purple,
                size: 25,
              ),
              children: childrenSquarBrace),
        ),
      ),
      Container(
        decoration: borderShape(
          B: 10,
          L: 10,
          R: 10,
          T: 10,
        ),
      )
    ],
  );
}

// This Bellow borderShape code is used for the SHAPE of the expansionTile (Used in Home Page CSE,Maths Card)
Decoration borderShape(
    {double L, double R, double T, double B, Color bxColor}) {
  return BoxDecoration(
    color: bxColor,
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(L),
      bottomRight: Radius.circular(R),
      topLeft: Radius.circular(T),
      topRight: Radius.circular(B),
    ),
  );
}
