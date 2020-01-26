import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes/quotes.dart';

// ignore: must_be_immutable
class QuotesCard extends StatelessWidget {

  Quotes mQuotes;
  Function delete;
  QuotesCard({this.mQuotes,this.delete});

//  const QuotesCard({
//    Key key,
//  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              mQuotes.mBookTitle,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600]
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              mQuotes.mBookAuther,
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800]
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            FlatButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('delete quotes')
            )
          ],
        ),
      ),
    );
  }
}