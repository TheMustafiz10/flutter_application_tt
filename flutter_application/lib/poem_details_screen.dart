// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:share_plus/share_plus.dart';

// class PoemDetailsScreen extends StatefulWidget {
//   final String title;
//   final String author;
//   final String lines;

//   const PoemDetailsScreen(this.title, this.author, this.lines, {super.key});

//   @override
//   State<PoemDetailsScreen> createState() => _PoemDetailsScreenState();
// }

// class _PoemDetailsScreenState extends State<PoemDetailsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: InkWell(
//           onTap: () => Navigator.pop(context),
//           child: Icon(Icons.arrow_back, color: Colors.white),
//         ),
//         backgroundColor: Colors.brown,
//         title: Text("Poem Details", style: TextStyle(color: Colors.white)),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 8.0),
//             child: InkWell(
//               onTap: () async {
//                 await Clipboard.setData(ClipboardData(text: widget.lines));
//                 Fluttertoast.showToast(msg: "Copied Text Successfully");
//               },
//               child: Icon(Icons.copy, color: Colors.white),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 8.0),
//             child: InkWell(
//               onTap: () {
//                 Share.share(widget.lines, subject: "Share from Book Apps");
//               },
//               child: Icon(Icons.share, color: Colors.white),
//             ),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SelectableText(
//                 widget.title,
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 5.0),
//               SelectableText(
//                 widget.author,
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 10),
//               SelectableText(
//                 widget.lines,
//                 style: TextStyle(fontSize: 16),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';

class PoemDetailsScreen extends StatefulWidget {
  final String title;
  final String author;
  final String lines;

  const PoemDetailsScreen(this.title, this.author, this.lines, {super.key});

  @override
  State<PoemDetailsScreen> createState() => _PoemDetailsScreenState();
}

class _PoemDetailsScreenState extends State<PoemDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Poem Details", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(Icons.copy, color: Colors.white),
            onPressed: () async {
              final text = '${widget.title}\n${widget.author}\n\n${widget.lines}';
              await Clipboard.setData(ClipboardData(text: text));
              Fluttertoast.showToast(msg: "Copied text successfully");
            },
          ),
          IconButton(
            icon: Icon(Icons.share, color: Colors.white),
            onPressed: () {
              final text = '${widget.title}\n${widget.author}\n\n${widget.lines}';
              Share.share(text, subject: "Shared from Book App");
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              widget.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5.0),
            SelectableText(
              widget.author,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            SelectableText(
              widget.lines,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
