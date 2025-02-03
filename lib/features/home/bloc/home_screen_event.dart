/// events for home screen
sealed class HomeScreenEvent {}

/// initial event of home screen
class HomeScreenInitialEvent extends HomeScreenEvent{}

/// event for slide bar button click
class SlideBarButtonClickedEvent extends HomeScreenEvent{}

/// event for comment icon click
class CommentButtonClickEvent extends HomeScreenEvent{}

/// event for like icon click
class LikeButtonClickEvent extends HomeScreenEvent{}


/// event for share icon click
class ShareButtonClickEvent extends HomeScreenEvent{}

/// event for more icon click
class MoreButtonClickEvent extends HomeScreenEvent{}