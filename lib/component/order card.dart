import 'package:myflutterapp/model/product.dart';
import 'package:flutter/material.dart';

class OderCard extends StatefulWidget {
  final Product product;
  final VoidCallback onPressed;

  OderCard({this.product, this.onPressed});

  @override
  _OderCardState createState() => _OderCardState();
}

class _OderCardState extends State<OderCard> {
  int numofiitem = 0;
  var value;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          height: 85,
          width: 85,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                widget.product.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.product.title,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 5),
            Text(
              widget.product.size,
              style: TextStyle(color: Colors.black26, fontSize: 15),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  '\$${widget.product.newprice}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                SizedBox(width: 5),
                Text(
                  '\$${widget.product.oldprice}',
                  style: TextStyle(
                      fontSize: 15, decoration: TextDecoration.lineThrough),
                ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.clear, size: 25,),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (numofiitem > 0) {
                          numofiitem--;
                        }
                      });
                      value = numofiitem;
                      print(value);
                    },

                    icon: Icon(Icons.remove_circle_outline, size: 25)),
                Text(
                  numofiitem.toString().padLeft(2, "0"),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      numofiitem++;
                    });
                    value = numofiitem;
                    print(value);
                  },
                  icon: Icon(
                    Icons.add_circle,
                    color:  Color(0xd2212fc4),
                    size: 25,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
