import '../../model/search/search_model_entity.dart';

abstract class SearchState {}

class SearchInitialState extends SearchState {}

class SearchLoadingState extends SearchState {}

class SearchSuccessState extends SearchState {
  List<SearchModelDataResult> results;

  SearchSuccessState({required this.results});
}

class SearchFailState extends SearchState {
  String errorMessage;

  SearchFailState({required this.errorMessage});
}

class SearchEmptyState extends SearchState {}
