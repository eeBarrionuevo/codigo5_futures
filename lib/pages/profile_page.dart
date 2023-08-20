import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181818),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                // margin: const EdgeInsets.all(16.0),
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
                              const SizedBox(
                                height: 6.0,
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.12),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "Articles",
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.white54,
                                          ),
                                        ),
                                        Text(
                                          "34",
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Following",
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.white54,
                                          ),
                                        ),
                                        Text(
                                          "234",
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Rating",
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.white54,
                                          ),
                                        ),
                                        Text(
                                          "5.3",
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
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
                      ],
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 42.0,
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                side: BorderSide(
                                  color: Colors.white.withOpacity(0.3),
                                  width: 1,
                                ),
                              ),
                              child: Text(
                                "Chat",
                                style: TextStyle(
                                  color: Colors.white54,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 42.0,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                backgroundColor: const Color(0xff06d6a0),
                              ),
                              child: Text("Follow"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                "Profile",
                style: TextStyle(
                  color: Colors.white60,
                ),
              ),
              Text(
                "Information",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500",
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  height: 1.6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
