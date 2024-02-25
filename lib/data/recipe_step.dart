
class RecipeStepData {
  final String title;
  final String description;
  final Duration? duration;

  const RecipeStepData({
    required this.title,
    required this.description,
    this.duration,
  });
}