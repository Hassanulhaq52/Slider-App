part of 'slider_bloc.dart';

class SliderState {
  SliderState({
    required this.valueSlider,
    required this.containerColor,
  });

  final double valueSlider;
  final Color containerColor;

  factory SliderState.initial() {
    return SliderState(
      valueSlider: 20.0,
      containerColor: Colors.red,
    );
  }

  SliderState copyWith({
    double? valueSlider,
    Color? containerColor,
  }) {
    return SliderState(
      valueSlider: valueSlider ?? this.valueSlider,
      containerColor: containerColor ?? this.containerColor,
    );
  }
}
