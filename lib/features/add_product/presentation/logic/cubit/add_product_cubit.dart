import 'package:bloc/bloc.dart';
import 'package:fakahani_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:fakahani_dashboard/core/repos/product_repo/product_repo.dart';
import 'package:fakahani_dashboard/features/add_product/domain/entities/add_product_input_entity.dart';
import 'package:fakahani_dashboard/features/add_product/presentation/logic/cubit/add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit(this.imagesRepo, this.addProductRepo)
      : super(AddProductInitial());
  final ImagesRepo imagesRepo;
  final ProductRepo addProductRepo;

  Future<void> addProduct(AddProductInputEntity addProductInputEntity) async {
    emit(AddProductLoading());
    var result = await imagesRepo.uploadImage(addProductInputEntity.image);
    await result.fold((f) {
      emit(AddProductFailure(f.message));
    }, (url) async {
      addProductInputEntity.imageURL = url;
      var result = await addProductRepo.addProduct(addProductInputEntity);
      result.fold((f) {
        emit(AddProductFailure(f.message));
      }, (r) {
        emit(AddProductSuccess());
      });
    });
  }
}
