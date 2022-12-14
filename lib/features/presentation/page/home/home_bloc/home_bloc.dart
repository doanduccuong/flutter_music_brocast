import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/configs/app_configs.dart';
import 'package:flutter_base_project/core/entites/artist_entity.dart';
import 'package:flutter_base_project/core/entites/artist_related_entity.dart';
import 'package:flutter_base_project/enum/enum.dart';
import 'package:flutter_base_project/features/domain/repositories/auth_repository.dart';
import 'package:flutter_base_project/model/album_dto.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomePageState> {
  final AuthRepository authRepository;

  HomeBloc({required this.authRepository}) : super(HomePageState()) {
    on<FetchingDataEvent>((event, emit) async {
      emit(state.copyWith(pageStatus: PageStatus.LOADING));
      final res = await authRepository.getArtistRelated();
      emit(state.copyWith(artistRelatedData: res, pageStatus: PageStatus.LOADED));
    });
    on<ChangeTabEvent>((event, emit) => null);
  }
}
