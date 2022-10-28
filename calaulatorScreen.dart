import 'package:flutter/material.dart';

class CalaulatorScrren extends StatefulWidget {
  const CalaulatorScrren({super.key});

  @override
  State<CalaulatorScrren> createState() => _CalaulatorScrrenState();
}

class _CalaulatorScrrenState extends State<CalaulatorScrren> {
  final TextEditingController firstController =
      TextEditingController(); //used to fecth values from textfiled
  final TextEditingController secondController =
      TextEditingController(); //used to fecth values from textfiled
  int _total = 0;

  void _add() {
    setState(() {
      _total =
          int.parse(firstController.text) + int.parse(secondController.text);
    });
  }

  void _sub() {
    setState(() {
      _total =
          int.parse(firstController.text) - int.parse(secondController.text);
    });
  }

  void _mul() {
    setState(() {
      _total =
          int.parse(firstController.text) * int.parse(secondController.text);
    });
  }

  void _div() {
    setState(() {
      _total =
          int.parse(firstController.text) + int.parse(secondController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    const Text("Build is called");
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Calaulator App")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Calaulator",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              // it provide gup b/w wedgits in flutter ui.
              height: 20,
            ),
            TextField(
              // add textfiled in flutter ui.
              controller: firstController, //1
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter first number",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              // add textfiled in flutter ui.
              controller: secondController, //2
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter second numer",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              //vertically wedgits are aligin in flutter ui.
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    // add button
                    onPressed: () {
                      _add();
                      firstController.clear();
                      secondController.clear();
                    },
                    child: const Text("add")),
                ElevatedButton(
                    //sub button.
                    onPressed: () {
                      _sub();
                      firstController.clear();
                      secondController.clear();
                    },
                    child: const Text("sub")),
                ElevatedButton(
                    //mul button.
                    onPressed: () {
                      _mul();
                      firstController.clear();
                      secondController.clear();
                    },
                    child: const Text("mul")),
                ElevatedButton(
                    // div button.
                    onPressed: () {
                      _div();
                      firstController.clear();
                      secondController.clear();
                    },
                    child: const Text("div")),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Result $_total", //print result on calaulator
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
    //print("sum is $_total");
  }
}
