class MealPlan {
  List<String> mealsPerWeek; // List of 5 dishes for Mon-Fri
  int weekNumber;

  MealPlan(this.mealsPerWeek, this.weekNumber);

  List<String> get meals => mealsPerWeek;
  set meals(List<String> meals) => mealsPerWeek = meals;

  int get week => weekNumber;
  set week(int week) => weekNumber = week;
}
