//
//  CustomSunriseSunsetTimePicker.h
//
//  Created by Arcus Team on 4/7/16.
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

#import <Foundation/Foundation.h>
#import "PickerDelegate.h"
#import "ArcusDateTime.h"

typedef NS_ENUM(NSInteger, SunsetSunriseType) {
    SunsetSunriseTypeBefore,
    SunsetSunriseTypeAfter
};

#define SunsetSunriseTypeList @[NSLocalizedString(@"mins before", nil).uppercaseString, NSLocalizedString(@"mins after", nil).uppercaseString]
#define SunsetSunriseTypeToString(enum) [SunsetSunriseTypeList objectAtIndex:enum]
#define stringToSunsetSunriseType(str) (SunsetSunriseType)[@[NSLocalizedString(@"mins before", nil).uppercaseString, NSLocalizedString(@"mins after", nil).uppercaseString indexOfObject:str]

@interface CustomSunriseSunsetTimePicker : UIControl <CustomTimePicker>

- (instancetype)initWithDateTime:(ArcusDateTime *)time;

@property (nonatomic, strong) ArcusDateTime *eventDateTime;

@end
