//
//  CareBehaviorScheduleSettingViewController.h
//  i2app
//
//  Created by Arcus Team on 3/1/16.
/*
 * Copyright 2019 Arcus Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
//

#import <UIKit/UIKit.h>
#import "CareTimeWindowModel.h"

typedef void (^CareScheduleSettingSaveCompletion)(CareTimeWindowModel *);
typedef void (^CareScheduleSettingRemoveCompletion)();

@interface CareBehaviorScheduleSettingViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (copy, nonatomic) CareScheduleSettingSaveCompletion saveCompletion;
@property (copy, nonatomic) CareScheduleSettingRemoveCompletion removeCompletion;

+ (CareBehaviorScheduleSettingViewController *)createWithTimeWindow:(CareTimeWindowModel *)timeWindow;

@end
