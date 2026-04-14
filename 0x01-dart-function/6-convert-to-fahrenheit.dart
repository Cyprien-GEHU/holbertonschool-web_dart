List<double> convertToF(List<double> temperaturesInC)
{
  List<double> result = [];
  var tempCalcul;
  for (var temp in temperaturesInC)
  {
    tempCalcul = double.parse(((temp * 9 / 5) + 32).toStringAsFixed(2));
    result.add(tempCalcul);
  }
  return (result);
}