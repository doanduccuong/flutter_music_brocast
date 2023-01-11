import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/enum/enum.dart';
import 'package:flutter_base_project/features/domain/entites/artist_entity.dart';
import 'package:flutter_base_project/features/domain/entites/artist_related_entity.dart';
import 'package:flutter_base_project/features/domain/entites/playlist_entity.dart';
import 'package:flutter_base_project/features/domain/repositories/user_repository.dart';
import 'package:flutter_base_project/injection.dart';
import 'package:flutter_base_project/injection.dart';
import 'package:flutter_base_project/model/album_dto.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomePageState> {

  HomeBloc() : super(HomePageState()) {
    on<FetchingDataEvent>((event, emit) async {
      emit(state.copyWith(pageStatus: PageStatus.LOADING));
      final artistRelatedRes = await getIt<UserRepository>().getArtistRelated();
      final playListRes = await getIt<UserRepository>().getPlayList();
      emit(state.copyWith(
        artistRelatedData: artistRelatedRes,
        pageStatus: PageStatus.LOADED,
        playListData: playListRes,
      ));
    });
    on<ChangeTabEvent>((event, emit) => null);
  }
}
