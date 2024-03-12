import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  ValueNotifier<int> counter = ValueNotifier(0);
  void incrementcounter() {
    counter.value = counter.value + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 400),
        child: Center(
          child: Column(
            children: [
              ValueListenableBuilder(
                  valueListenable: counter,
                  builder: (BuildContext context, int newvalue, child) {
                    return Text(
                      '$newvalue',
                      style: TextStyle(fontSize: 30),
                    );
                  }),
              ElevatedButton(
                  onPressed: () {
                    incrementcounter();
                  },
                  child: Icon(
                    Icons.add,
                    size: 20,
                  ))
            ],
          ),
        ),
      ),
    );
  }
 
}
