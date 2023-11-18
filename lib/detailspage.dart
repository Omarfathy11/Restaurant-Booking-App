import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:resturantbook/homepage.dart';

class DetailPage extends StatefulWidget {
  
  final String url;

  DetailPage(this.url);

 

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const Chip(
           padding: EdgeInsets.fromLTRB(55, 12, 55, 12),
          backgroundColor: Colors.orange,
          label: Text(
            "Book now",
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          )),
      body: Stack(
        children: <Widget>[
          Hero(
            tag: widget.url,
            child: Container(
              decoration:  BoxDecoration(
                  image: DecorationImage(
                     image: NetworkImage(widget.url),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
              top: 40.0,
              right: 15.0,
              child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.4),
                child: IconButton(
                  onPressed: () {
                            Navigator.of(context).pop(MaterialPageRoute(builder: (context)=> MyHomePage()));

                  },
                  icon: const Icon(Icons.close, color: Colors.white),
                ),
              )),
          buildavatar(105.0,
              "https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
          buildavatar(85.0,
              "https://images.pexels.com/photos/532220/pexels-photo-532220.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
          buildavatar(65.0,
              "https://images.pexels.com/photos/1984117/pexels-photo-1984117.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
          buildavatar(45.0,
              "https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
          Positioned(
            left: 25.0,
            top: MediaQuery.of(context).size.height * 0.40,
            child: Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(
                    width: 1.0,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
              alignment: Alignment.center,
              child: const Text(
                "4.5",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
          Positioned(
              left: 25.0,
              top: MediaQuery.of(context).size.height * 0.45,
              child: Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "190 reviews, 10 friends",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(height: 10.0),
                    Text("Sys Brunch",
                        style: TextStyle(fontSize: 50, color: Colors.white))
                  ],
                ),
              )),
          Positioned(
              bottom: 0.0,
              child: Container(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    )),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      builditemRow(context),
                      builditemRow(context),
                      builditemRow(context),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }

  Container builditemRow(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/3676531/pexels-photo-3676531.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            children: <Widget>[
              const Text(
                "Vegetables",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 15.0,
              ),
               Container(
                  width: MediaQuery.of(context).size.width - 150,
                  child: const Text(
                    "You should consume 2 1/2 cups of vegetables per day according",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }

  Positioned buildavatar(double leftpostiond, String url) {
    return Positioned(
        left: leftpostiond,
        top: MediaQuery.of(context).size.height * 0.40,
        child: Container(
          width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(width: 1.0, color: Colors.white)),
        ));
  }
}
