//
//  Video.h
//  motiv
//
//  Created by abraham villaroman on 1/14/16.
//  Copyright © 2016 abraham villaroman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Video : NSObject


@property(weak,nonatomic) NSString *videoID;
@property(weak,nonatomic) NSString *videoTitle;
@property(weak,nonatomic) NSString *videoQuote;
@property(weak,nonatomic) NSString *quoteAuthor;
@property(weak,nonatomic) NSString *startTime;
@property(weak,nonatomic) NSString *videoTime;

@end
