import 'package:flutter/material.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:petualangapp/colors.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int value = 0;
  Widget CustomRadioButton(String text, int index) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          value = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          color: (value == index) ? Colors.white : PetualangColor.primaryGreen,
        ),
      ),
      style: OutlinedButton.styleFrom(
          backgroundColor:
              (value == index) ? PetualangColor.primaryGreen : Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            height: 50,
            width: 370,
            padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'P',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: PetualangColor.primaryGreen),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Dava',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                // SizedBox(
                //   width: 160,
                // ),
                Spacer(
                  flex: 1,
                ),
                Icon(Icons.notifications_outlined),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.bookmark_outline)
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 370,
            padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
            child: Text(
              'Hello, Dava',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 370,
            padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Transform.scale(
                  scale: 1,
                  child: Container(
                      height: 40,
                      width: 300,
                      child: TextFormField(
                        textAlign: TextAlign.left,
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.black26),
                          // iconColor: Colors.black12,
                          filled: true,
                          prefixIcon: Icon(Icons.search),
                          hintText: 'search',
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black12),
                              borderRadius: BorderRadius.circular(8)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1,
                                  color: PetualangColor.secondaryGreen),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      )),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 40,
                  width: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: PetualangColor.primaryGreen),
                  // color: PetualangColor.primaryGreen,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.sort),
                      color: Colors.white
                      // disabledColor: PetualangColor.primaryGreen,
                      // highlightColor: PetualangColor.primaryGreen,
                      ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              child: SizedBox(
            height: 150,
            // width: 90 + 90,
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 18,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 0,
                  childAspectRatio: 1 / 1.4,
                  crossAxisSpacing: 2,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return ClipOval(
                    child: InkWell(
                      // splashColor: Colors.green,
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.apartment), // <-- Icon
                          Text("Hotels"), // <-- Text
                        ],
                      ),
                    ),
                  );
                }),
          )),
          SizedBox(
            height: 10,
            // child: Container(color: Colors.red),
          ),
          Container(
            height: 120,
            child: ListView.separated(
                padding: EdgeInsets.only(left: 12, right: 10),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (_, index) => SizedBox(
                      width: 12,
                    ),
                itemBuilder: (_, index) {
                  return Container(
                    height: 90,
                    width: 320,
                    decoration: BoxDecoration(
                      // border: RoundedRectangleBorder(),
                      borderRadius: BorderRadius.circular(10),
                      color: PetualangColor.primaryGreen,
                    ),
                  );
                },
                itemCount: 3),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 30,
            child: ListView(
              padding: EdgeInsets.only(left: 12),
              scrollDirection: Axis.horizontal,
              children: [
                CustomRadioButton('All', 0),
                SizedBox(
                  width: 15,
                ),
                CustomRadioButton('Recommended', 1),
                SizedBox(
                  width: 15,
                ),
                CustomRadioButton('Popular', 2),
                SizedBox(
                  width: 15,
                ),
                CustomRadioButton('Trending', 3),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 240,
            child: ListView.separated(
                padding: EdgeInsets.only(left: 12, right: 10),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (_, index) => SizedBox(
                      width: 20,
                    ),
                itemBuilder: (_, index) {
                  return Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      // border: RoundedRectangleBorder(),
                      borderRadius: BorderRadius.circular(20),
                      color: PetualangColor.primaryGreen,
                    ),
                  );
                },
                itemCount: 7),
          ),
          SizedBox(
            height: 15,
          )
        ],
      )),
    );
  }
}
