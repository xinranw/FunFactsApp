//
//  XIWWebRequestManager.h
//  FunFactsApp
//
//  Created by User on 10/15/13.
//  Copyright (c) 2013 Xinran Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XIWWebRequestManager : NSObject

+ (BOOL)doesHaveInternetConnection;
+ (NSData *)dataFromURL:(NSURL *)url;
+ (NSData *)dataFromString: (NSString *)urlString;

@end
