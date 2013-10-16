//
//  XIWNumberDataModel.m
//  FunFactsApp
//
//  Created by User on 10/15/13.
//  Copyright (c) 2013 Xinran Wang. All rights reserved.
//

#import "XIWNumberDataModel.h"

@implementation XIWNumberDataModel

//designated initializer
- (id)initWithNSData:(NSData *)numbersData
{
    self = [super init];
    
    //perform a web request and then set our properties
    NSError *jsonError;
    NSMutableDictionary *numberDictionary = [NSJSONSerialization JSONObjectWithData:numbersData
                                                                             options:NSJSONReadingMutableLeaves
                                                                               error:&jsonError];
    
    self.text = [numberDictionary objectForKey:@"text"];
    self.number = [numberDictionary objectForKey:@"number"];
    self.found = [numberDictionary objectForKey:@"found"];
    self.type = [numberDictionary objectForKey:@"type"];
    
    return self;
}

@end
