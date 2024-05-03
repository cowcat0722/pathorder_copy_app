import 'package:dio/dio.dart';
import 'package:pathorder_app/_core/constants/http.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/data/models/store.dart';
import 'package:pathorder_app/ui/home/near_me_store/store_list_view_model.dart';

class StoreRepository {
  Future<ResponseDTO> fetchStoreList(String accessToken, {int page = 0}) async {
    final response = await dio.get(
      "/api/stores",
      queryParameters: {"page": page},
      options: Options(headers: {"Authorization": "${accessToken}"}),
    );

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    print('${responseDTO.status} 크크크크크크크크크크크크크크크크');
    if (responseDTO.status == 200) {
      List<dynamic> temp = responseDTO.response;
      List<Store> stores = temp.map((e) => Store.fromJson(e)).toList();

      StoreListModel storeListModel = StoreListModel(stores);
      responseDTO.response = storeListModel;
    }

    print('${responseDTO.response} 키키키키키키키키키키키키ㅣ키키키키키키');
    return responseDTO;
  }
}