import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      if(_counter<33){
        _counter++;
      }
    
    });
  }

  void _decrementCounter() {
    setState(() {
      if(_counter>0){
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child:  RaisedButton(
                    onPressed: () {
                        _decrementCounter();
                    },
                    child: Icon(Icons.delete),
                  ),
                ),
                Text('$_counter',
                  style: Theme.of(context).textTheme.headline5,
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () {
                        _incrementCounter();
                    },
                    child: Icon(Icons.add),
                  ),
                ), 
 
            ],
            ), 
              Container(
                child: Container(
                  child: Expanded(
                    child: GridView.count(crossAxisCount: 7,
                    children: List.generate(_counter, (index){
                      if(index == 0){
                        return Container(
                          margin: EdgeInsets.all(2),
                          color: Colors.grey,
                          child: Text('${index+1}'),
                        );
                      }
                      else if((index+1)%15 == 0){
                         return Container(
                          margin: EdgeInsets.all(2),
                          color: Colors.green,
                          child: Text('FACEBOOK'),
                        );
                      }
                      else if((index+1)%5 == 0){
                         return Container(
                          margin: EdgeInsets.all(2),
                          color: Colors.lightBlue,
                          child: Text('BOOK'),
                        );
                      }
                      else if((index+1)%3 == 0){
                        return Container(
                          margin: EdgeInsets.all(2),
                          color: Colors.red,
                          child: Text('FACE'),
                        );
                      }
                      else{
                        return Container(
                          margin: EdgeInsets.all(2),
                          color: Colors.grey,
                          child: Text('${index+1}'),
                        );
                      }
                    }),
                    
                    )
                  )
                )
                ) 
         
          ]
               
        ),
      ),

    );
  }
}
