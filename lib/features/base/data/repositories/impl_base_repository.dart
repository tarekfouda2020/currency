import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/features/base/data/models/ads/ad_model.dart';
import 'package:flutter_tdd/features/base/data/models/agent/agent_model.dart';
import 'package:flutter_tdd/features/base/data/models/cat_products/cat_products_model.dart';
import 'package:flutter_tdd/features/base/data/models/category/category_model.dart';
import 'package:flutter_tdd/features/base/domain/entites/category_items_params.dart';
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart';
import 'package:injectable/injectable.dart';

import '../data_sources/home_remote_data_source.dart';
import '../models/products/product_model.dart';

@Injectable(as: BaseRepository)
class ImplBaseRepository extends BaseRepository {

  @override
  Future<Either<Failure, List<AdModel>>> getAds(bool param)async {
    return await getIt<HomeRemoteDataSource>().getAds(param);
  }

  @override
  Future<Either<Failure, List<AgentModel>>> getAgents(bool param)async {
    return await getIt<HomeRemoteDataSource>().getAgents(param);
  }

  @override
  Future<Either<Failure, List<CatProductsModel>>> getCatProducts(CategoryItemsParams params)async {
    return await getIt<HomeRemoteDataSource>().getCatProducts(params);
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getMarketProducts(bool param)async {
    return await getIt<HomeRemoteDataSource>().getMarketProducts(param);
  }

  @override
  Future<Either<Failure, List<CategoryModel>>> getCategories(bool param)async {
    return await getIt<HomeRemoteDataSource>().getCategories(param);
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getFeaturedProducts(bool param)async {
    return await getIt<HomeRemoteDataSource>().getFeaturedProducts(param);
  }


}