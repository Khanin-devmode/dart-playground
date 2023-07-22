import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Usaage: dart totals.dart <inputFile.csv>');
    exit(1);
  }

  //Read file
  final inputFile = arguments.first;
  final lines = File(inputFile).readAsLinesSync();
  final headers = lines[0].split(',');
  lines.removeAt(0);

  //Convert lines to Map of records;
  final List<Map<String, dynamic>> records = [];
  for (var line in lines) {
    Map<String, dynamic> entry = {};
    final values = line.split(',');
    for (var i = 0; i < values.length; i++) {
      entry[headers[i].replaceAll('"', '')] = values[i].replaceAll('"', '');
      records.add(entry);
    }
  }

  //Calculate total duration and each tag.
  double totalDuration = 0;
  final totalDurationByTag = <String, double>{};
  for (var record in records) {
    final tag = record['Tags'];
    final duration = double.parse(record['Duration']);
    totalDuration += duration;
    final previousTotal = totalDurationByTag[tag];
    if (previousTotal == null) {
      totalDurationByTag[tag] = duration;
    } else {
      totalDurationByTag[tag] = previousTotal + duration;
    }
  }

  //Reports
  print('==== Reports ====');
  for (var entry in totalDurationByTag.entries) {
    print('${entry.key}: ${entry.value.toStringAsFixed(1)}');
  }
  print('==== Total : ${totalDuration.toStringAsFixed(1)} ====');
}
