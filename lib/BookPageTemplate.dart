import 'package:books_for_u/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'CustomWidgets.dart';

class BookPageTemplate extends StatelessWidget {
  BookPageTemplate({required this.imageCode ,required this.CategoryCode,required this.BookName,required this.AuthorName});
  int imageCode;
  String CategoryCode;
  String BookName;
  String AuthorName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade800,
        leading: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
            },
            icon: Icon(Icons.arrow_back_outlined)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.bookmark),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.share),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.add_shopping_cart),
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [

          CarouselSlider(items: [
            FullWidthImageContainer(imagePath: 'images/$CategoryCode$imageCode.jpg'),
          ], options: CarouselOptions(
            height: 500,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),),
          Container(
            margin: EdgeInsets.only(left: 30),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Text(BookName,style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500
                  ),),
                ),
                Text(AuthorName,style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500
                ),),
                Text('Rs 3 / hr',
                style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w500
                ),),
              ],
            )
          ),

          BottomAppBar(
            child:Container(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    child: TextButton(
                      onPressed: (){},
                      child: Center(child: Text('ADD TO CART',style: TextStyle(
                          color: Colors.red.shade800
                      ),)),
                    ),
                  ),
                  Container(
                    color: Colors.red.shade800,
                    width: MediaQuery.of(context).size.width/2,
                    child: TextButton(
                      onPressed: (){},
                      child: Center(child: Text('BUY NOW',style: TextStyle(
                        color: Colors.white
                      ),)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


