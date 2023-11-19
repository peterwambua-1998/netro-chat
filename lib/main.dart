import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: Home()));
}

// stateless widget
// stateless means that the state of widget cannot change as we use the app, data cannot change
// stateful can change data
//  to use any images in pubspce.yaml just specify the folder only
class Home extends StatelessWidget {
  String title = 'peter';

  @override // means we want to use below build function and not the one from StatelessWidget
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('Nestro Chat'),
        backgroundColor: Colors.purple[400],
        centerTitle: true,
        leading: const Icon(Icons.account_circle, size: 30),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(0.0),
                height: 100.0,
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/elephant.jpg'),
                  radius: 40.0,
                )
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.pinkAccent,
                child: const Text('2'),
              ),
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: bottomNav(),
    );
  }
}

Widget bottomNav() {
  return BottomNavigationBar(
      elevation: 0.0,
      backgroundColor: Colors.purple[100],
      items: const [
        BottomNavigationBarItem(
            label: 'peter',
            icon: Icon(
              Icons.audiotrack,
              color: Colors.green,
            )),
        BottomNavigationBarItem(
            label: 'peter',
            icon: Icon(
              Icons.audiotrack,
              color: Colors.green,
            )),
      ]);
}


/**
 * 
 * Column(
        children:  <Widget>[
          Row(
            children: const <Widget>[
              Image(
                image: AssetImage('assets/elephant.jpg'),
                width:  300.0, 
                height: 300.0,
                alignment: Alignment.topLeft,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.airport_shuttle,
                color: Colors.blue,
                size: 20.0,
              ),
              IconButton(
                onPressed: () {}, 
                icon: Icon(Icons.mail)
              ),
              ElevatedButton(
                onPressed: () {
                  return print('p');
                },
                onLongPress: () {
                  return print('long pressed');
                },
                
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith((states) => Colors.purple),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Colors.blue.withOpacity(0.04);
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed))
                        return Colors.blue.withOpacity(0.12);
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                child: Row(children: [
                  Icon(Icons.mail),
                  Text('mail me')
                ]),
              )
            ],
          ),
        ]
      ),
 */


/**
 * padding 
 * 
 * Container(
        color: Colors.purple[50],
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        margin: const EdgeInsets.all(30.0),
        child: const Text('hello'),
      )
 */

/**
 * rows 
 * 
 * Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(title),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.purple[300],
              
            ),
            onPressed: () {title = 'dickspon'; print(title);}, 
            child: const Text('click me', style: TextStyle(color: Colors.black))
          ),
          Container(
            color: Colors.purple[100],
            padding: EdgeInsets.all(20.0),
            child: Text('container'),
          ),
        ]
      ),
 */