//
//  XIWNumberDataModel.h
//  FunFactsApp
//
//  Created by User on 10/16/13.
//  Copyright (c) 2013 Xinran Wang. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface XIWNumberDataModel : NSObject

- (id)initWithId: (NSMutableDictionary *)numberDataDictionary;

@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *number;
@property (nonatomic, strong) NSString *found;
@property (nonatomic, strong) NSString *type;

@end
