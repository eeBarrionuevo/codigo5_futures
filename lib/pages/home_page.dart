import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<String> getTitle() async {
    return Future.delayed(const Duration(seconds: 4), () {
      return "Real - Kendrick Lamar";
    });
  }

  Future<int> getNumber() async {
    return Future.delayed(const Duration(seconds: 4), () {
      return 999;
    });
  }

  Future<List<String>> getProducts() async {
    return Future.delayed(const Duration(seconds: 5), () {
      return ["Fresa", "Mandarina", "Papaya", "Platano"];
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Futures"),
      ),

      body: FutureBuilder(
        future: getProducts(),
        builder: (BuildContext context, AsyncSnapshot snap) {
          if (snap.hasData) {
            List<String> data = snap.data;

            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return Text(data[index]);
              },
            );
          }
          return CircularProgressIndicator();
        },
      ),

      // body: Center(
      //   child: FutureBuilder(
      //     future: getNumber(),
      //     builder: (BuildContext context, AsyncSnapshot snap) {
      //       if (snap.hasData) {
      //         int n = snap.data;
      //         return Text(n.toString());
      //       }
      //       return const SizedBox(
      //         height: 20,
      //         width: 20,
      //         child: CircularProgressIndicator(
      //           color: Colors.pink,
      //           strokeWidth: 2.0,
      //         ),
      //       );
      //     },
      //   ),
      // ),
    );
  }
}
