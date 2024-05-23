import 'package:exam_day/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();

  bool isPressedV = true;

  bool isFilled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "lib/photos/iconYel.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "lib/photos/ajuda (1).png",
                  fit: BoxFit.cover,
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              width: 300,
              height: 60,
              decoration: const BoxDecoration(
                  color: Color(0xFFFEBC12),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: MaterialButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "lib/photos/Logos.png",
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "Sign in with google",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Or",
              style: TextStyle(
                  color: Color(0xFF666D80),
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextField(
                    controller: text1,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        hintText: "Username",
                        labelText: "Username",
                        hintStyle: TextStyle(color: Color(0xFF818898)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFDFE1E7)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: text1,
                    decoration: const InputDecoration(
                        hintText: "Email",
                        labelText: "Email",
                        hintStyle: TextStyle(color: Color(0xFF818898)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFDFE1E7)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    obscureText: isPressedV,
                    controller: text2,
                    decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "Password",
                        suffixIcon: IconButton(
                            onPressed: () {
                              isPressedV = !isPressedV;
                              setState(() {});
                            },
                            icon: isPressedV
                                ? const Icon(
                                    color: Color(0xFF818898),
                                    Icons.visibility_off_sharp,
                                  )
                                : const Icon(
                                    color: Color(0xFF818898),
                                    Icons.visibility_rounded,
                                  )),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFDFE1E7)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      isFilled ? IconButton(
                          onPressed: () {
                            isFilled = !isFilled;
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.check_box,
                            color: Color(0xFFFEBC12),

                          )
                      ) :IconButton(
                          onPressed: () {
                            isFilled = !isFilled;
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.check_box_outline_blank_outlined,

                          )
                      ),
                      Text(" I agree ",style: TextStyle( color:  Color(0xFF0D0D12), fontSize: 12,fontWeight: FontWeight.w400),),
                      Text("Terms of Service ",style: TextStyle( color:  Color(0xFFFEBC12),fontSize: 12,fontWeight: FontWeight.w400),),
                      Text("and ",style: TextStyle( color:  Color(0xFF0D0D12), fontSize: 12,fontWeight: FontWeight.w400),),
                      Text("Privacy Policy ",style: TextStyle( color:  Color(0xFFFEBC12), fontSize: 12,fontWeight: FontWeight.w400),),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: isFilled
                          ? MaterialButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomePage()), (route) => false);
                              },
                              height: 52,
                              minWidth: 327,
                              color: const Color(0xFFFEBC12),
                              child: const Text(
                                "Sign in",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                                textAlign: TextAlign.center,
                              ),
                            )
                          : MaterialButton(
                              onPressed: () {},
                              height: 52,
                              minWidth: 327,
                              color: const Color(0xFFFEDD88),
                              child: const Text(
                                "Sign in",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                                textAlign: TextAlign.center,
                              ),
                            ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?",
                          style: TextStyle(
                              color: Color(0xFF666D80),
                              fontSize: 17,
                              fontWeight: FontWeight.w500)),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Sign up",
                            style: TextStyle(
                                color: Color(0xFF272835),
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
