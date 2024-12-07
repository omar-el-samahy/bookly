import '../../../data/model/books.dart';

abstract class BestSellerState {}

class BestSellerBooksInitial extends BestSellerState {}

class BestSellerBooksSuccess extends BestSellerState {
  final List<Books> books;

  BestSellerBooksSuccess(this.books);
}

class BestSellerBooksFailure extends BestSellerState {
  final String error;

  BestSellerBooksFailure(this.error);
}

class BestSellerBooksLoading extends BestSellerState {}
