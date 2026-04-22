// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_api_service.dart';

// dart format off

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter,avoid_unused_constructor_parameters,unreachable_from_main

class _BoardApiService implements BoardApiService {
  _BoardApiService(this._dio, {this.baseUrl, this.errorLogger}) {
    baseUrl ??= 'https://api.dev.kpi-drive.ru';
  }

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<SaveIndicatorInstanceFieldResponseDto> saveIndicatorInstanceField(
    FormData body,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = body;
    final _options = _setStreamType<SaveIndicatorInstanceFieldResponseDto>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/_api/indicators/save_indicator_instance_field',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late SaveIndicatorInstanceFieldResponseDto _value;
    try {
      _value = SaveIndicatorInstanceFieldResponseDto.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<TaskResponseDto> getTasks({
    required String periodStart,
    required String periodEnd,
    required String periodKey,
    required String requestedMoId,
    required String behaviourKey,
    required String withResult,
    required String responseFields,
    required String authUserId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry('period_start', periodStart));
    _data.fields.add(MapEntry('period_end', periodEnd));
    _data.fields.add(MapEntry('period_key', periodKey));
    _data.fields.add(MapEntry('requested_mo_id', requestedMoId));
    _data.fields.add(MapEntry('behaviour_key', behaviourKey));
    _data.fields.add(MapEntry('with_result', withResult));
    _data.fields.add(MapEntry('response_fields', responseFields));
    _data.fields.add(MapEntry('auth_user_id', authUserId));
    final _options = _setStreamType<TaskResponseDto>(
      Options(
            method: 'POST',
            headers: _headers,
            extra: _extra,
            contentType: 'multipart/form-data',
          )
          .compose(
            _dio.options,
            '/_api/indicators/get_mo_indicators',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late TaskResponseDto _value;
    try {
      _value = TaskResponseDto.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// dart format on
