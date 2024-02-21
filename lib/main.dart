import 'package:flutter/material.dart';
import 'package:introapp/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.alphaBlend(
          const Color.fromARGB(244, 17, 130, 150),
          const Color.fromARGB(244, 255, 233, 22),
        ),
        title: const Text(
          "Main",
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
        ),
        // Container(
        //   decoration: const BoxDecoration(
        //       gradient: LinearGradient(colors: [
        //     Color.fromARGB(255, 18, 57, 129),
        //     Color.fromARGB(255, 99, 32, 138)
        //   ])),
        //   child: const Text("Register"),
        // ),
      ),
      body: const GradientContainer(
          // bgColors: [Colors.cyanAccent, Colors.blueAccent]),
          Colors.cyanAccent,
          Colors.blueAccent),
      // Container(
      //   decoration: const BoxDecoration(
      //       gradient: LinearGradient(colors: [
      //     Color.fromARGB(255, 139, 139, 139),
      //     Color.fromARGB(255, 73, 73, 73)
      //   ])),
      //   child: Center(
      //     child: TextButton(
      //       onPressed: () {},
      //       // add const to optimized performance
      //       child: const Text("Button"),
      //     ),
      //   ),
      // ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "You've pushed the button this many times :",
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
