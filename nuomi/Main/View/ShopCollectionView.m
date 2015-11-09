//
//  ShopCollectionView.m
//  yyyXM3
//
//  Created by mac on 15/10/26.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "ShopCollectionView.h"
#import "Commen.h"
#import "ShopCell.h"

@implementation ShopCollectionView

- (instancetype)initWithFrame:(CGRect)frame
{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    //单元格大小
    layout.itemSize = CGSizeMake(kScreenWidth / 3 - 5, 150);
    //水平间距大小
    layout.minimumInteritemSpacing = 0;
    //竖直水平间距
    layout.minimumLineSpacing = 0;
    //设置四周间距
    layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
    
    self = [super initWithFrame:frame collectionViewLayout:layout];
    if (self) {
        
        self.dataSource = self;
        self.delegate = self;
        
        self.backgroundColor = [UIColor clearColor];
        
        UINib *nib = [UINib nibWithNibName:@"ShopCell" bundle:[NSBundle mainBundle]];
        [self registerNib:nib forCellWithReuseIdentifier:@"ShopCell"];
        
    }
    return self;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _shopMallArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ShopCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ShopCell" forIndexPath:indexPath];
    
    ShopMall *mall = _shopMallArray[indexPath.item];
    cell.mall = mall;
    
    NSString *imageName = [NSString stringWithFormat:@"mall%li",indexPath.item+1];
    cell.image.image = [UIImage imageNamed:imageName];
    
    return cell;
    
}


@end
