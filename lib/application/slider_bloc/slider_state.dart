part of 'slider_bloc.dart';

class SliderState {
  SliderState({
    required this.valueSlider1,
    required this.valueSlider2,
    required this.valueSlider3,
    required this.valueSlider4,
  });

  final double valueSlider1;
  final double valueSlider2;
  final double valueSlider3;
  final double valueSlider4;

  factory SliderState.initial() {
    return SliderState(
      valueSlider1: 20.0,
      valueSlider2: 20.0,
      valueSlider3: 20.0,
      valueSlider4: 20.0,
    );
  }

  SliderState copyWith({
    double? valueSlider1,
    double? valueSlider2,
    double? valueSlider3,
    double? valueSlider4,
    Color? containerColor,
  }) {
    return SliderState(
      valueSlider1: valueSlider1 ?? this.valueSlider1,
      valueSlider2: valueSlider2 ?? this.valueSlider2,
      valueSlider3: valueSlider3 ?? this.valueSlider3,
      valueSlider4: valueSlider4 ?? this.valueSlider4,
    );
  }
}
