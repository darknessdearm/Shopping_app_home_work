import 'package:freezed_annotation/freezed_annotation.dart';

part 'ekyc_consent_request.freezed.dart';
part 'ekyc_consent_request.g.dart';

@freezed
class ProductRequest with _$ProductRequest {
  const factory ProductRequest({
    @JsonKey(name: 'reccommendProduct') required List<ProductListRequest> reccommendProduct,
    @JsonKey(name: 'lastedProduct') required List<EkycConsentListRequest> lastedProduct,
  }) = _ProductRequest;

  factory ProductRequest.fromJson(Map<String, dynamic> json) =>
      _$ProductRequestFromJson(json);
}

@freezed
class ProductListRequest with _$ProductListRequest {
  const factory ProductListRequest({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'price') required String price,
  }) = _ProductListRequest;

  factory ProductListRequest.fromJson(Map<String, dynamic> json) =>
      _$ProductListRequestFromJson(json);
}
