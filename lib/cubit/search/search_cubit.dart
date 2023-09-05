import 'package:dio/dio.dart';
import 'package:evital_sales/api/repository.dart';
import 'package:evital_sales/api/server_exception.dart';
import 'package:evital_sales/cubit/search/search_state.dart';
import 'package:evital_sales/debounce/debounce_search.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/search/search_model_entity.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchModelEntity _searchModelDataResult = SearchModelEntity();
  String searchString = "";
  static bool isSearching = false;
  final _debounce = Debounce(milliseconds: 300);

  SearchCubit() : super(SearchInitialState());

  void searchProducts({required String query}) {
    searchString = query;
    if (searchString.isNotEmpty && searchString.length >= 3) {
      _debounce.run(
        () async {
          try {
            emit(SearchLoadingState());
            isSearching = true;
            _getResponse();
          } catch (e) {
            _debounce.cancel();
            isSearching = false;
            if (e is DioException) {
              emit(SearchFailState(
                  errorMessage:
                      ServerError.withError(exception: e).getErrorMessage));
            } else {
              emit(SearchFailState(errorMessage: "Something went wrong"));
            }
          }
        },
      );
    } else {
      isSearching = false;
      _debounce.cancel();
      _searchModelDataResult = SearchModelEntity();
      emit(SearchInitialState());
    }
  }

  Future<void> _getResponse() async {
    _searchModelDataResult =
        await Repository().getSearchResponse(searchQuery: searchString);

    if (_searchModelDataResult.statusCode == "1") {
      final list = _searchModelDataResult.data?.result ?? [];
      if (list.isNotEmpty) {
        isSearching = false;
        emit(SearchSuccessState(results: list));
      } else {
        isSearching = false;

        list.clear();
        emit(SearchEmptyState());
      }
    } else {
      isSearching = false;
    }
  }

  void clearText() {
    isSearching = false;
    emit(SearchInitialState());
  }
}
