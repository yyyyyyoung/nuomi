//
//  NearByViewCell.h
//  yyyXM3
//
//  Created by mac on 15/10/26.
//  Copyright © 2015年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DealsModel.h"

@interface NearByViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *nearImgView;
@property (weak, nonatomic) IBOutlet UILabel *nearDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *currentPriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *marketPriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *saleNumLabel;


@property(nonatomic,strong)DealsModel *model;

@end
