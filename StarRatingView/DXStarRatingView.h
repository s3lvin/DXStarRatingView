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

typedef void(^DXStarRatingViewCallBack)(NSNumber *newRating);

#import <UIKit/UIKit.h>

@interface DXStarRatingView : UIView

/**
 * @brief set the inital star value
 * @param  stars number of stars to be set
 * @return -
 */
- (void)setStars:(int)stars;

/**
 * @brief set initial stars and a callback action
 * @param stars number of stars to be set
 * @param target target to register action
 * @param action a SEL to be performed on star change event
 * @return -
 */
- (void)setStars:(int)stars target:(id)target callbackAction:(SEL)cllBackAction;

/**
 * @brief set initial stars and a callback block
 * @param stars number of stars to be set
 * @param void(^)(NSNumber*) a Block to recieve callback action
 * @return -
 */
- (void)setStars:(int)stars callbackBlock:(DXStarRatingViewCallBack)callBackBlock;


@end
