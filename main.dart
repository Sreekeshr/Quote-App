import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
void main() =>runApp(MaterialApp(
  home:QuotesList(),
));
class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {



  List<Quote> quotes =[
    Quote(text:'You are off to great places, today is your day. Your mountain is waiting, so get on your way',author:'Dr. Seuss' ),
    Quote(text:'You always pass failure on the way to success',author:'Mickey Rooney'),
   Quote(text:'No one is perfect - that is why pencils have erasers',author:'Wolfgang Riebe'),
   // Quote(text:'It always seems impossible until it is done',author:'Nelson Mandela'),
    //Quote(text:'Positive anything is better than negative nothing',author:'Elbert Hubbard ')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.orangeAccent,
      appBar:AppBar(
        title:Text('Quotes For You',
          style:TextStyle(
            fontSize:25.0,
            color:Colors.black,
            fontWeight:FontWeight.bold,
          ),
        ),
        centerTitle:true ,
        backgroundColor:Colors.orange,
      ),
      body :Column(
        children:
       quotes.map((qu) => QuoteCard(
           quote:qu,
            delete:(){
             setState(() {
               quotes.remove(qu);
             });
            }
       )).toList()
      ),
    );
  }
}
