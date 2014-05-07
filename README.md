DXStarRatingView
================

Simple and easy to use StarRatingView for iOS


##DXStarRatingView
Easy to use star rating view for iOS.

### Steps to use:

1. Add DXStarRatingView.h,DXStarRatingView.m, rating-star-on.png and rating-star-off.png into your project.
2. Just add an UIView in the ViewController or TableViewCell in which you want to use the star rating view. And specify the custom class in the inspector on right pane as `DXStarRatingView`.
![Image That Shows how add UIView and Change the custom class in inspector](http://s26.postimg.org/ogz0ywqax/Screen_Shot_2014_05_07_at_4_15_06_PM.png)

3. If you are NOT using auto layout then the `DXStarRatingView` can calculate its own frame size according to the rating-star-on.png image. But if you use auto-layout then you need to be careful about the frame of the rating view. Use this formula to find the correct frame size to assign it in XIB. 

`frame.size.width = (starImageOn.size.width*5)+(4*kStarPadding)`

`kStarPadding` is a macro to define the gap between the stars. By default it is 1.0f px and it looks good. You are encouraged to configure it yourself to suit your need.

`frame.size.height = starImageOn.size.height`

Not much to say about height.

Create an IBOutlet for the view

`@property (weak, nonatomic) IBOutlet DXStarRatingView *starRatingView;`

In viewDidLoad or wherever you want to configure the star rating view, add the following code

`[self.starRatingView setStars:4 callbackBlock:^(NSNumber *newRating) {
        NSLog(@"didChangeRating: %@",newRating);
}];`
