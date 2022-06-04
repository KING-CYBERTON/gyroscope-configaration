import 'package:flutter/material.dart';
import './ accelerometer.dart';
import './gyroscope.dart';

Future<void> main() async {
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Nav(),
    );
  }
}



class Nav extends StatefulWidget {
  const Nav({ Key? key }) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int selectedIndex = 0;
  
  late Widget _body;
  late String _title;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      changeview(0);
    
  }
    
  
  void _onItemTapped(int index) {
    changeview(index);
  }

  void changeview(index){
    selectedIndex=index;
    setState(() {
      
    
    switch(index) {
      
      
      case 0:{
        _title= 'groscope';
        _body= Home();
         break;
      }

      case 1:{
        _title= 'list';
        _body= MyHomePage();
        break;
      }
    }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(title:  Text(_title),),
      body: _body,
         

      
      
    
     bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'list',
          ),
         
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
     )

     
    );
  }
}
