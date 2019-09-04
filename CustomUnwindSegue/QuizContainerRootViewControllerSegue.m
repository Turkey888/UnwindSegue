/*
 Copyright (C) 2018 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 Custom segue for setting the root view controller of a
  QuizContainerViewController.
 */

#import "QuizContainerRootViewControllerSegue.h"
#import "QuizContainerViewController.h"
#import "Quiz.h"

@implementation QuizContainerRootViewControllerSegue

//| ----------------------------------------------------------------------------
//  Replaces the viewControllers array of the sourceViewController (which must 
//  be a QuizContainerViewController) with an array containing only the
//  destinationViewController.  Visually, it causes the
//  QuizContainerViewController to immediately display the
//  destinationViewController with no animated transition.
//
- (void)perform
{
    QuizContainerViewController *containerVC = (QuizContainerViewController*)self.sourceViewController;
    
    NSArray *viewControllers = @[self.destinationViewController];
    
    // For our custom segue we can set the quiz here
    // as the destinationViewController is now instantiated
    [Quiz setQuizOnQuestionViewController:(QuestionViewController *)self.destinationViewController];
    
    containerVC.viewControllers = viewControllers;
}

@end
