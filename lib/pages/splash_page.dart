import 'package:exam_day/pages/page_one.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    _timeIsUp();
    super.initState();
  }

  void _timeIsUp () async{
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const PageOne()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEC122),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Center(child: Image.asset("lib/photos/Icon.png",fit: BoxFit.cover,)),
          const SizedBox(height: 20,),
          Center(child: Image.asset("lib/photos/ajuda.png",fit: BoxFit.cover,),),
        ],
      ),
    );
  }
}
