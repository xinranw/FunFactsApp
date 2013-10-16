//
//  XIWMainViewController.h
//  FunFactsApp
//
//  Created by User on 10/15/13.
//  Copyright (c) 2013 Xinran Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XIWFacebookDataManager.h"

#define FACEBOOK_URL @"http://graph.facebook.com/xinranw92"

@interface XIWMainViewController : UITableViewController

@property (nonatomic, strong) XIWFacebookDataManager *mainModel;

@end
