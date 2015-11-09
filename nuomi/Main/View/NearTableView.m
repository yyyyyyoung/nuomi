//
//  NearTableView.m
//  yyyXM3
//
//  Created by mac on 15/10/26.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "NearTableView.h"
#import "NearByViewCell.h"
#import "Commen.h"

@implementation NearTableView

- (id)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    
    self = [super initWithFrame:frame style:style];
    if (self) {
        
        self.dataSource = self;
        self.delegate = self;
        
        //        [self _createViews];
        
        UINib *nib = [UINib nibWithNibName:@"NearByViewCell" bundle:[NSBundle mainBundle]];
        [self registerNib:nib forCellReuseIdentifier:@"nearCell"];
        
    }
    return self;
}

- (void)_createViews {
    
    UIView *headView = [[UIView alloc] initWithFrame:CGRectMake(0, 40, kScreenWidth, 100)];
    headView.backgroundColor = [UIColor colorWithRed:239/255.0 green:239/255.0 blue:244/255.0 alpha:1];
    
    UILabel *locLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    locLabel.text = @"位置";
    locLabel.font = [UIFont systemFontOfSize:10.0f];
    [headView addSubview:locLabel];
    
    UIButton *refreshBtn = [[UIButton alloc] initWithFrame:CGRectMake(kScreenWidth - 20, 3, 14, 14)];
    [refreshBtn setImage:[UIImage imageNamed:@"icon_location_reload.png"] forState:UIControlStateNormal];
    [headView addSubview:refreshBtn];
    
    UILabel *shopLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, kScreenWidth, 20)];
    shopLabel.text = @"商场商圈";
    [headView addSubview:shopLabel];
    shopLabel.backgroundColor = [UIColor whiteColor];
    shopLabel.layer.borderColor = [UIColor lightGrayColor].CGColor;
    shopLabel.font = [UIFont systemFontOfSize:14.0f];
    shopLabel.layer.borderWidth = 1;
    
    _shopView = [[ShopCollectionView alloc] initWithFrame:CGRectMake(0, 40, kScreenWidth, 150)];
    [headView addSubview:_shopView];
    self.tableHeaderView = headView;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _dealsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NearByViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"nearCell" forIndexPath:indexPath];
    
    DealsModel *model = _dealsArray[indexPath.item];
    cell.model = model;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 80;
}

@end
