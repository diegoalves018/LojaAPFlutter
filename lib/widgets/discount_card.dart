import 'package:flutter/material.dart';

class DiscountCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: ExpansionTile(
          title: Text(
            "Cupom de desconto",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey[700]
            ),
          ),
        leading: Icon(Icons.card_giftcard),
        trailing: Icon(Icons.add),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Digite seu cupom"
              ),

            ),
          )
        ],
      ),
    );
  }
}
