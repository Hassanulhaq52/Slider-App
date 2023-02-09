import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
part 'slider_event.dart';
part 'slider_state.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState> {
  SliderBloc() : super(SliderState.initial()) {
    on<OnChangeSliderValue>((event, emit) {
      emit(state.copyWith(valueSlider: event.valueSlider));

      if (state.valueSlider < 20) {
        emit(state.copyWith(containerColor: Colors.indigo.shade100));
      } else if (state.valueSlider > 20 && state.valueSlider < 40) {
        emit(state.copyWith(containerColor: Colors.lightBlueAccent));
      } else if (state.valueSlider > 40 && state.valueSlider < 60) {
        emit(state.copyWith(containerColor: Colors.pinkAccent));
      } else if (state.valueSlider > 60 && state.valueSlider < 80) {
        emit(state.copyWith(containerColor: Colors.tealAccent));
      } else if (state.valueSlider > 80 && state.valueSlider < 100) {
        emit(state.copyWith(containerColor: Colors.deepPurple));
      } else if (state.valueSlider > 100 && state.valueSlider < 120) {
        emit(state.copyWith(containerColor: Colors.yellowAccent));
      } else if (state.valueSlider > 120 && state.valueSlider < 140) {
        emit(state.copyWith(containerColor: Colors.deepOrangeAccent));
      } else if (state.valueSlider > 140 && state.valueSlider < 160) {
        emit(state.copyWith(containerColor: Colors.lime.shade100));
      } else if (state.valueSlider > 160 && state.valueSlider < 180) {
        emit(state.copyWith(containerColor: Colors.teal.shade100));
      } else if (state.valueSlider > 180 && state.valueSlider < 200) {
        emit(state.copyWith(containerColor: Colors.purple));
      }
    });
  }
}
