/*
 Copyright (C) 2018 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 Model class for a single question in the quiz.
 */

@import Foundation;

@interface Question : NSObject

- (instancetype)initWithQuestionDict:(NSDictionary*)questionDict NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;

//! The text of the question.
@property (readonly) NSString *text;
//! Possible responses to the question.
@property (readonly) NSArray *responses;
//! The index of the correct response in the respo0nses array.
@property (readonly) NSInteger correctResponse;
//! The index of the user's selected response or NSNotFound if the user has not
//! responded to the question.
@property (readwrite) NSInteger selectedResponse;

@end
