import 'dart:core';

// Quick Sort Implementation
List<int> quickSort(List<int> list) {
  if (list.length <= 1) {
    return list;
  }

  int pivot = list[list.length ~/ 2];
  List<int> less = list.where((x) => x < pivot).toList();
  List<int> equal = list.where((x) => x == pivot).toList();
  List<int> greater = list.where((x) => x > pivot).toList();

  return quickSort(less) + equal + quickSort(greater);
}

// Bubble Sort Implementation
List<int> bubbleSort(List<int> list) {
  List<int> arr = List.from(list); // Create a copy of the list
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  return arr;
}

void main() {
  List<int> numbers = [34, 7, 23, 32, 5, 62];

  // Measure time for Quick Sort
  Stopwatch stopwatch = Stopwatch()..start();
  List<int> quickSorted = quickSort(List.from(numbers));
  stopwatch.stop();
  print(
      'Quick Sort: $quickSorted, Time: ${stopwatch.elapsedMicroseconds} microseconds');

  // Measure time for Bubble Sort
  stopwatch
    ..reset()
    ..start();
  List<int> bubbleSorted = bubbleSort(List.from(numbers));
  stopwatch.stop();
  print(
      'Bubble Sort: $bubbleSorted, Time: ${stopwatch.elapsedMicroseconds} microseconds');
}
