import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  // void _refresh() {
  //   setState(() {
  //     count = 0;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Center(
          child: SizedBox(
            
            width: MediaQuery.sizeOf(context).width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Pressed $count times"),
                ElevatedButton(
                  onPressed: () {
                    setState(
                      () {
                        count++;
                      },
                    );
                  },
                  child: const Icon(Icons.add),
                )
              ],
            ),
          ),
        ),
      );
  }
}
