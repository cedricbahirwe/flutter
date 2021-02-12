import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(StackWidget());
}



class StackWidget extends StatefulWidget {
  @override
  _StackWidgetState createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Card(color: Colors.red, child: Padding(padding: EdgeInsets.all(200),)),
            Card(color: Colors.green, child: Padding(padding: EdgeInsets.all(100),)),
            Card(color: Colors.blue, child: Padding(padding: EdgeInsets.all(50),)),
            Card(color: Colors.yellow, child: Padding(padding: EdgeInsets.all(30),)),
            Card(color: Colors.brown, child: Padding(padding: EdgeInsets.all(10),)),
          ],
        ),
      ),
    );
  }
}


class ListArrayWidget extends StatefulWidget {
  @override
  _ListArrayWidgetState createState() => _ListArrayWidgetState();
}

class _ListArrayWidgetState extends State<ListArrayWidget> {
  List<int> items = List();


  @override
  void initState() {
    // TODO: implement initState

    for(int i=0; i<15; i++) {
        items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Cedric's List Widget"), centerTitle: false,),
        body: ListView.builder(
          itemCount: items.length,
            itemBuilder: (BuildContext context, int index){
            return ListTile(
              title: Text("Item number $index"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            );

            })
      ),
    );
  }
}


class ListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Cedric's List Widget"), centerTitle: false,),
        body: ListView(
          children: [
            ListTile(
              title: Text("Item 1"),
              trailing: Icon(Icons.add),
            ),
            ListTile(
              title: Text("Item 2"),
              trailing: Icon(Icons.add),
            ),
            ListTile(
              title: Text("Item 3"),
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}


class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
    children: [
    Icon(Icons.add),
    Text("The house of richest", style: Theme.of(context).textTheme.headline6,),
    ],
    );
  }
}


class RowColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("Cédric\'s Row & Column Widget"),),
          body: Column(
            children: [
              RowWidget(),
              RowWidget(),
              RowWidget(),

            ],


          ),
        ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          // color: Colors.red,
          child: Text(
            "Cedric's Container",
            style: Theme.of(context).textTheme.headline4,
          ),
          height: 300,
          width: 300,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          foregroundDecoration: BoxDecoration(
            color: Colors.deepPurple
          ),

        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cédric State less widget",
      home: Scaffold(
        body: Container(
          color: Colors.red,
          child: Container(
            color: Colors.blue,
            // margin: EdgeInsets.all(40),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SecondWidget extends StatefulWidget {
  @override
  _SecondWidgetState createState() => _SecondWidgetState();
}

class _SecondWidgetState extends State<SecondWidget> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    count = 0;
    super.initState();
  }

  void onButtonClicked() {
    setState(() {
      count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cedric StateFul Widget",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        body: Center(
          child: RaisedButton(
            onPressed: onButtonClicked,
            child: Text(count.toString() + '${count}c'),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Cédric\'s Learning'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
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
      _counter += 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Incrementing',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
