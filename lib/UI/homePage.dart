import 'package:flutter/material.dart';
import 'package:mobile_desa/UI/jadwalPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text("Home"),
      ),
      body: Center(
        child: Text("Home"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        onTap: (i){
          switch (i) {
            case 0:
                Navigator.of(context).pushReplacement(new MaterialPageRoute(
                  builder: (BuildContext contect)=>HomePage()
                  ));
              break;
              case 1:
                Navigator.of(context).pushReplacement(new MaterialPageRoute(
                  builder: (BuildContext contect)=>JadwalPage()
                  ));
              break;
            default:
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle), title: Text("Jadwal")),
        ],
      ),
    );
  }
}
