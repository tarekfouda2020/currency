import 'dart:convert';

import 'package:flutter_tdd/features/base/data/models/support_data_model/support_data_model.dart';
import 'package:flutter_tdd/features/base/presentation/pages/home/home_main/home_main_imports.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'utils/utils.dart';

class MockHomeMainController extends Mock implements HomeMainController {}

void main() {
  late HomeMainController baseRepo;

  setUp(() {
    baseRepo = MockHomeMainController();
  });

  group('get supported currencies', () {
    var jsonData = readJson('currencies.json');
    final currenciesLst = SupportDataModel.fromJson(
      json.decode(jsonData),
    );
    test(
      'should return list of currencies model when the response code is 200',
      () async {
        // arrange
        when( baseRepo.getSupported()).thenAnswer((_) async => currenciesLst);

        // act
        final result = await baseRepo.getSupported();

        // assert
        expect(result, equals(currenciesLst));
      },
    );

    test(
      'should throw a server exception when the response is error',
      () async {
        // arrange
        when(baseRepo.getSupported()).thenAnswer((_) async => null);

        // act
        final call = await baseRepo.getSupported();

        // assert
        expect( call, null);
      },
    );
  });
}