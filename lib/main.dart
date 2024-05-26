import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Flutter Stateful Clicker Counter';

  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  Widget _buildContainer({
    required Color color,
    double width = 50,
    double height = 50,
    Widget? child,
    EdgeInsetsGeometry margin = EdgeInsets.zero,
    EdgeInsetsGeometry padding = EdgeInsets.zero,
    BoxBorder? border,
    BoxDecoration? decoration,
    Function()? onTap,
  }) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: decoration ??
          BoxDecoration(
            color: color,
            border: border,
          ),
      child: InkWell(
        onTap: onTap,
        child: child,
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Click Counter'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: const TextStyle(fontSize: 25),
              ),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: <Widget>[
                  _buildContainer(
                    color: Colors.red,
                    onTap: () => _showSnackBar(context, 'Container 1 clicked'),
                  ),
                  _buildContainer(
                    color: Colors.green,
                    width: 100,
                    height: 100,
                    onTap: () => _showSnackBar(context, 'Container 2 clicked'),
                  ),
                  _buildContainer(
                    color: Colors.blue,
                    width: 70,
                    height: 70,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  _buildContainer(
                    color: Colors.orange,
                    width: 120,
                    height: 60,
                    margin: EdgeInsets.all(5),
                    child: Center(
                        child:
                            Text('4', style: TextStyle(color: Colors.white))),
                  ),
                  _buildContainer(
                    color: Colors.purple,
                    width: 50,
                    height: 50,
                    onTap: () => _showSnackBar(context, 'Container 5 clicked'),
                  ),
                  _buildContainer(
                    color: Colors.yellow,
                    width: 80,
                    height: 80,
                    padding: EdgeInsets.all(10),
                    child: FlutterLogo(),
                  ),
                  _buildContainer(
                    color: Colors.cyan,
                    width: 60,
                    height: 60,
                    border: Border.all(color: Colors.black, width: 3),
                    child: Center(child: Text('7')),
                  ),
                  _buildContainer(
                    color: Colors.teal,
                    width: 90,
                    height: 90,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    onTap: () => _showSnackBar(context, 'Container 8 clicked'),
                  ),
                  _buildContainer(
                    color: Colors.pink,
                    width: 50,
                    height: 100,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.favorite, color: Colors.white),
                  ),
                  _buildContainer(
                    color: Colors.lime,
                    width: 70,
                    height: 70,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Icon(Icons.star, color: Colors.white),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Icon(Icons.star, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  _buildContainer(
                    color: Colors.indigo,
                    width: 100,
                    height: 50,
                    onTap: () => _showSnackBar(context, 'Container 11 clicked'),
                  ),
                  _buildContainer(
                    color: Colors.brown,
                    width: 60,
                    height: 60,
                    border: Border.all(color: Colors.black),
                    margin: EdgeInsets.all(8),
                  ),
                  _buildContainer(
                    color: Colors.amber,
                    width: 120,
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.access_alarm),
                        SizedBox(width: 5),
                        Text('Alarm')
                      ],
                    ),
                  ),
                  _buildContainer(
                    color: Colors.deepPurple,
                    width: 50,
                    height: 50,
                    onTap: () => _showSnackBar(context, 'Container 14 clicked'),
                  ),
                  _buildContainer(
                    color: Colors.lightBlue,
                    width: 70,
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home, color: Colors.white),
                        Text('Home', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
