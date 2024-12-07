abstract class AllBooksState {}

class AllBooksInitial extends AllBooksState {}

class AllBooksSuccess extends AllBooksState {
  final List<dynamic> books;
  AllBooksSuccess(this.books);
}

class AllBooksFailure extends AllBooksState {
  final String errorMessage;
  AllBooksFailure(this.errorMessage);
}

class AllBooksLoading extends AllBooksState {}
