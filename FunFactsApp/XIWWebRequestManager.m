//
//  XIWWebRequestManager.m
//  FunFactsApp
//
//  Created by User on 10/15/13.
//  Copyright (c) 2013 Xinran Wang. All rights reserved.
//

#import "Reachability.h"

@implementation XIWWebRequestManager

+ (BOOL)doesHaveInternetConnection
{
    //check for network access using Apple Reachability
    Reachability *networkReachability = [Reachability reachabilityForInternetConnection];
    NetworkStatus networkStatus = [networkReachability currentReachabilityStatus];
    
    return (networkStatus == NotReachable) ? NO : YES;
}

+ (NSData *)dataFromURL:(NSURL *)url;
{
    if (![XIWWebRequestManager doesHaveInternetConnection]) {
        return nil;
    }
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    NSURLResponse *urlResponse;
    NSError *urlError;
    NSData *urlData = [NSURLConnection sendSynchronousRequest:urlRequest
                                          returningResponse:&urlResponse
                                                        error:&urlError];
    return urlData;
}

+ (NSData *)dataFromString:(NSString *)urlString
{
    return [XIWWebRequestManager dataFromURL:[NSURL URLWithString:urlString]];
}

@end
