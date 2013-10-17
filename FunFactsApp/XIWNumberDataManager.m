//
//  XIWNumberDataManager.m
//  FunFactsApp
//
//  Created by User on 10/15/13.
//  Copyright (c) 2013 Xinran Wang. All rights reserved.
//

#import "XIWNumberDataManager.h"

@implementation XIWNumberDataManager

//designated initializer
- (id)initWithNSData:(NSData *)numbersData
{
    self = [super init];
    
    //perform a web request and then set our properties
    NSError *jsonError;
    NSMutableDictionary *numberDictionary = [NSJSONSerialization JSONObjectWithData:numbersData
                                                                             options:NSJSONReadingMutableLeaves
                                                                               error:&jsonError];
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:[[numberDictionary allKeys] count]];

    
    for ( NSUInteger i = 0; i < [[numberDictionary allKeys] count]; i++){
        [array insertObject:[numberDictionary objectForKey: [NSString stringWithFormat:@"%d",i+1]]
                                   atIndex:i];
    }
    
    NSLog(@"%@", array);
    self.numberDataArray = array;
    
    return self;
}

- (id)getDataArray
{
    return self.numberDataArray;
}

@end
