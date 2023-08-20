import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181818),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(14.0),
              color: Colors.amber,
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.network(
                        "https://images.pexels.com/photos/1516680/pexels-photo-1516680.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        height: 120.0,
                        width: 120.0,
                        fit: BoxFit.cover,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "Elliot Thomson",
                            ),
                            Text(
                              "Associate Editor",
                            ),
                            Container(
                              color: Colors.red,
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Text("Articles"),
                                      Text("34"),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("Followers"),
                                      Text("980"),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("Rating"),
                                      Text("8.9"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
