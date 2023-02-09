import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter/application/slider_bloc/slider_bloc.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SliderBloc, SliderState>(
      builder: (context, state) {
        final SliderBloc sliderBloc = context.read<SliderBloc>();
        return Scaffold(
          body: Container(
            color: state.containerColor,
            child: Slider(
              max: 200.0,
              min: 0.0,
              divisions: 30,
              value: state.valueSlider,
              onChanged: (value) {
                sliderBloc.add(
                  OnChangeSliderValue(
                    valueSlider: value,
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
