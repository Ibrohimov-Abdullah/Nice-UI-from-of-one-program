import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFECC4A),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Container(
                  height: 45,
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search_rounded,
                          color: Colors.grey,
                        ),
                        hintText: "Help others...",
                        hintStyle: TextStyle(fontSize: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        )),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Image.asset(
                  "lib/photos/Icon (2).png",
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
          SizedBox(height: 25),
          Container(
            height: MediaQuery.of(context).size.height * 0.85,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50))),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Spotlight",
                      style: TextStyle(
                          color: Color(0xFF36394A),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Center(
                  child: Container(
                    height: 140,
                    width: 320,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: PageView(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                          "lib/photos/Banner 1.png",
                          fit: BoxFit.cover,
                        )),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "lib/photos/Banner 1.png",
                              fit: BoxFit.cover,
                            )),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "lib/photos/Banner 1.png",
                              fit: BoxFit.cover,
                            )),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "lib/photos/Banner 1.png",
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Center(
                  child: Image.asset("lib/photos/balance.png",fit: BoxFit.cover,)
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Latest Campaign",
                    style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                    SizedBox(width: 160,)
                  ],
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: 320,
                  height: 160,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 5,),
                      Image.asset("lib/photos/Kampanye 1.png"),
                      SizedBox(width: 5,),
                      Image.asset("lib/photos/Kampanye 1.png"),
                      SizedBox(width: 5,),
                      Image.asset("lib/photos/Kampanye 1.png"),
                      SizedBox(width: 5,),
                      Image.asset("lib/photos/Kampanye 1.png"),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Donation location",
                    style: TextStyle(
                      color: Color(0xFF36394A,),fontWeight: FontWeight.w600
                    ),),
                    SizedBox(width: 160,)
                  ],
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: 320,
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Image.asset("lib/photos/Kota 1.png"),
                      Image.asset("lib/photos/Kota 1.png"),
                      Image.asset("lib/photos/Kota 1.png"),

                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
