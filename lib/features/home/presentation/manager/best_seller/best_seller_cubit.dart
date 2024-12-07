import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repo/home_repo_imp.dart';
import 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit(this.homeRepoImp) : super(BestSellerBooksInitial());
  final HomeRepoImp homeRepoImp;

  getBestSellers() async {
    emit(BestSellerBooksLoading());
    var value = await homeRepoImp.fetchTopSellerBooks();
    value.fold((error) => emit(BestSellerBooksFailure(error)),
        (books) => emit(BestSellerBooksSuccess(books)));
  }
}
