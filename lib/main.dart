// import 'dart:html';
import 'package:flutter/material.dart';
import 'CustomWidgets.dart';
import 'BookPageTemplate.dart';
import 'ConstantsAndValues.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 100,
          leading: Padding(
            padding: const EdgeInsets.all(30),
            child: Icon(
              Icons.view_headline,
              size: 30,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 20,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 18,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: NetworkImage(
                        'https://cdn.shortpixel.ai/spai/w_1068+q_lossy+ret_img+to_webp/https://seventhqueen.com/themes/kleo/wp-content/uploads/rtMedia/users/44269/2020/07/dummy-profile.png?1631608166'),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            OffersCardLarge(),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: Text(
                  'What are you looking for?',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                      fontFamily: 'glory'),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Container(
                child: Container(
                  // color: Colors.grey.shade300,
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.grey.shade300),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.search,
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          width: 150,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search for books',
                            ),
                          ),
                        )
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 15,top: 30),
                child: Text('Top Free',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w800
                  ),
                ),
              )
            ),
            Container(
              height: 300,
              width: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  BookCard(Category: CategoryOne, bookCode: 1 ,bookName: 'Sin Eater',bookAuthor: 'Megan Campisi',),
                  BookCard(Category: CategoryOne, bookCode: 2 ,bookName: 'BCDF',bookAuthor: 'Anita Nipane',),
                  BookCard(Category: CategoryOne, bookCode: 3 ,bookName: 'Educated',bookAuthor: 'Tara Westover',),
                  BookCard(Category: CategoryOne, bookCode: 4 ,bookName: 'The Hypocrite World',bookAuthor: 'Sophia Hill',),
                  BookCard(Category: CategoryOne, bookCode: 7 ,bookName: 'Torn',bookAuthor: 'Paul Clarke',),
                  BookCard(Category: CategoryOne, bookCode: 8 ,bookName: 'Six of Crows',bookAuthor: 'Han Kang',),
                  BookCard(Category: CategoryOne, bookCode: 9 ,bookName: 'Jaws',bookAuthor: 'Peter Benchley',),

                ],
              ),
            ),
            Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,top: 30),
                  child: Text('Top Paid',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                )
            ),
            Container(
              height: 300,
              width: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  BookCard(Category: 'p', bookCode: 1 ,bookName: 'Crazy Rich Asians',bookAuthor: 'Kevin Kwan',),
                  BookCard(Category: 'p', bookCode: 2 ,bookName: 'The Silent Patient',bookAuthor: 'Alex Michalides',),
                  // BookCard(Category: 'p', bookCode: 3 ,bookName: 'Lord Of The rings',bookAuthor: 'J.R.R. Tolkien',),
                  BookCard(Category: 'p', bookCode: 4 ,bookName: 'The Guest Book',bookAuthor: 'Sarah Blake',),
                  // BookCard(Category: 'p', bookCode: 7 ,bookName: 'The Da vinci code',bookAuthor: 'Dan Brown',),
                  // BookCard(Category: 'p', bookCode: 8 ,bookName: 'Lord Of The rings',bookAuthor: 'J.R.R. Tolkien',),
                  // BookCard(Category: 'p', bookCode: 9 ,bookName: 'Six of Crows',bookAuthor: 'Peter Benchley',),
                  // BookCard(Category: 'p', bookCode: 2 ,bookName: 'The Trials of Apollo',bookAuthor: 'Rick Riordan',),

                ],
              ),
            ),
            Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,top: 30),
                  child: Text('Malayalam Top',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                )
            ),
            Container(
              height: 300,
              width: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  BookCard(Category: 'm', bookCode: 1 ,bookName: 'Randamoozham',bookAuthor: 'MT Vasudevan',),
                  BookCard(Category: 'm', bookCode: 2 ,bookName: 'Aadu jeevitham',bookAuthor: 'Beniamin',),
                  BookCard(Category: 'm', bookCode: 3 ,bookName: '105 aam muriyile...',bookAuthor: 'Chethan Bhagath',),
                  BookCard(Category: 'm', bookCode: 4 ,bookName: 'Meluhayile Chiranjeevikal',bookAuthor: 'Amish',),
                  // BookCard(Category: 'm', bookCode: 8 ,bookName: 'The Alchemist',bookAuthor: 'Paulo coelho',),
                  BookCard(Category: 'm', bookCode: 7 ,bookName: 'Khasakhinte ithihasam',bookAuthor: 'O V Vijayan',),
                  BookCard(Category: 'm', bookCode: 8 ,bookName: 'Oru Sankeerth..',bookAuthor: 'Perumbadavam',),

                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}

