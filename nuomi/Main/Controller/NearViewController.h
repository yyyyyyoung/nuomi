//
//  NearViewController.h
//  yyyXM3
//
//  Created by mac on 15/10/26.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "BaseViewController.h"
#import <CoreLocation/CoreLocation.h>

@interface NearViewController : BaseViewController<CLLocationManagerDelegate>
{
    CLLocationManager *_locationManager;
}
@end
