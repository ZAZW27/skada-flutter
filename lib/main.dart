import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  int satu = 5; 
  int dua = 10; 

  print(satu > dua);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CombineTextPage()
    );
  }
}

class CombineTextPage extends StatefulWidget {
  const CombineTextPage({super.key});
  @override
  State<CombineTextPage> createState() => _CombineTextPageState(); 
}

class _CombineTextPageState extends State<CombineTextPage> {
  final TextEditingController input1 = TextEditingController();
  final TextEditingController input2 = TextEditingController();
  String result = ""; 

  void combineText(){
    setState(() {
      result = input1.text + " " + input2.text;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Simple combine")), 
      body: Padding(
        padding: const EdgeInsets.all(16), 
        child: Column(
          children: [
            TextField(
              controller: input1,
              decoration: const InputDecoration(
                labelText: "nama",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: input2,
              decoration: const InputDecoration(
                labelText: "Input 2",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: combineText,
              child: const Text("Combine"),
            ),
            const SizedBox(height: 16),
            Text(result),
          ],
        )
      )
    );
  }
}