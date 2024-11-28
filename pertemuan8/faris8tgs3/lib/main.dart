import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/second', page: () => SecondPage()),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Route Named Dengan Getx")),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Get.toNamed('/second');
          },
          child: Text("pindah kehalaman 2"),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman ke 2")),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Get.back();
          },
          child: Text("kembali kehalaman 1"),
        ),
      ),
    );
  }
}