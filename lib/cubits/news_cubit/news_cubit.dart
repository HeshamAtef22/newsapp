import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:newsapp/models/news_model.dart';
import 'package:newsapp/repository/news_repository.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  void getNews() async{
    try {
      emit(NewsLoading());
      final news = await NewsRepository().getTopBusinessNews();
      emit(NewsSuccess(newsModel: news));
    }  catch (e) {
      emit(NewsFailed());
    }
  }

}
