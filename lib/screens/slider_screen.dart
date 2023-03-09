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
            color: Colors.grey.shade300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: state.valueSlider3,
                  width: state.valueSlider4,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, state.valueSlider1.toInt(), 1.0),
                    borderRadius: BorderRadius.circular(state.valueSlider2),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Color'),
                    Slider(
                      max: 255.0,
                      min: 0.0,
                      label: '${state.valueSlider1}',
                      // divisions: 30,
                      value: state.valueSlider1,
                      onChanged: (value) {
                        sliderBloc.add(OnChangeSlider1Value(valueSlider1: value));
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Radius'),
                    Slider(
                      max: 150,
                      min: 0.0,
                      label: '${state.valueSlider2}',
                      // divisions: 30,
                      value: state.valueSlider2,
                      onChanged: (value) {
                        sliderBloc.add(OnChangeSlider2Value(valueSlider2: value));
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Height'),
                    Slider(
                      max: 300.0,
                      min: 0.0,
                      label: '${state.valueSlider3}',
                      // divisions: 30,
                      value: state.valueSlider3,
                      onChanged: (value) {
                        sliderBloc.add(OnChangeSlider3Value(valueSlider3: value));
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Width'),
                    Slider(
                      max: 300.0,
                      min: 0.0,
                      label: '${state.valueSlider4}',
                      // divisions: 30,
                      secondaryTrackValue: state.valueSlider4,
                      value: state.valueSlider4,
                      onChanged: (value) {
                        sliderBloc.add(OnChangeSlider4Value(valueSlider4: value));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
