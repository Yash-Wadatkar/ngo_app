/// states of home screen
sealed class HomeScreenState {}

/// loading state of home screen
class HomeScreenLoadingState extends HomeScreenState{}

/// data load successfull state 
class HomeScreenDataLoadSuccesState extends HomeScreenState{}

/// listner state of home screen
final class HomeScreenListnerState extends HomeScreenState{}

/// error state of home screen

final class HomeScreenErrorState extends HomeScreenListnerState{}