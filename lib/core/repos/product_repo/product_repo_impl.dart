// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:fakahani_dashboard/core/networking/errors/failures.dart';
import 'package:fakahani_dashboard/core/networking/services/database_service.dart';
import 'package:fakahani_dashboard/core/networking/services/end_point.dart';
import 'package:fakahani_dashboard/core/repos/product_repo/product_repo.dart';
import 'package:fakahani_dashboard/features/add_product/data/models/add_product_input_model.dart';
import 'package:fakahani_dashboard/features/add_product/domain/entities/add_product_input_entity.dart';

class ProductRepoImpl implements ProductRepo {
  DatabaseServices databaseServices;
  ProductRepoImpl({
    required this.databaseServices,
  });
  @override
  Future<Either<Failure, void>> addProduct(
      AddProductInputEntity addProductInputEntity) async {
    try {
      await databaseServices.addData(
        path: BackendEndPoint.products,
        data: AddProductInputModel.fromEntity(addProductInputEntity).toJson(),
      );
      return const Right(null);
    } on Exception catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
