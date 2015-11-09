//
//  ShopCell.m
//  yyyXM3
//
//  Created by mac on 15/10/26.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "ShopCell.h"
#import "ShopModel.h"

@implementation ShopCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setMall:(ShopMall *)mall
{
    if (_mall != mall) {
        _mall = mall;
        
        [self setNeedsLayout];
    }
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    _nameLabel.text = _mall.name;
    
    _recLabel.text = _mall.recReason[0];
    
    _distanceLabel.text = _mall.distance;
    
    _subLabel.text = _mall.discount;
    
}

@end
