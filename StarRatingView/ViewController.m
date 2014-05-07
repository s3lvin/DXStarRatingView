/*
 Copyright (c) 2014 Selvin
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 */

#import "ViewController.h"
#import "DXStarRatingView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet DXStarRatingView *starRatingView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    /*
     Style 1:
     Its useful to pass a target and its action in some situations
     I personally use this style when I need to use the DXStarRatingView in a UITableViewCell in a tableView cellForRowAtIndexPath method.
     */
//uncomment the following line to check callbeck
//    [self.starRatingView setStars:2 target:self callbackAction:@selector(didChangeRating:)];
    
    /*
     Style 2:
     This could be helpful for anyplace other than inside a tableview cell. For example,
     Right now its being used in a viewDidLoad method which is perfectly comfortable to
     recieve the ratings changed callback.
     */
    [self.starRatingView setStars:4 callbackBlock:^(NSNumber *newRating) {
        NSLog(@"didChangeRating: %@",newRating);
    }];
    
    /*
     Note: Its by design you can have both types of callbacks
     */
    
}

- (void)didChangeRating:(NSNumber*)newRating
{
    NSLog(@"didChangeRating: %@",newRating);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
