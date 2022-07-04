import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jaeeun Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '재은 숙제'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // child: Icon(Icons.star),
        title: Text(widget.title),
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // column 일 때, 세로 정렬
          crossAxisAlignment: CrossAxisAlignment.start, // column 일 때, 가로 정렬
          children: <Widget>[
            const Text(
              '메인화면',
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
              child: Text('이미지')
            ),

            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdRoute()),
                 );
                },
              child: Text('이미지2'),
            )

          ],
        ),
      ),


      bottomNavigationBar: new GestureDetector(
        onTap: () {
          print("GestureDetector clicked");
        },
        child: Container(
            height: 55,
            color: Colors.blueGrey,
            child: new Column(children: [Icon(Icons.home), Text('홈')])
        )
      ),

      //
      endDrawer:
        Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp()),
                  );
                  // Update the state of the app.
                  // ...

                },

              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        )
      ,


        // BottomNavigationBarItem(
        //   icon: Icons.add,
        //   title: Text('add'),
        // )

      // bottomNavigationBar: BottomAppBar(
      //   child: SizedBox(
      //     height: 100,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Icon(Icons.home),
      //         const Text('메인화면')
      //       ],
      //     ),
      //   ),
      // ),

      // floatingActionButton: FloatingActionButton(
      //   // onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: ElevatedButton(
    //       onPressed: () {
    //         Navigator.pop(context);
    //       },
    //       child: Image.asset("images/cat.png")
    //   ),
    // );

    return Scaffold(
      appBar: AppBar(
        title: const Text('이미지 화면'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Image.asset("images/cat.png")
        ),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext) {
    return Row(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('dd'),
          ],
        ),
      ],
    );
  }

  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('이미지 화면'),
  //     ),
  //     body: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Container(
  //           width: 100,
  //           height: 100,
  //           color: Colors.red,
  //         ),
  //         Container(
  //           width: 100,
  //           height: 100,
  //           color: Colors.yellow,
  //         ),
  //         Container(
  //           width: 100,
  //           height: 100,
  //           color: Colors.green,
  //         ),
  //       ],
  //     ),
  //   );
  // }
}