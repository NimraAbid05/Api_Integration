import 'package:flutter/material.dart';
import 'package:today_class/controller/homecontroller.dart';
import 'package:today_class/views/detail.dart';

class Home_View extends StatefulWidget {
  const Home_View({super.key});

  @override
  State<Home_View> createState() => _Home_ViewState();
}

class _Home_ViewState extends State<Home_View> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Users Data",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),

      // body: Center(
      //   child: ElevatedButton(
      //       onPressed: () {
      //         getuser();
      //       },
      //       child: Text("Get Api")),
      // ),

      //FUTUR DATA
      body: FutureBuilder(
        future: getuser(),

        //BUILDER BUILD THE SCREEN
        //snapshot control errors
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Details(userid: snapshot.data[index].id)));
                    },
                    child: ListTile(
                        //without model
                        // title: Text(snapshot.data[index]["name"]),
                        // subtitle: Text(snapshot.data[index]["email"]),
                        //with model
                        title: Text(
                          snapshot.data[index].name,
                          style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal,fontWeight: FontWeight.w500),
                        ),
                        leading: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          // radius: 10,
                        )),
                  );
                }));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    ));
  }
}
