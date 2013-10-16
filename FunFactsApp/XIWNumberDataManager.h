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

@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *number;
@property (nonatomic, strong) NSString *found;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSMutableArray *numberDataArray;

@end
