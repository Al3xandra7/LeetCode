class Solution {
  int minOperations(List<int> nums) {
    int flips = 0; // Licznik operacji
    int n = nums.length;

    for (int i = 0; i <= n - 3; i++) {
      if (nums[i] == 0) {
        // Flipujemy 3 kolejne elementy
        for (int j = 0; j < 3; j++) {
          nums[i + j] ^= 1; // Zamiana 0 ↔ 1
        }
        flips++; // Zwiększamy licznik operacji
      }
    }

    // Sprawdzamy, czy zostały jakieś "0"
    for (int num in nums) {
      if (num == 0) return -1;
    }

    return flips;
  }
}