part of 'news_cubit.dart';

@immutable
abstract class NewsState {}

class NewsInitial extends NewsState {}

class NewsLoading extends NewsState {}

class NewsSuccess extends NewsState {
  final NewsGeneralResponse newsModel;
  NewsSuccess({required this.newsModel});
}

class NewsFailed extends NewsState {}

