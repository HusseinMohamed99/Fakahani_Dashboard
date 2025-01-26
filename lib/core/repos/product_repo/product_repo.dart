import 'package:dartz/dartz.dart';
import 'package:fakahani_dashboard/core/networking/errors/failures.dart';
import 'package:fakahani_dashboard/features/add_product/domain/entities/add_product_input_entity.dart';

abstract class ProductRepo {
  Future<Either<Failure, void>> addProduct(
      AddProductInputEntity addProductInputEntity);
}
