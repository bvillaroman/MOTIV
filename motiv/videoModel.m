//
//  videoModel.m
//  motiv
//
//  Created by abraham villaroman on 1/14/16.
//  Copyright © 2016 abraham villaroman. All rights reserved.
//

#import "videoModel.h"
#import "Video.h"
#import "AFNetworking/AFNetworking.h"

@implementation videoModel


//creates an array of videos
-(NSMutableArray*)getVideos{
    
    //initializes the array called videos
    NSMutableArray *videos = [[NSMutableArray alloc] initWithCapacity:0];
    
    //create a video object
    Video *video1 = [Video new];
    Video *video2 = [Video new];
    Video *video3 = [Video new];
    Video *video4 = [Video new];
    Video *video5 = [Video new];
    Video *video6 = [Video new];
    Video *video7 = [Video new];
    Video *video8 = [Video new];
    Video *video9 = [Video new];
    Video *video11 = [Video new];
    Video *video12 = [Video new];
    Video *video13 = [Video new];
    Video *video15 = [Video new];
    Video *video16 = [Video new];
    Video *video18 = [Video new];
    Video *video19 = [Video new];
    Video *video20 = [Video new];
    Video *video21 = [Video new];
    Video *video22 = [Video new];
    Video *video24 = [Video new];
    
    //assign its properties
    [video1 setVideoID:[NSString stringWithFormat:@"%s","HgAUBzVUGk0"]];
    [video1 setVideoTitle:[NSString stringWithFormat:@"%s","THE LAW OF THE GYM"]];
    [video1 setVideoQuote:[NSString stringWithFormat:@"%s","\"No pain, no gain\""]];
    [video1 setQuoteAuthor:[NSString stringWithFormat:@"-%s","Arnlod Schwarzenegger"]];
    [video1 setVideoTime:[NSString stringWithFormat:@"%s","2:52"]];


    [video2 setVideoID:[NSString stringWithFormat:@"%s","wD2cVhC-63I"]];
    [video2 setVideoTitle:[NSString stringWithFormat:@"%s","WHO'S YOUR HERO?"]];
    [video2 setVideoQuote:[NSString stringWithFormat:@"%s","\" I'm never gonna beat my hero. I'm not going to obtain that. I know I'm not, and that's just fine with me, because that keeps me with somebody to keep on chasing.\""]];
    [video2 setQuoteAuthor:[NSString stringWithFormat:@"-%s","Matthew McConaughey"]];
    [video2 setVideoTime:[NSString stringWithFormat:@"%s","1:03"]];
    [video2 setStartTime:[NSString stringWithFormat:@"Start at %s","3:27"]];


    [video3 setVideoID:[NSString stringWithFormat:@"%s","X7ymriMhoj0"]];
    [video3 setVideoTitle:[NSString stringWithFormat:@"%s","KEEP SMILING"]];
    [video3 setVideoQuote:[NSString stringWithFormat:@"%s","\"Sometimes in life you're going to start slow, and that's alright.\""]];
    [video3 setQuoteAuthor:[NSString stringWithFormat:@"-%s","Apollos Hester"]];
    [video3 setVideoTime:[NSString stringWithFormat:@"%s","2:28"]];


    [video4 setVideoID:[NSString stringWithFormat:@"%s","CPQ1budJRIQ"]];
    [video4 setVideoTitle:[NSString stringWithFormat:@"%s","PROVE THEM WRONG"]];
    [video4 setVideoQuote:[NSString stringWithFormat:@"%s","\"The most powerful motivational speeches that I have ever heard came from people who told me I couldn't do something\""]];
    [video4 setQuoteAuthor:[NSString stringWithFormat:@"-%s","Les Brown"]];
    [video4 setVideoTime:[NSString stringWithFormat:@"%s","6:59"]];


    [video5 setVideoID:[NSString stringWithFormat:@"%s","M88uMRwsj0U"]];
    [video5 setVideoTitle:[NSString stringWithFormat:@"%s","WHO ARE YOU?"]];
    [video5 setVideoQuote:[NSString stringWithFormat:@"%s","\"We are who we choose to be.\""]];
    [video5 setQuoteAuthor:[NSString stringWithFormat:@"-%s","Will Smith"]];
    [video5 setVideoTime:[NSString stringWithFormat:@"%s","6:22"]];


    [video6 setVideoID:[NSString stringWithFormat:@"%s","ZexvTZ1sV8U"]];
    [video6 setVideoTitle:[NSString stringWithFormat:@"%s","TIME AND PRODUCTIVITY"]];
    [video6 setVideoQuote:[NSString stringWithFormat:@"%s","\"Free time is the enemy of progress, because free time sitting around is not doing\""]];
    [video6 setQuoteAuthor:[NSString stringWithFormat:@"-%s","Casey Neistat"]];
    [video6 setVideoTime:[NSString stringWithFormat:@"%s","5:16"]];
    [video6 setStartTime:[NSString stringWithFormat:@"Start at %s","2:10"]];


    [video7 setVideoID:[NSString stringWithFormat:@"%s","AjZ0KbJcav0"]];
    [video7 setVideoTitle:[NSString stringWithFormat:@"%s","BELIEVE IN YOURSELF"]];
    [video7 setVideoQuote:[NSString stringWithFormat:@"%s","\"Being successful in life is all about having the proper believe system and who you are,truly believing that you are something unique,that you are something special in that field\""]];
    [video7 setQuoteAuthor:[NSString stringWithFormat:@"-%s","Jaret Grossman"]];
    [video7 setVideoTime:[NSString stringWithFormat:@"%s","4:09"]];


    [video8 setVideoID:[NSString stringWithFormat:@"%s","7WgnfPLrREI"]];
    [video8 setVideoTitle:[NSString stringWithFormat:@"%s","DO IT"]];
    [video8 setVideoQuote:[NSString stringWithFormat:@"%s","\"Just do it\""]];
    [video8 setQuoteAuthor:[NSString stringWithFormat:@"-%s","Shia LaBeouf"]];
    [video8 setVideoTime:[NSString stringWithFormat:@"%s","1:04"]];

    [video9 setVideoID:[NSString stringWithFormat:@"%s","UMCfU48vVws"]];
    [video9 setVideoTitle:[NSString stringWithFormat:@"%s","CREATE"]];
    [video9 setVideoQuote:[NSString stringWithFormat:@"%s","\"Things that we create are pieces of us,they're parts of who we are and then they exist hopefully forever,or at least longer than I will be able to physically.\""]];
    [video9 setQuoteAuthor:[NSString stringWithFormat:@"-%s","Jake Roper"]];
    [video9 setVideoTime:[NSString stringWithFormat:@"%s","5:22"]];

    [video11 setVideoID:[NSString stringWithFormat:@"%s","PQleT6BtCbE"]];
    [video11 setVideoTitle:[NSString stringWithFormat:@"%s","RICH"]];
    [video11 setVideoQuote:[NSString stringWithFormat:@"%s","\"I want you to deal with your problems by becoming rich !\""]];
    [video11 setQuoteAuthor:[NSString stringWithFormat:@"-%s","Jordan Belfort"]];
    [video11 setVideoTime:[NSString stringWithFormat:@"%s","3:33"]];


    [video12 setVideoID:[NSString stringWithFormat:@"%s","LiJ7VGkANs4"]];
    [video12 setVideoTitle:[NSString stringWithFormat:@"%s","DREAMS AND GOALS"]];
    [video12 setVideoQuote:[NSString stringWithFormat:@"%s","\"Dreams without goals are just dreams.\""]];
    [video12 setQuoteAuthor:[NSString stringWithFormat:@"-%s","Denzel Washington"]];
    [video12 setVideoTime:[NSString stringWithFormat:@"%s","4:08"]];


    [video13 setVideoID:[NSString stringWithFormat:@"%s","mjJF1q8nbtM"]];
    [video13 setVideoTitle:[NSString stringWithFormat:@"%s","BE AMAZING"]];
    [video13 setVideoQuote:[NSString stringWithFormat:@"%s","\"Work pays\""]];
    [video13 setQuoteAuthor:[NSString stringWithFormat:@"-%s","Rich Piana"]];
    [video13 setVideoTime:[NSString stringWithFormat:@"%s","5:02"]];

    
    [video15 setVideoID:[NSString stringWithFormat:@"%s","3GasdhXLXYA"]];
    [video15 setVideoTitle:[NSString stringWithFormat:@"%s","ANOTHER ONE"]];
    [video15 setVideoQuote:[NSString stringWithFormat:@"%s","\"And another one.\""]];
    [video15 setQuoteAuthor:[NSString stringWithFormat:@"-%s","Khaled Mohamed Khaled"]];
    [video15 setVideoTime:[NSString stringWithFormat:@"%s","1:37"]];


    [video16 setVideoID:[NSString stringWithFormat:@"%s","lsSC2vx7zFQ"]];
    [video16 setVideoTitle:[NSString stringWithFormat:@"%s","HOW BAD DO YOU WANT IT ?"]];
    [video16 setVideoQuote:[NSString stringWithFormat:@"%s","\"When you want to succeed as bad as you want to breathe, then you'll be successful\""]];
    [video16 setQuoteAuthor:[NSString stringWithFormat:@"-%s","Eric Thomas"]];
    [video16 setVideoTime:[NSString stringWithFormat:@"%s","5:50"]];


    [video18 setVideoID:[NSString stringWithFormat:@"%s","PAs867sz9oE"]];
    [video18 setVideoTitle:[NSString stringWithFormat:@"%s","DEATH"]];
    [video18 setVideoQuote:[NSString stringWithFormat:@"%s","\"Remembering that you are going to die is the best way I know to avoid the trap of thinking you have something to lose.\""]];
    [video18 setQuoteAuthor:[NSString stringWithFormat:@"-%s","Steve Jobs"]];
    [video18 setVideoTime:[NSString stringWithFormat:@"%s","4:13"]];


    
    [video19 setVideoID:[NSString stringWithFormat:@"%s","PjP9r-HU4fk"]];
    [video19 setVideoTitle:[NSString stringWithFormat:@"%s","NEVER GIVE UP"]];
    [video19 setVideoQuote:[NSString stringWithFormat:@"%s","\"If I fail and I give up, will I ever get back up? No.\""]];
    [video19 setQuoteAuthor:[NSString stringWithFormat:@"-%s","Nick Vujicic"]];
    [video19 setVideoTime:[NSString stringWithFormat:@"%s","5:00"]];
     

    [video20 setVideoID:[NSString stringWithFormat:@"%s","fviFNrWKzZ8"]];
    [video20 setVideoTitle:[NSString stringWithFormat:@"%s","MINDSHIFT"]];
    [video20 setVideoQuote:[NSString stringWithFormat:@"%s","\"People are rewarded in public for what they practice for years in private\""]];
    [video20 setQuoteAuthor:[NSString stringWithFormat:@"-%s","Tony Robbins"]];
    [video20 setVideoTime:[NSString stringWithFormat:@"%s","5:14"]];

    [video21 setVideoID:[NSString stringWithFormat:@"%s","TsPtZ8IA4Bc"]];
    [video21 setVideoTitle:[NSString stringWithFormat:@"%s","NOBODY"]];
    [video21 setVideoQuote:[NSString stringWithFormat:@"%s","\"Dont ever let somebody tell you, you can't do something, not even me.\""]];
    [video21 setQuoteAuthor:[NSString stringWithFormat:@"-%s","Christopher Gardner"]];
    [video21 setVideoTime:[NSString stringWithFormat:@"%s","1:07"]];
    
    [video22 setVideoID:[NSString stringWithFormat:@"%s","c4mWhRwTp5U"]];
    [video22 setVideoTitle:[NSString stringWithFormat:@"%s","STRENGTH"]];
    [video22 setVideoQuote:[NSString stringWithFormat:@"%s","\"If your life is just smooth and there is no discomfort at all,you become very fragile.\""]];
    [video22 setQuoteAuthor:[NSString stringWithFormat:@"-%s","Julien Blanc"]];
    [video22 setVideoTime:[NSString stringWithFormat:@"%s",""]];

    
    [video24 setVideoID:[NSString stringWithFormat:@"%s","vDW6WfoC3Xc"]];
    [video24 setVideoTitle:[NSString stringWithFormat:@"%s","FIRST PLACE"]];
    [video24 setVideoQuote:[NSString stringWithFormat:@"%s","\"Moral of the story, come in first.\""]];
    [video24 setQuoteAuthor:[NSString stringWithFormat:@"-%s","John Damon"]];
    [video24 setVideoTime:[NSString stringWithFormat:@"%s","1:56"]];
    
    /*
    [video setVideoID:[NSString stringWithFormat:@"%s",""]];
    [video setVideoTitle:[NSString stringWithFormat:@"%s",""]];
    [video setVideoQuote:[NSString stringWithFormat:@"%s","\"\""]];
    [video setQuoteAuthor:[NSString stringWithFormat:@"-%s",""]];
    [video setVideoTime:[NSString stringWithFormat:@"%s",""]];
    [video setStartTime:[NSString stringWithFormat:@"Start at %s",""]];
    */
     //append it to the video array
    [videos addObject:video1];
    [videos addObject:video2];
    [videos addObject:video3];
    [videos addObject:video4];
    [videos addObject:video5];
    [videos addObject:video6];
    [videos addObject:video7];
    [videos addObject:video8];
    [videos addObject:video9];
    [videos addObject:video11];
    [videos addObject:video12];
    [videos addObject:video13];
    [videos addObject:video15];
    [videos addObject:video16];
    [videos addObject:video18];
    [videos addObject:video19];
    [videos addObject:video20];
    [videos addObject:video21];
    [videos addObject:video22];
    [videos addObject:video24];
    return videos;
}

@end
