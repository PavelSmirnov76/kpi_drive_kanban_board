import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../network/api_client.dart';
import '../../features/board/data/datasources/board_api_service.dart';

@module
abstract class AppModule {
  @lazySingleton
  Dio get dio => ApiClient.create();

  @lazySingleton
  BoardApiService boardApiService(Dio dio) => BoardApiService(dio);
}
