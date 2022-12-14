import 'package:flutter/material.dart';
import 'package:petualangapp/auth/sign_in/sign_in.dart';
import 'package:petualangapp/auth/sign_up/create_account.dart';
import 'package:petualangapp/colors.dart';

class IndexLogin extends StatelessWidget {
  const IndexLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: Container(
        child: Column(
          children: [
            // SizedBox(
            //   height: 25,
            // ),
            SizedBox(
              child: Text(
                "P",
                style: TextStyle(
                    fontSize: 120, color: PetualangColor.primaryGreen),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              // color: Colors.pink,
              child: SizedBox(
                height: 70,
                child: Center(
                    child: Text(
                  "Let's You In",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 40,
              width: 320,
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    // side: BorderSide(
                    //     style: BorderStyle.solid, color: Colors.grey, width: 1),
                    ),
                icon: Icon(
                  Icons.facebook,
                  size: 30,
                  color: Colors.black,
                ),
                label: Text(
                  "Continue with Facebook",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 40,
              width: 320,
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    // side: BorderSide(
                    //     style: BorderStyle.solid, color: Colors.grey, width: 1),
                    ),
                icon: Icon(
                  Icons.circle,
                  size: 30,
                  color: Colors.black,
                ),
                label: Text(
                  "Continue with Google",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 40,
              width: 320,
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    // side: BorderSide(
                    //     style: BorderStyle.solid, color: Colors.grey, width: 1),

                    ),
                icon: Icon(
                  Icons.apple,
                  size: 30,
                  color: Colors.black,
                ),
                label: Text(
                  "Continue with Apple",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(
                  width: 150,
                  child: Divider(
                    thickness: 0.8,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "or",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 150,
                  child: Divider(
                    thickness: 0.8,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),

            const Expanded(
              child: SizedBox(
                height: 50,
              ),
            ),
            Container(
              height: 50,
              width: 350,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: PetualangColor.secondaryGreen,
                child: TextButton(
                  child: Text(
                    "Sign in",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 50,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Dont have an account ?",
                    style: TextStyle(color: Colors.black38),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateAccountPage()));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: PetualangColor.primaryGreen),
                      ))
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
