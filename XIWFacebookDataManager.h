//
//  XIWFacebookDataManager.h
//  FunFactsApp
//
//  Created by User on 10/15/13.
//  Copyright (c) 2013 Xinran Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XIWFacebookDataManager : NSObject

- (id)initWithNSData: (NSData *)profileData;

@property (nonatomic, strong) NSString *fullName;
@property (nonatomic, strong) NSString *gender;
@property (nonatomic, strong) NSString *username;
@end
