import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  final product_name;
  final product_price;
  final product_mrp;
  final product_picture;

  ProductDetailsPage(
      {this.product_name,
      this.product_price,
      this.product_mrp,
      this.product_picture});

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop.local"),
        // centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
              footer: ListTile(
                trailing: Text(
                  "\$ ${widget.product_price}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                leading: Text(
                  widget.product_name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              child: Image.asset(
                widget.product_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Size"),
                            content: Text("Choose the Size"),
                            actions: <Widget>[
                              FlatButton(
                                child: Text("Close"),
                                onPressed: () => Navigator.of(context).pop(),
                              )
                            ],
                          );
                        });
                  },
                ),
              ),
              Expanded(
                child: MaterialButton(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Color"),
                            content: Text("Choose the Color"),
                            actions: <Widget>[
                              FlatButton(
                                child: Text("Close"),
                                onPressed: () => Navigator.of(context).pop(),
                              )
                            ],
                          );
                        });
                  },
                ),
              ),
              Expanded(
                child: MaterialButton(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Quantity"),
                            content: Text("Choose the Quantity"),
                            actions: <Widget>[
                              FlatButton(
                                child: Text("Close"),
                                onPressed: () => Navigator.of(context).pop(),
                              )
                            ],
                          );
                        });
                  },
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.red,
                  onPressed: () {},
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.red,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }
}
