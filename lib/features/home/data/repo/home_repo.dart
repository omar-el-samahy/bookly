import 'package:bookly/features/home/data/model/books.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<String, List<Books>>> fetchAllBooks();
  Future<Either<String, List<Books>>> fetchTopSellerBooks();
  Future<Either<String, List<Books>>> fetchFeaturedBooks();
}
