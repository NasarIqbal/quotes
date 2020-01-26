import 'package:flutter/material.dart';
import 'package:quotes/quotes.dart';
import 'package:quotes/quotes_card.dart';

void main() => runApp(MaterialApp(
  home: QuotesList(),
));

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {

  List<Quotes> quotes = [
    Quotes(mBookAuther: 'sohail jhing',mBookTitle: 'this is Title one'),
    Quotes(mBookAuther: 'Talha',mBookTitle: 'this is Title one'),
    Quotes(mBookAuther: 'Shafiq Anjum',mBookTitle: 'this is Title one'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awsomes Quotes'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quot){
          return QuotesCard(
              mQuotes: quot,
            delete: (){
                setState(() {
                  quotes.remove(quot);
                });
            },
          );
        }).toList(),
      ),
    );
  }
}



