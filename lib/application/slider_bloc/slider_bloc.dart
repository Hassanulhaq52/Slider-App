import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
part 'slider_event.dart';
part 'slider_state.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState> {
  SliderBloc() : super(SliderState.initial()) {
    on<OnChangeSlider1Value>((event, emit) {
      emit(state.copyWith(
        valueSlider1: event.valueSlider1,
      ));

      // if (state.valueSlider1 < 20) {
      //   emit(state.copyWith(containerColor: Colors.orange.shade200));
      // } else if (state.valueSlider1 > 20 && state.valueSlider1 < 40) {
      //   emit(state.copyWith(containerColor: Colors.lightBlueAccent));
      // } else if (state.valueSlider1 > 40 && state.valueSlider1 < 60) {
      //   emit(state.copyWith(containerColor: Colors.pinkAccent));
      // } else if (state.valueSlider1 > 60 && state.valueSlider1 < 80) {
      //   emit(state.copyWith(containerColor: Colors.tealAccent));
      // } else if (state.valueSlider1 > 80 && state.valueSlider1 < 100) {
      //   emit(state.copyWith(containerColor: Colors.deepPurple));
      // } else if (state.valueSlider1 > 100 && state.valueSlider1 < 120) {
      //   emit(state.copyWith(containerColor: Colors.yellowAccent));
      // } else if (state.valueSlider1 > 120 && state.valueSlider1 < 140) {
      //   emit(state.copyWith(containerColor: Colors.deepOrangeAccent));
      // } else if (state.valueSlider1 > 140 && state.valueSlider1 < 160) {
      //   emit(state.copyWith(containerColor: Colors.lime.shade100));
      // } else if (state.valueSlider1 > 160 && state.valueSlider1 < 180) {
      //   emit(state.copyWith(containerColor: Colors.brown.shade400));
      // } else if (state.valueSlider1 > 180 && state.valueSlider1 < 200) {
      //   emit(state.copyWith(containerColor: Colors.purple.shade200));
      // }
    });
    on<OnChangeSlider2Value>((event, emit) {
      emit(state.copyWith(
          valueSlider2: event.valueSlider2));
    });
    on<OnChangeSlider3Value>((event, emit) {
      emit(state.copyWith(
          valueSlider3: event.valueSlider3));
    });
    on<OnChangeSlider4Value>((event, emit) {
      emit(
          state.copyWith(valueSlider4: event.valueSlider4));
    });
  }
}
