import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Text('Counter Function'),
        leading: const Icon(Icons.calculate),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          )
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$clickCounter',
            style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w400),
          ),
          Text(
            'Click${clickCounter == 1 || clickCounter == -1 ? '' : 's'}',
            style: const TextStyle(fontSize: 100, fontWeight: FontWeight.w100),
          ),
          customButtom(
            icon: Icons.add,
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          customButtom(
            icon: Icons.remove,
            onPressed: () {
              setState(() {
                clickCounter--;
              });
            },
          )
        ],
      )),
    );
  }
}

// ignore: camel_case_types
class customButtom extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const customButtom({super.key, required this.icon, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      elevation: 5,
      child: Icon(icon),
    );
  }
}
