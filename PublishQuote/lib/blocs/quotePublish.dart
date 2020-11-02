import 'package:flutter/material.dart';

class QuoteBloc extends ChangeNotifier{
  String _author1;
  String _author2;
  String _quote1;
  String _quote2;

  setQuoteBloc({String author1, String author2, String quote1, String quote2}){
    this._author1 = author1;
    this._author2 = author2;
    this._quote1 = quote1;
    this._quote2 = quote2;
    notifyListeners();
  }

  changeQuoteDetails(){
    this._author1 = 'author1';
    this._author2 = 'author2';
    this._quote1 = 'quote1';
    this._quote2 = 'quote2';
    notifyListeners();
  }

  getAuthor1() => _author1;
  getAuthor2() => _author2;
  getQuote1() => _quote1;
  getQuote2() => _quote2;
}