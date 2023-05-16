import 'package:flutter/material.dart';

// class StatusViewer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Leave Status')),
//         body: const Center(
//           child: DialogExample(),
//         ),
//       ),
//     );
//   }
// }

class StatusViewer extends StatelessWidget {
  const StatusViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Pending'),
      content: const Text('Half day leave application'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    );

    // return TextButton(
    //   onPressed: () => showDialog<String>(
    //     context: context,
    //     builder: (BuildContext context) => AlertDialog(
    //       title: const Text('Pending'),
    //       content: const Text('Half day leave application'),
    //       actions: <Widget>[
    //         TextButton(
    //           onPressed: () => Navigator.pop(context, 'OK'),
    //           child: const Text('OK'),
    //         ),
    //       ],
    //     ),
    //   ),
    //   child: const Text('Show Status'),
    // );
  }
}










      
//       body: Align(
//           alignment: Alignment.topCenter,
//           child: SizedBox(
//             width: 380,
//             child: TextFormField(
//               maxLines: null,
//               minLines: 11,
//               decoration: const InputDecoration(
//                 alignLabelWithHint: true,
//                 border: OutlineInputBorder(),
                
//               ),
//             ),
//           )),
//     );
//   }
// }




// body: Align(
        //   alignment: Alignment.topCenter,
        //   child: Column(
        //     mainAxisSize: MainAxisSize.min,
        //     children: [
        //       SizedBox(
        //         child: TextFormField(
        //           maxLines: null,
        //           minLines: 7,
        //           decoration: const InputDecoration(
        //             alignLabelWithHint: true,
        //             border: OutlineInputBorder(),
        //           ),
        //         ),
        //       )
        //     ],
        //   ),
        // )