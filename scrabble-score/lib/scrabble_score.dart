final Map<String, int> pointsMap = {
  'aeioulnrst': 1,
  'dg': 2,
  'bcmp': 3,
  'fhvwy': 4,
  'k': 5,
  'jx': 8,
  'qz': 10,
};

int score(String word) => word.split('').fold(
      0,
      (score, letter) =>
          score +
          pointsMap.entries
              .firstWhere(
                (entry) => entry.key.contains(
                  letter.toLowerCase(),
                ),
              )
              .value,
    );
