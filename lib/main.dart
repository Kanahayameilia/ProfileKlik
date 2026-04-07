import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HalamanUtama(),
    );
  }
}

class HalamanUtama extends StatefulWidget {
  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {

  int angka = 10;

  void ubahAngka(String tombol) {
    setState(() {
      if (tombol == 'tambah') {
        angka = angka + 5;
      } else {
        if (angka > 0) {
          angka = angka - 1;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[100],
        title: Text(
          'Kanahaya Meilia Sakti - 2420506021',
          style: TextStyle(color: Colors.deepOrange),
        ),
      ),
      body: Column(
        children: [

          // bagian atas
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red[100],
              child: Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/ikiepep.jpg'),
                ),
              ),
            ),
          ),

          // bagian bawah
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          ubahAngka('kurang');
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text('-'),
                      ),
                      SizedBox(width: 50),
                      Text(
                        '$angka',
                        style: TextStyle(fontSize: 40),
                      ),
                      SizedBox(width: 50),
                      ElevatedButton(
                        onPressed: () {
                          ubahAngka('tambah');
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text('+'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}