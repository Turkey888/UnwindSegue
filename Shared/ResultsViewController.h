/*
 Copyright (C) 2018 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 View controller for the results screen, including the quiz score.
  From this view controller, the user can restart the quiz or return to the
  main menu.
 */

@import UIKit;

@class Quiz;

@interface ResultsViewController : UITableViewController

//! The Quiz to source the results from.
@property (strong) Quiz *currentQuiz;

@end
