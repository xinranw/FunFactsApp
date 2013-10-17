//
//  XIWNumberDataManager.h
//  FunFactsApp
//
//  Created by User on 10/15/13.
//  Copyright (c) 2013 Xinran Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XIWNumberDataModel.h"

@interface XIWNumberDataManager : NSObject

- (id)initWithNSData: (NSData *)numbersData;
- (id)getDataArray;

@property (nonatomic, strong) NSMutableArray *numberDataArray;

@end
