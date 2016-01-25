//
//  videoModel.h
//  motiv
//
//  Created by abraham villaroman on 1/14/16.
//  Copyright © 2016 abraham villaroman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface videoModel : NSObject

@property (weak,nonatomic) NSDictionary *YoutubeJSON;
@property (weak,nonatomic) NSMutableArray *YoutubeArray;
@property(weak,nonatomic) id responseObject;
-(NSMutableArray*)getVideos;

@end
