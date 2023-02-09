part of 'slider_bloc.dart';

abstract class SliderEvent {}

class OnChangeSliderValue extends SliderEvent {
  OnChangeSliderValue({this.valueSlider});
  final double? valueSlider;
}
