/*
 Copyright (C) 2018 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 Model class for a single question in the quiz.
 */

#import "Question.h"
#import "Quiz.h"

@implementation Question

//| ----------------------------------------------------------------------------
//! Initializes and returns a newly created Question.
//
//! @param  questionDict
//!         The dictionary from which to retrieve the data for the question.
//
- (instancetype)initWithQuestionDict:(NSDictionary*)questionDict
{
    self = [super init];
    if (self)
    {
        _text = questionDict[QuestionTextKey];
        _responses = questionDict[AnswerTextKey];
        _correctResponse = [questionDict[AnswerKey] integerValue];
        _selectedResponse = NSNotFound;
    }
    return self;
}

@end
