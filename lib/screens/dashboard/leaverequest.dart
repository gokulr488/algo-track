import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:algo_track/common/constants.dart';
import 'banner.dart';

class Leave extends StatelessWidget {
  // static Object? treasury;

  const Leave({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leave Request'),
      ),
      body: Center(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.album),
                title: const Text('Half day leave application'),
                subtitle: const Text('Wed, 12 Dec'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () => context.goNamed(STAT_VIEWER),
                        icon: const Icon(Icons.arrow_circle_right))
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.album),
                title: const Text('Full day leave application'),
                subtitle: const Text('Fri, 14 Feb'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BannerNotification(
                                        message: 'banner',
                                      )));
                        },
                        icon: const Icon(Icons.arrow_circle_right))
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.album),
                title: const Text('Full day leave application'),
                subtitle: const Text('Thu, 21 Apr'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_circle_right))
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.album),
                title: const Text('Casual leave application'),
                subtitle: const Text('Mon, 15 June'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_circle_right))
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.album),
                title: const Text('Half day leave application'),
                subtitle: const Text('Fri, 02 Aug'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_circle_right))
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.album),
                title: const Text('3 days leave application'),
                subtitle: const Text('Tue, 22 Aug'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_circle_right))
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.album),
                title: const Text('Full day leave application'),
                subtitle: const Text('Fri, 14 Oct'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_circle_right))
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.album),
                title: const Text('Full day leave application'),
                subtitle: const Text('Wed, 30 Nov'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_circle_right))
                  ],
                ),
              ),
            ],
          ),
        ),
        //     child: TextField(
        //   obscureText: true,
        //   decoration: InputDecoration(
        //     border: OutlineInputBorder(),
        //     labelText: 'leaves damni it!!',
        //   ),
        // ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.goNamed(ADD_LEAVE),
        label: const Text('Add'),
        icon: const Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
    );
  }
}











// cardChild: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Container(
//                 width: 10,
//                 height: 10,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                 )),
//             Padding(
//               padding: EdgeInsets.all(8),
//               child: SizedBox(
//                 width: MediaQuery.of(context).size.width * 0.28,
//                 child: SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Text('full day application'),
//                 ),
//               ),
//             ),
//           ],
//         )),
