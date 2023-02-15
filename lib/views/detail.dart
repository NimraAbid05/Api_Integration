import 'package:flutter/material.dart';
import 'package:today_class/controller/homecontroller.dart';

class Details extends StatelessWidget {
  //userid
  final userid;
  const Details({
    super.key,
    this.userid,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0X0cc6dd5ed),
        body: FutureBuilder(
            future: getuserid(userid),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return Padding(
                  padding: const EdgeInsets.only(left: 30.0,top: 80),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40.0),
                        child: Text(
                          "User Details",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40.0, left: 5.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 60,
                          child: Icon(
                            Icons.person,
                            size: 80,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Name"),
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 2.0, color: Colors.black38),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 3.0, top: 8),
                              child: Text(
                                "${snapshot.data.name}",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text("Username"),
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 2.0, color: Colors.black38),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 3.0, top: 8),
                              child: Text(
                                "${snapshot.data.username}",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            )),
                      ),

                      SizedBox(
                        height: 18,
                      ),
                      Text("Email"),
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 2.0, color: Colors.black38),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 3.0, top: 8),
                              child: Text(
                                "${snapshot.data.email}",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            )),
                      ),
                      // Text(snapshot.data.address),
                      SizedBox(
                        height: 18,
                      ),
                      Text("Contact No"),
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 2.0, color: Colors.black38),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 3.0, top: 8),
                              child: Text(
                                "${snapshot.data.phone}",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text("Website Address"),
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 2.0, color: Colors.black38),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 3.0, top: 8),
                              child: Text(
                                "${snapshot.data.website}",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            )),
                      ),
                      // Text(snapshot.data.company),
                    ],
                  ),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}
