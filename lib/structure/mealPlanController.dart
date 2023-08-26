import 'mealPlan.dart'; // MealPlan ist eine separate Klasse

class MealPlanController {
  List<MealPlan> mealPlans = []; // Liste der erstellten Meal-Pläne

  void createMealPlan(List<String> meals, int weekNumber) {
    final mealPlan = MealPlan(meals, weekNumber);
    mealPlans.add(mealPlan);
  }

  void editMealPlan(int index, List<String> meals) {
    if (index >= 0 && index < mealPlans.length) {
      mealPlans[index].meals = meals;
    }
  }

  void viewMealPlans() {
    mealPlans.forEach((mealPlan) {
      print('Week ${mealPlan.weekNumber} Meal Plan:');
      mealPlan.mealsPerWeek.forEach((meal) {
        print(' - $meal');
      });
      print('--------------------------');
    });
  }

  void deleteMealPlan(int index) {
    if (index >= 0 && index < mealPlans.length) {
      mealPlans.removeAt(index);
    }
  }

  void addDishToMealPlan(int mealPlanIndex, String dish) {
    if (mealPlanIndex >= 0 && mealPlanIndex < mealPlans.length) {
      mealPlans[mealPlanIndex].mealsPerWeek.add(dish);
    }
  }

  void editDishInMealPlan(int mealPlanIndex, int dishIndex, String newDish) {
    if (mealPlanIndex >= 0 && mealPlanIndex < mealPlans.length) {
      final mealPlan = mealPlans[mealPlanIndex];
      if (dishIndex >= 0 && dishIndex < mealPlan.mealsPerWeek.length) {
        mealPlan.mealsPerWeek[dishIndex] = newDish;
      }
    }
  }

  void removeDishFromMealPlan(int mealPlanIndex, int dishIndex) {
    if (mealPlanIndex >= 0 && mealPlanIndex < mealPlans.length) {
      final mealPlan = mealPlans[mealPlanIndex];
      if (dishIndex >= 0 && dishIndex < mealPlan.mealsPerWeek.length) {
        mealPlan.mealsPerWeek.removeAt(dishIndex);
      }
    }
  }

  List<MealPlan> filterMealPlansByWeek(int week) {
    return mealPlans.where((mealPlan) => mealPlan.weekNumber == week).toList();
  }
}
