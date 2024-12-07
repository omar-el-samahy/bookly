import 'package:bookly/features/home/data/repo/home_repo_imp.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'all_books_state.dart';

class AllBooksCubit extends Cubit<AllBooksState> {
  AllBooksCubit(this.homeRepoImp) : super(AllBooksInitial());
  final HomeRepoImp homeRepoImp;

  getAllBooks() async {
    emit(AllBooksLoading());
    var value = await homeRepoImp.fetchAllBooks();
    value.fold((error) => emit(AllBooksFailure(error)),
        (books) => AllBooksSuccess(books));
  }
}
