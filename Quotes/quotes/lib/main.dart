import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(const MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Muhammad', text: 'Be your wife'),
    Quote(author: 'Radiant', text: 'Radiant radiated radium'),
    Quote(author: 'Fadilah', text: 'Scuffed store dot com')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quote Menarik'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () => setState(() => quotes.remove(quote))
        )).toList(),
      ),
    );
  }
}
