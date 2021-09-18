import 'package:books_for_u/BookPageTemplate.dart';
import 'package:flutter/material.dart';


class BookCard extends StatelessWidget {
  BookCard({required this.bookCode, this.bookName, this.bookAuthor, required this.Category});
  int bookCode;
  final bookName;
  final bookAuthor;
  String Category;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => BookPageTemplate(imageCode: bookCode,CategoryCode: Category,BookName: bookName,AuthorName: bookAuthor,)));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          width: 150,
          child: Center(
            child: Card(
              child: Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 0),
                    child: Image(image: AssetImage('images/$Category$bookCode.jpg'),height: 170,),
                  ),
                  ListTile(
                    title: Text(bookName), //BookName
                    subtitle: Text(bookAuthor), //Book Description
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}




class OffersCardLarge extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              fit:BoxFit.fill,
              image: AssetImage('images/bg2.jpg'),
            ),
            // gradient: LinearGradient(colors: C)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 40),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Renting starts at Rs.2 per hour!',
                  style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 3),
                child: Align(
                  alignment: Alignment.centerLeft ,
                  child: Text('Chose your book now',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade200
                    ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0,),
                child: Align(
                  alignment: Alignment.bottomRight ,
                  child: Text('Know more.',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.red.shade500
                    ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class FullWidthImageContainer extends StatelessWidget {
  FullWidthImageContainer({required this.imagePath});
  String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Image(image: AssetImage(imagePath),),
        ));
  }
}