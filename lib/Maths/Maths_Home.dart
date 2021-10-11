import 'package:flutter/material.dart';
import 'package:vtu/Home/Shortcode.dart';

class MathsHomePage extends StatelessWidget {
  const MathsHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bck0.JPG'),
                    fit: BoxFit.fill),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(18.0),
                child: Wrap(
                  // crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    Text('When u press anything no action will be their',style: TextStyle(fontSize: 25),),

                InkWell(
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => )),
                  //   );
                  // },
                  child: Container(
                    height: 120,
                    width: 150,
                    decoration: borderShape(
                        B: 10, L: 10, R: 10, T: 10, bxColor: Colors.orange),
                    child: Column(
                      children: [
                        Icon(
                          Icons.account_tree_outlined,
                          size: 50,
                          color: Colors.white,
                        ),
                        Center(
                            child: Text(
                          "  m "
                          "1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:35,
                          ),
                        )),
                      ],
                    ),
                  ),
                ),

                  ],
                )),
          ],
        ),
      ),
    );
  }
}
