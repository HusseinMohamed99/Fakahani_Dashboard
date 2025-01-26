import 'package:dartz/dartz.dart';
import 'package:fakahani_dashboard/core/networking/errors/failures.dart';
import 'package:fakahani_dashboard/core/repos/product_repo/product_repo.dart';
import 'package:fakahani_dashboard/features/add_product/domain/entities/add_product_input_entity.dart';

class ProductRepoImpl implements ProductRepo {
  @override
  Future<Either<Failure, void>> addProduct(
      AddProductInputEntity addProductInputEntity) {
    throw UnimplementedError();
  }
}
