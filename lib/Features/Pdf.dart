

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

// class PDFView extends StatefulWidget {
//   final String uri;
//   PDFView({this.uri});

//   @override
//   _PDFViewState createState() => _PDFViewState();
// }

// class _PDFViewState extends State<PDFView> with AutomaticKeepAliveClientMixin {
//   bool _isLoading = true;
//   bool get wantKeepAlive => true;
//   @override
//   void initState() {
//     loadPdf();
//     super.initState();
//   }

//   PDFDocument document;

//   loadPdf() async {
//     print("URI  : " + widget.uri);
//     setState(() {
//       _isLoading = true;
//     });
//     document = await PDFDocument.fromURL(widget.uri);
//     setState(() {
//       _isLoading = false;
//     });
//   }

//   @override
//   // ignore: must_call_super
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//             child: Text(
//           'PDF-Files',
//           style: TextStyle(color: Colors.purple, fontSize: 25),
//         )),
//         backgroundColor: Colors.amber,
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: _isLoading
//             ? Center(
//                 child: CircularProgressIndicator(
//                 color: Colors.green[300],
//               ))
//             : PDFViewer(
//                 document: document,
//                 zoomSteps: 2,
//                 lazyLoad: false,
//                 scrollDirection: Axis.vertical,
//                 navigationBuilder:
//                     (context, page, totalPages, jumpToPage, animateToPage) {
//                   return ButtonBar(
//                     alignment: MainAxisAlignment.spaceAround,
//                     children: <Widget>[
//                       IconButton(
//                         icon: Icon(
//                           Icons.first_page,
//                           color: Colors.red,
//                           size: 35,
//                         ),
//                         onPressed: () {
//                           jumpToPage(page: 0);
//                         },
//                       ),
//                       IconButton(
//                         icon: Icon(Icons.arrow_back,
//                             color: Colors.green, size: 35),
//                         onPressed: () {
//                           animateToPage(page: page - 2);
//                         },
//                       ),
//                       IconButton(
//                         icon: Icon(Icons.arrow_forward,
//                             color: Colors.green, size: 35),
//                         onPressed: () {
//                           animateToPage(page: page);
//                         },
//                       ),
//                       IconButton(
//                         icon:
//                             Icon(Icons.last_page, color: Colors.red, size: 35),
//                         onPressed: () {
//                           jumpToPage(page: totalPages - 1);
//                         },
//                       ),
//                     ],
//                   );
//                 },
//               ),
//       ),
//     );
//   }
// }

// ignore: must_be_immutable
class PDFView extends StatefulWidget {
  String uri;
  PDFView({this.uri});
  @override
  _PDFViewState createState() => _PDFViewState();
}

class _PDFViewState extends State<PDFView> {
  @override
  Widget build(BuildContext context) {
   final document = widget.uri;
    return Scaffold(
        body: SafeArea(
          child: Container(
              child: SfPdfViewer.network(document),
            ),
        ));
  }
}
