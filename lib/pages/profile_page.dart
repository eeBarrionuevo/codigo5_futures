import 'package:codigo5_futures/services/service_data.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  ServiceData serviceData = ServiceData();
  Map<String, dynamic> data = {};

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    data = await serviceData.getProfile();
    setState(() {});
  }

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
              data.isNotEmpty
                  ? Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 12),
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
                                      data["image"],
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          data["fullName"],
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          data["role"],
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
                                            color:
                                                Colors.white.withOpacity(0.12),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
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
                                                    data["social"]["articles"]
                                                        .toString(),
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                                    data["social"]["following"]
                                                        .toString(),
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                                    data["social"]["rating"]
                                                        .toString(),
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          side: BorderSide(
                                            color:
                                                Colors.white.withOpacity(0.3),
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
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          backgroundColor:
                                              const Color(0xff06d6a0),
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
                          data["information"],
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            height: 1.6,
                          ),
                        ),
                      ],
                    )
                  : const SizedBox(
                      width: double.infinity,
                      height: 200.0,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
              const SizedBox(
                height: 12.0,
              ),
              ...List.generate(
                3,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        "https://images.pexels.com/photos/17997582/pexels-photo-17997582.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      "Ir de compras asdasd asdsad sdsad asdsadasd ",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      "Debes de llevar el voucher de la vez pasada",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white38,
                        fontSize: 13.0,
                      ),
                    ),
                    trailing: Icon(
                      Icons.check_circle_rounded,
                      color: Color(0xff06d6a0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
