bool isPalindrome(String input) {
  // Remove spaces, punctuation, and convert to lowercase
  String sanitizedInput =
      input.replaceAll(RegExp(r'[^A-Za-z0-9]'), '').toLowerCase();

  // Check if the sanitized string is equal to its reverse
  return sanitizedInput == sanitizedInput.split('').reversed.join('');
}

void main() {
  // Test cases for strings
  print(isPalindrome("A man, a plan, a canal, Panama"));
  print(isPalindrome("No lemon, no melon"));
  print(isPalindrome("Hello, World!"));

  // Test cases for numbers
  print(isPalindrome("12321"));
  print(isPalindrome("12345"));
}
