/*
 Copyright (C) 2018 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 View controller for displaying a Question.
 */

@import UIKit;

@class Quiz;

@interface QuestionViewController : UITableViewController

//! The Quiz to source the question from.
@property (strong) Quiz *currentQuiz;
//! Index of the Question in the Quiz to display.
@property (readwrite) NSUInteger questionIndex;

@end
