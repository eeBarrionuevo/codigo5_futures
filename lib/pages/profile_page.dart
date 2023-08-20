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
              padding: const EdgeInsets.all(12.0),
              margin: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.07),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.network(
                          "https://images.pexels.com/photos/1516680/pexels-photo-1516680.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                          height: 120.0,
                          width: 120.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Elliot Thomson",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Associate Editor",
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 13.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              color: Colors.red,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text("Chat"),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Follow"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
