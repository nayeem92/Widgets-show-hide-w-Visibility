import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _visible = true;
  bool _visible2 = true;
  bool _visible3 = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widgets'),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _visible = !_visible;
                  });
                },
                child: Text('Show/hide-Red'),
              ),


              SizedBox(
                height: 30,
              ),

              Visibility(
                  visible: _visible,
                  child: ColorContainerView(title: 'Red', colorName: Colors.red),),

              SizedBox(
                height: 30,
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _visible2 = !_visible2;
                  });
                },
                child: Text('Show/hide-Blue'),
              ),

              SizedBox(
                height: 30,
              ),

              Visibility(
                  visible: _visible2,
                  child: ColorContainerView(
                      title: 'Blue', colorName: Colors.blue)),

              SizedBox(
                height: 30,
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _visible3 = !_visible3;
                  });
                },
                child: Text('Show/hide-Black'),
              ),

              SizedBox(
                height: 30,
              ),

              Visibility(
                  visible: _visible3,
                  child: ColorContainerView(title: 'Black', colorName: Colors.black)),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ColorContainerView extends StatelessWidget {
  final String title;
  final Color colorName;
  ColorContainerView({
    required this.title,
    required this.colorName,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 400,
      color: colorName,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
