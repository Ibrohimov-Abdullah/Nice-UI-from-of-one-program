import 'package:exam_day/pages/page_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {

  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();

  bool isPressedV = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
                  decoration: const InputDecoration(
                    hintText: "Email",
                    labelText: "Email",
                    hintStyle: TextStyle(
                      color: Color(0xFF818898)
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFDFE1E7)),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    )
                  ),
                ),
                const SizedBox(height: 15,),
                TextField(
                  obscureText: isPressedV,
                  controller: text2,
                  decoration: InputDecoration(
                    hintText: "Password",
                      labelText: "Password",
                    hintStyle: TextStyle(
                        color: Color(0xFF818898)
                    ),
                    suffixIcon: IconButton(
                      onPressed: (){
                        isPressedV = !isPressedV;
                        setState(() {});
                      },
                      icon: isPressedV ? const Icon(
                        color: Color(0xFF818898),
                        Icons.visibility_off_sharp,
                      ) : const Icon(
                        color: Color(0xFF818898),
                        Icons.visibility_rounded,
                      )
                    ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFDFE1E7)),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 190),
                  child: TextButton(
                    onPressed: (){},
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Color(0xFFFEBC12),
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: false ? MaterialButton(
                      onPressed: () {},
                      height: 52,
                      minWidth: 327,
                      color: const Color(0xFFFEDD88),
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ): MaterialButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const PageTwo()));
                      },
                      height: 52,
                      minWidth: 327,
                      color: const Color(0xFFFEBC12),
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ),
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?",style: TextStyle(color: Color(0xFF666D80),fontSize: 17,fontWeight: FontWeight.w500)),
                    TextButton(onPressed: (){}, child: const Text("Sign up", style: TextStyle(color: Color(0xFF272835),fontSize: 17,fontWeight: FontWeight.w500),))
                  ],
                ),
                Text("By signing in you accept the. Terms of Services and\n                                 Privacy Policy.",style: TextStyle(color: Color(0xFF666D80),fontWeight: FontWeight.w300, fontSize: 12),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
