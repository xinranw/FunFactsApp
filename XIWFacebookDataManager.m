//
//  XIWFacebookDataManager.m
//  FunFactsApp
//
//  Created by User on 10/15/13.
//  Copyright (c) 2013 Xinran Wang. All rights reserved.
//

#import "XIWFacebookDataManager.h"

@implementation XIWFacebookDataManager

//designated initiliazer
- (id)initWithNSData:(NSData *)profileData
{
    self = [super init];
    
    //perform a web request and then set our properties
    NSError *jsonError;
    NSMutableDictionary *profileDictionary = [NSJSONSerialization JSONObjectWithData:profileData
                                                                             options:NSJSONReadingMutableLeaves
                                                                               error:&jsonError];
    
    self.fullName = [profileDictionary objectForKey:@"name"];
    self.username = [profileDictionary objectForKey:@"username"];
    self.gender  = [profileDictionary objectForKey:@"gender"];
    
    return self;
}

@end
