/*
 Copyright (C) 2018 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 View controller for the results screen, including the quiz score.
  From this view controller, the user can restart the quiz or return to the
  main menu.
 */

#import "ResultsViewController.h"
#import "Quiz.h"

@interface ResultsViewController ()
//! Table view cell that displays the user's percentage qyuiz score.
@property (nonatomic, weak) IBOutlet UITableViewCell *resultsCell;
@end


@implementation ResultsViewController

//| ----------------------------------------------------------------------------
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.hidesBackButton = YES;
}


//| ----------------------------------------------------------------------------
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.resultsCell.textLabel.text = [NSString stringWithFormat:@"You answered %lu of %lu questions correctly for a score of %.0f%%!",
                                       (unsigned long)self.currentQuiz.correctlyAnsweredQuestions,
                                       (unsigned long)self.currentQuiz.totalQuestions,
                                       self.currentQuiz.percentageScore * 100];
}

@end
