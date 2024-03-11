import 'package:activity/MyDialog.dart';
import 'package:flutter/material.dart';
import 'back.dart';
import 'buttons.dart';

void main() => runApp(MaterialApp(home: const FrontPage(), routes: {
      '/main': (context) => const FrontPage(),
      '/back': (context) => const BackPage(),
    }));

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  String name = 'JOHNBERT P. DECINAN';
  String course = 'BSIT';
  String idNum = "1313370";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[900],

      body: Stack(children: [
        // Background Image
        Positioned.fill(
          child: Image.asset(
            'assets/images/bg.png', // Replace with your image asset path
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
          child: Center(
            child: Column(
              children: [
                // HEADER WITH LOGO
                const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage('assets/images/ctulogo.png'),
                            ),
                          ]),
                          Row(children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage('assets/images/asean.png'),
                            ),
                          ]),
                        ],
                      ),
                      SizedBox(width: 15.0),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text('Republic of the Philippnes')
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'CEBU TECHNOLOGICAL \nUNIVERSITY',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      fontFamily: 'Merri'),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'Main Campus:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text('M.J. Cuenco Avenue')
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text('corner R. Palma St., Cebu City.')
                              ],
                            )
                          ]),
                    ]),
                const SizedBox(height: 30),
                // STUDENT PICTURE
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black, // Border color
                          width: 3.0, // Border width
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/pic.jpg',
                        width: 220,
                        height: 220,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                // STUDENT INFORMATIONS
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/signature.png', width: 250,
                          // height: 200,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Text(
                          course,
                          style: (const TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 20)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black, // Border color
                              width: 3.0, // Border width
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/pic.jpg',
                            width: 250,
                            height: 0.0,
                            // fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'COURSE',
                          style: TextStyle(fontSize: 18),
                        ),
                        Row(
                          children: <Widget>[
                            const Column(
                              children: <Widget>[
                                Text('ID No.:', style: TextStyle(fontSize: 18))
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  idNum,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                // BUTTON
                // Main.dart snippet
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width *
                          0.5, // Set the width as needed
                      child: MyButton(
                        content: 'Go to Back',
                        onPressed: () {
                          // Using MyDialog to show the dialog directly
                          MyDialog.showCustomDialog(context,
                              toastMessageOnYes: "Navigating to backpage...",
                              path: '/back',
                              title: 'Confirmation',
                              content:
                                  'Are you sure you want to go to the back page?');
                        },
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),
                // ISO LOGO
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: <Widget>[
                //     Image.asset(
                //       'assets/images/iso.jpg',
                //       width: 120,
                //       // height: 10,
                //       fit: BoxFit.fill,
                //     )
                //   ],
                // )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
