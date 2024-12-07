import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/model/books.dart';
import 'package:dartz/dartz.dart';

import 'home_repo.dart';

class HomeRepoImp implements HomeRepo {
  final ApiService apiService;

  HomeRepoImp(this.apiService);

  @override
  Future<Either<String, List<Books>>> fetchAllBooks() async {
    try {
      var data = await apiService.get(endPoint: "volumes");
      List<Books> books = [];
      for (var item in data["items"]) {
        books.add(Books.fromJson(item));
      }
      return Right(books);
    } on Exception catch (e) {
      return Left(e.toString());
      // TODO
    }

    // TODO: implement fetchAllBooks
  }

  @override
  Future<Either<String, List<Books>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(endPoint: "featured");
      List<Books> books = [];
      for (var item in data["items"]) {
        books.add(Books.fromJson(item));
      }
      return Right(books);
    } on Exception catch (e) {
      return Left(e.toString());
      // TODO
    }
    // TODO: implement fetchFeaturedBooks
  }

  @override
  Future<Either<String, List<Books>>> fetchTopSellerBooks() async {
    try {
      var data = await apiService.get(endPoint: "topsellers");
      List<Books> books = [];
      for (var item in data["items"]) {
        books.add(Books.fromJson(item));
      }
      return Right(books);
    } on Exception catch (e) {
      return Left(e.toString());
      // TODO
    }
    // TODO: implement fetchTopSellerBooks
  }
}
