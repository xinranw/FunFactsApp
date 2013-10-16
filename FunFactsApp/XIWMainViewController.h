//
//  XIWMainViewController.h
//  FunFactsApp
//
//  Created by User on 10/15/13.
//  Copyright (c) 2013 Xinran Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XIWFacebookDataManager.h"
#import "XIWNumberDataModel.h"

#define DATA_URL @"http://numbersapi.com/1..50/trivia?json"

@interface XIWMainViewController : UITableViewController

@property (nonatomic, strong) XIWFacebookDataManager *mainModel;

@end
