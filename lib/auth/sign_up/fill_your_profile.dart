import 'package:flutter/material.dart';
import 'package:petualangapp/colors.dart';

class FillProfilePage extends StatefulWidget {
  const FillProfilePage({super.key});

  @override
  State<FillProfilePage> createState() => _FillProfilePageState();
}

class _FillProfilePageState extends State<FillProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fill Your Profile'),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            child: Center(
                child: CircleAvatar(
              radius: 50,
              backgroundColor: PetualangColor.primaryGreen,
            )),
          ),
          SizedBox(
            height: 25,
          ),
          Transform.scale(
            scale: 0.9,
            child: Container(
                height: 50,
                width: 350,
                child: TextFormField(
                  textAlign: TextAlign.left,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black26),
                    filled: true,
                    hintText: 'Fullname',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black12),
                        borderRadius: BorderRadius.circular(12)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: PetualangColor.secondaryGreen),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Transform.scale(
            scale: 0.9,
            child: Container(
                height: 50,
                width: 350,
                child: TextFormField(
                  textAlign: TextAlign.left,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black26),
                    filled: true,
                    hintText: 'Nickname',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black12),
                        borderRadius: BorderRadius.circular(12)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: PetualangColor.secondaryGreen),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Transform.scale(
            scale: 0.9,
            child: Container(
                height: 50,
                width: 350,
                child: TextFormField(
                  textAlign: TextAlign.left,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black26),
                    filled: true,
                    hintText: 'Date of Birth',
                    suffixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 7, 0),
                      child: Icon(Icons.calendar_month),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black12),
                        borderRadius: BorderRadius.circular(12)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: PetualangColor.secondaryGreen),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Transform.scale(
            scale: 0.9,
            child: Container(
                height: 50,
                width: 350,
                child: TextFormField(
                  textAlign: TextAlign.left,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black26),
                    filled: true,
                    hintText: 'Phone Number',
                    suffixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 7, 0),
                      child: Icon(Icons.flag),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black12),
                        borderRadius: BorderRadius.circular(12)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: PetualangColor.secondaryGreen),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Transform.scale(
            scale: 0.9,
            child: Container(
                height: 50,
                width: 350,
                child: TextFormField(
                  textAlign: TextAlign.left,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black26),
                    filled: true,
                    hintText: 'Gender',
                    suffixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 7, 0),
                      child: Icon(Icons.arrow_drop_down),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black12),
                        borderRadius: BorderRadius.circular(12)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: PetualangColor.secondaryGreen),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                )),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            height: 50,
            width: 320,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: PetualangColor.secondaryGreen,
              child: TextButton(
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => FillProfilePage()));
                },
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 50,
            width: 320,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.white10,
              child: TextButton(
                child: Text(
                  "Skip",
                  style: TextStyle(color: PetualangColor.primaryGreen),
                ),
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => FillProfilePage()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
