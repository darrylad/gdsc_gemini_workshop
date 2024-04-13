import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage1(),
    );
  }
}

class MyHomePage1 extends StatefulWidget {
  MyHomePage1({super.key});

  @override
  State<MyHomePage1> createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Expanded(
                child: SizedBox(),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                        controller: _controller,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Type here',
                        )),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text('send'),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int count = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text('$count'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           count++;
//           setState(() {});
//           print(count);
//         },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }





























// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   TextEditingController _controller = TextEditingController();
//   List<String> messages = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//             child: Padding(
//       padding: const EdgeInsets.all(15.0),
//       child: Column(
//         children: [
//           Expanded(
//               child: Center(
//             child: ListView.builder(
//               itemCount: messages.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text('Message ${index + 1}:\n${messages[index]}'),
//                 );
//               },
//             ),
//           )),
//           Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Expanded(
//                 child: TextField(
//                     controller: _controller,
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(),
//                       labelText: 'Type here',
//                     )),
//               ),
//               const SizedBox(width: 30),
//               ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       messages.add(_controller.text);
//                       _controller.clear();
//                     });
//                   },
//                   child: const Padding(
//                     padding: EdgeInsets.all(20.0),
//                     child: Text('send'),
//                   ))
//             ],
//           ),
//         ],
//       ),
//     )));
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
