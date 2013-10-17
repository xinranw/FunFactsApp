//
//  XIWNumberDataModel.m
//  FunFactsApp
//
//  Created by User on 10/16/13.
//  Copyright (c) 2013 Xinran Wang. All rights reserved.
//

#import "XIWNumberDataModel.h"

@implementation XIWNumberDataModel

//designated initializer
- (id)initWithId: (NSMutableDictionary *)numberDataDictionary;
{
    self = [super init];
    
    self.text = [numberDataDictionary objectForKey:@"text"];
    self.number = [numberDataDictionary objectForKey:@"number"];
    self.found = [numberDataDictionary objectForKey: @"found"] ? @"true" : @"false";
    self.type = [numberDataDictionary objectForKey:@"type"];

    return self;
}

@end
