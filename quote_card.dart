import 'package:flutter/material.dart';
import 'quote.dart';



class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;

  QuoteCard({this.quote,this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin:EdgeInsets.fromLTRB(16.0,16.0,16.0,0.0),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Text(quote.text,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(width:12.0),
            Center(
              child: Text(quote.author, style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )
              ),
            ),
              SizedBox(width:5.0),
              RaisedButton.icon(
                onPressed:delete,
                icon :Icon(Icons.delete_outline),
                label:Text('Delete'),
              ),

          ],
        ),
      ),
    );
  }
}
