import 'package:flutter/material.dart';
import 'package:petualangapp/auth/sign_up/fill_your_profile.dart';
import 'package:petualangapp/module/dashboard/dashboard_page.dart';
import 'package:petualangapp/module/dashboard/index_dashboard.dart';

import '../../colors.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _CreateSignInPage();
}

class _CreateSignInPage extends State<SignInPage> {
  bool _obscureText = true;
  // bool _isRembemerMe = false;

  bool _checked = false;
  // bool get rememberMe => _isRembemerMe;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

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
            //   height: 15,
            // ),
            SizedBox(
              child: Center(
                child: Text(
                  "P",
                  style: TextStyle(
                      fontSize: 120, color: PetualangColor.secondaryGreen),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              // color: Colors.pink,
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              alignment: Alignment.topLeft,
              child: SizedBox(
                height: 80,
                child: Text(
                  "Login to Your\nAccount",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 50,
                width: 320,
                child: TextFormField(
                  textAlign: TextAlign.left,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black26),
                    // iconColor: Colors.black12,
                    filled: true,
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Email',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black12),
                        borderRadius: BorderRadius.circular(12)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: PetualangColor.secondaryGreen),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                )),
            SizedBox(
              height: 12,
            ),
            Container(
                height: 50,
                width: 320,
                child: TextFormField(
                  obscureText: _obscureText,
                  keyboardType: TextInputType.visiblePassword,
                  textAlign: TextAlign.left,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black26),
                    filled: true,
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                      child: GestureDetector(
                        onTap: _toggle,
                        child: Icon(
                          _obscureText
                              ? Icons.visibility_off_rounded
                              : Icons.visibility_rounded,
                          size: 24,
                        ),
                      ),
                    ),
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black12),
                        borderRadius: BorderRadius.circular(12)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: PetualangColor.secondaryGreen),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                )),
            // SizedBox(
            //   height: 5,
            // ),
            Container(
              height: 50,
              width: 200,
              alignment: Alignment.center,
              child: Transform.scale(
                scale: 0.8,
                child: CheckboxListTile(
                  activeColor: PetualangColor.primaryGreen,
                  value: _checked,
                  onChanged: (value) {
                    setState(() {
                      _checked = value!;
                    });
                  },
                  title: Text(
                    'Remember me',
                    // style: TextStyle(fontSize: 14),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                  visualDensity:
                      const VisualDensity(horizontal: -4.0, vertical: -4.0),
                ),
              ),
            ),
            // SizedBox(
            //   height: 5,
            // ),
            Container(
              height: 50,
              width: 320,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: PetualangColor.secondaryGreen,
                child: TextButton(
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardIndex()));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => CreateAccountPage()));
                    },
                    child: Text(
                      "Forgot the Password ?",
                      style: TextStyle(color: PetualangColor.primaryGreen),
                    ))
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(
                  width: 110,
                  child: Divider(
                    thickness: 0.8,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "or continue with",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 110,
                  child: Divider(
                    thickness: 0.8,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Transform.scale(
                  scale: 1.2,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.facebook),
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Transform.scale(
                  scale: 1.2,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.circle),
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Transform.scale(
                  scale: 1.2,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.apple),
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
