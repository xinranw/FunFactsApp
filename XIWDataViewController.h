//
//  XIWDataViewController.h
//  FunFactsApp
//
//  Created by User on 10/16/13.
//  Copyright (c) 2013 Xinran Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XIWNumberDataModel.h"

@interface XIWDataViewController : UITableViewController

@property (nonatomic, strong) NSMutableDictionary *numberDataDictionary;
@property (nonatomic, strong) XIWNumberDataModel *numberDataModel;

@end
