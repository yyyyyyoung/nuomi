//
//  ChoiceViewController.h
//  吃喝玩乐—尽享生活
//
//  Created by mac on 15/10/12.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "BaseViewController.h"

@interface ChoiceViewController : BaseViewController

@property (retain, nonatomic) IBOutlet UITableView *tableView;

@property(nonatomic,strong)NSMutableArray *dataArray;

@end
