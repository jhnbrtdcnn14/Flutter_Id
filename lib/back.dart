import 'front.dart';
import 'buttons.dart';
import 'package:flutter/material.dart';

class BackPage extends StatelessWidget {
  const BackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            decoration:
                                BoxDecoration(border: Border.all(width: 3)),
                            height: 50,
                            width: 160,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('BLOOD TYPE'),
                                Text('NA')
                              ],
                            )),
                        Container(
                            decoration:
                                BoxDecoration(border: Border.all(width: 3)),
                            height: 50,
                            width: 160,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('BIRTH DATE'),
                                Text('02/05/2003')
                              ],
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            decoration:
                                BoxDecoration(border: Border.all(width: 3)),
                            height: 150,
                            width: 320,
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('In Case of Emergency Please Notify:'),
                                  Text('Jeby P. Decinan'),
                                  Text('Lawis, Alaska, Mambaling, Cebu City'),
                                  SizedBox(height: 40),
                                  Text('+639229201654'),
                                ],
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Date Issued:'),
                        SizedBox(width: 10),
                        Text('08/25/2021'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('VALID UNTIL:'),
                        SizedBox(width: 10),
                        Text('08/25/2025'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('UNLESS EARLIER REVOKED OR SURRENDERED')
                      ],
                    ),
                    // FIRST BULLET
                    const Column(
                      children: [
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 30.0)),
                            Text(
                              '•',
                              style: TextStyle(
                                fontSize: 30.0,
                              ),
                            ),
                            Text(
                              'The person whose picture and signature appear hereon is a',
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 40.0)),
                            Text(
                              'bonafide student of ',
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                            Text(
                              'Cebu Technological University',
                              style: TextStyle(
                                fontSize: 11.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),

                    // SECOND BULLET
                    const Column(
                      children: [
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 30.0)),
                            Text(
                              '•',
                              style: TextStyle(
                                fontSize: 30.0,
                              ),
                            ),
                            Text(
                              'This card is non transferable property of ',
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                            Text(
                              'CTU ',
                              style: TextStyle(
                                  fontSize: 11.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'and must be',
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 40.0)),
                            Text(
                              'surrendered upon graduation or transfer.',
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),

                    // THIRD BULLET
                    const Column(
                      children: [
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 30.0)),
                            Text(
                              '•',
                              style: TextStyle(
                                fontSize: 30.0,
                              ),
                            ),
                            Text(
                              'Card must be presented upon entry and must worn when ',
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 40.0)),
                            Text(
                              'inside the university premises. ',
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),

                    // FOURTH BULLET
                    const Column(
                      children: [
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 30.0)),
                            Text(
                              '•',
                              style: TextStyle(
                                fontSize: 30.0,
                              ),
                            ),
                            Text(
                              'Tampering invalidates this card and subject to disciplinary ',
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 40.0)),
                            Text(
                              'action.',
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),

                    // FIFTH BULLET
                    Column(
                      children: [
                        const Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 30.0)),
                            Text(
                              '•',
                              style: TextStyle(
                                fontSize: 30.0,
                              ),
                            ),
                            Text(
                              'In case of loss, please report to SAO office.',
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(
                                  'assets/images/president-signature.png'),
                              width: 250.0,
                              height: 100.0,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width *
                                    0.5, // Set the width as needed
                                child: MyButton(
                                  content: 'Back to front',
                                  onPressed: () {
                                    // Navigate to the BackPage when the button is clicked
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FrontPage()),
                                    );
                                  },
                                )),
                          ],
                        ),
                      ],
                    ),
                  ]),
            )));
  }
}
