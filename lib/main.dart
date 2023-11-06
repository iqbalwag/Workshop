import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Widget',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Latihan Widget'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        height: 300,
        margin: const EdgeInsets.fromLTRB(10, 100, 10, 0),
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 221, 221, 221),
          ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Text("Elden Ring", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
                        Flexible(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.thumb_up, size: 20, color: Color.fromARGB(255, 253, 208, 4),),
                              Icon(Icons.thumb_up, size: 20, color: Color.fromARGB(255, 253, 208, 4),),
                              Icon(Icons.thumb_up, size: 20, color: Color.fromARGB(255, 253, 208, 4),),
                              Icon(Icons.thumb_up_alt_outlined, size: 20, color: Color.fromARGB(255, 253, 208, 4)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet ante eget magna congue suscipit vel sit amet ipsum. Vivamus eleifend risus lacus, ac vestibulum elit placerat eu.', )
                  ),
                  Text(
                    'Sed non fermentum tortor, consectetur adipiscing elit. Maecenas sit amet ante eget magna congue suscipit vel sit amet ipsum. Vivamus eleifend risus lacus, ac vestibulum elit placerat eu.',
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Image.asset('assets/eldenbling.png')
            ),
          ],
        ),
      ),
    );
  }
}
