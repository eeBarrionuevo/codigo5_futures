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
      body: Center(
        child: FutureBuilder(
          future: getNumber(),
          builder: (BuildContext context, AsyncSnapshot snap) {
            print(snap);
            print(snap.connectionState);
            print(snap.hasData);
            print(snap.hasError);
            print(snap.data);
            int n = snap.data;
            return Text(n.toString());
          },
        ),
      ),
    );
  }
}
