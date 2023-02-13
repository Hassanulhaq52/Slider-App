part of 'slider_bloc.dart';

abstract class SliderEvent {}

class OnChangeSlider1Value extends SliderEvent {
  OnChangeSlider1Value({this.valueSlider1});
  final double? valueSlider1;
}

class OnChangeSlider2Value extends SliderEvent {
  OnChangeSlider2Value({
    this.valueSlider2,
  });

  final double? valueSlider2;
}

class OnChangeSlider3Value extends SliderEvent {
  OnChangeSlider3Value({
    this.valueSlider3,
  });

  final double? valueSlider3;
}

class OnChangeSlider4Value extends SliderEvent {
  OnChangeSlider4Value({
    this.valueSlider4,
  });

  final double? valueSlider4;
}

