import 'package:flutter/material.dart';
import 'package:shoplocal/pages/product_details_page.dart';

class RecentProducts extends StatelessWidget {
  List products = [
    {
      "image": "assets/images/1.jpg",
      "name": "Modern Warfare",
      "offerprice": "12.00",
      "mrp": "15.00"
    },
    {
      "image": "assets/images/2.jpg",
      "name": "Flame",
      "offerprice": "12.00",
      "mrp": "15.00"
    },
    {
      "image": "assets/images/3.jpg",
      "name": "FIFA",
      "offerprice": "12.00",
      "mrp": "15.00"
    },
    {
      "image": "assets/images/4.jpg",
      "name": "FIFA",
      "offerprice": "12.00",
      "mrp": "15.00"
    },
    {
      "image": "assets/images/5.jpg",
      "name": "WWE",
      "offerprice": "12.00",
      "mrp": "15.00"
    },
    {
      "image": "assets/images/1.jpg",
      "name": "Modern Warfare",
      "offerprice": "12.00",
      "mrp": "15.00"
    },
    {
      "image": "assets/images/2.jpg",
      "name": "Modern Warfare",
      "offerprice": "12.00",
      "mrp": "15.00"
    },
    {
      "image": "assets/images/3.jpg",
      "name": "Modern Warfare",
      "offerprice": "12.00",
      "mrp": "15.00"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: products.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return makeProduct(products[index]["image"], products[index]["name"],
            products[index]["offerprice"], products[index]["mrp"], context);
      },
    );
  }

  Widget makeProduct(
      String image, String name, String offerprice, String mrp, context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductDetailsPage(
                  product_mrp: mrp,
                  product_name: name,
                  product_picture: image,
                  product_price: offerprice,
                )));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(colors: [
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0.1),
              ], begin: Alignment.bottomLeft)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 1,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // textBaseline: TextBaseline.ideographic,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "offer price",
                          style: TextStyle(
                            fontSize: 12.5,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "\$$offerprice",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "MRP",
                          style: TextStyle(
                            fontSize: 12.5,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "\$$mrp",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
