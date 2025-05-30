import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/errors/faliures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Faliures, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Faliures, List<BookModel>>> fetchFeaturedBooks();
}
