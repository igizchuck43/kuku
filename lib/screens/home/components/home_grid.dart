import 'package:flutter/material.dart';

class HomeGrid extends StatelessWidget {
  Cards card1 = new Cards(
    title: "Book an Ambulance",
    img: "images/"
  );

  Cards card2 = new Cards(
    title: "First Aid Tips",
    img: "images/"
  );

  Cards card3 = new Cards(
      title: "Security Organ",
      img: "images/"
  );

  Cards card4 = new Cards(
      title: "Emergency Contacts",
      img: "images/"
  );

  Cards card5 = new Cards(
      title: "Private Guard",
      img: "images/"
  );

  Cards card6 = new Cards(
      title: "Travel Insurance",
      img: "images/"
  );

  HomeGrid({super.key});



  // const HomeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    List<Cards> myList = [card1, card2, card3, card4, card5, card6];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
        childAspectRatio: 1.0,
        padding: EdgeInsets.only(left: 16, right: 16),
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: myList.map((data) {
          return Container(
            decoration: BoxDecoration(
              color: Color(color),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(data.img, width: 42),
                SizedBox(height: 14),
                Text(
                  data.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),

                SizedBox(height: 14),

              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

  class Cards{
    String title;
    String img;
    Cards({
      required this.title,
      required this.img
  });
}
