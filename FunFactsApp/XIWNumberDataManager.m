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
    
    //Get the data and convert into a dictionary
    NSError *jsonError;
    NSMutableDictionary *numberDictionary = [NSJSONSerialization JSONObjectWithData:numbersData
                                                                             options:NSJSONReadingMutableLeaves
                                                                               error:&jsonError];
    //Convert the dictionary into an array based on its key
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:[[numberDictionary allKeys] count]];
    for ( NSUInteger i = 0; i < [[numberDictionary allKeys] count]; i++){
        [array insertObject:[numberDictionary objectForKey: [NSString stringWithFormat:@"%d",i+1]]
                                   atIndex:i];
    }
    
    self.numberDataArray = array;
    
    return self;
}

- (id)getDataArray
{
    return self.numberDataArray;
}

@end
