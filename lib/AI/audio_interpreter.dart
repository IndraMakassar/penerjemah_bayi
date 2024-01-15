import 'package:tflite_flutter/tflite_flutter.dart';

class AudioInterpreter {
  late Interpreter interpreter;

  Future<void> loadModel() async{
    interpreter = await Interpreter.fromAsset("assets/model.tflite");
  }

  Future<List<double>> runInference(List<double> inputMFCCs) async {
    var input = inputMFCCs.reshape([1, 20]);
    var output = List<List<num>>.filled(1, List<num>.filled(5, 0));

    interpreter.run(input, output);

    var probabilities = List.from(output[0]) as List<double>;

    return probabilities;
  }

}

