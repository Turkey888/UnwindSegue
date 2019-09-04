/*
 Copyright (C) 2018 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 Custom segue for pushing new view controllers onto the
  navigation stack of a QuizContainerViewController.
 */

@import UIKit;

@interface QuizContainerFadeViewControllerSegue : UIStoryboardSegue

//! If the value of this property is YES, the destinationViewController will
//! be pushed onto the navigation stack (equivalent to calling
//! -pushViewController:.  If the value of this property is NO, the
//! navigation stack is popped until the destinationViewController is the top
//! view controller (equivalent to calling -popToViewController:).
@property (nonatomic) BOOL unwind;

@end
