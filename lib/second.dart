import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/provider.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final boolValue = Provider.of<User>(context, listen: false).mybool;
     final wordValue = Provider.of<User>(context, listen: false).word;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
    
          Text(wordValue?? "",
          style: TextStyle(color: boolValue==true? Colors.green:Colors.red),),
          const SizedBox(
            height: 20,
          ),
          TextField(
            onChanged: (value) {
setState(() {
                Provider.of<User>(context, listen: false).myfun(int.parse(value));
});
            },
            controller: _controller,
            decoration: const InputDecoration(hintText: "Enter your age"),
          )
        ],
      )),
    );
  }
}
