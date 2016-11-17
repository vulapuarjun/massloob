//
//  Common.h
//  Cavaratmall
//
//  Created by Amit Kulkarni on 12/07/15.
//  Copyright (c) 2015 iMagicsoftware. All rights reserved.
//

#ifndef Cavaratmall_Common_h
#define Cavaratmall_Common_h

#import "AppDelegate.h"
#import "MCLocalization.h"

#define KEY_LANGUAGE_EN @"en"
#define KEY_LANGUAGE_AR @"ar"
#define THEME_COLOR [self colorWithHexString:@"#21a6e0"];

#define Localized(string) [MCLocalization stringForKey:string]

#define APP_DELEGATE (AppDelegate *) [[UIApplication sharedApplication] delegate]

#define SERVER_URL @"http://clients.yellowsoft.in/lawyers/api"

#define USER_SIGNUP @"add-member.php"
#define EDIT_MEMBER @"edit-member.php"
#define EDIT_LAWYER @"edit-lawyer.php"
#define LIKE_STATUS @"like-status.php"
#define LIKE @"like.php"
#define UNLIKE @"unlike.php"
#define FOLLOW @"lawyer-follow.php"
#define UNFOLLOW @"lawyer-unfollow.php"
#define FOLLOW_STATUS @"follow-status.php"



#define CHAT_API @"chats.php"
#define ADD_CHAT @"add-chat.php"
#define LAWYER_SIGNUP @"add-lawyer.php"
#define CHANGE_PASSWORD @"change-password.php"
#define USER_LOGIN @"login.php"
#define INFORMATION @"info.php"

#define MEMBER_STATUS @"add-member-status.php"
#define GET_MEMBER_STATUS @"member-status.php"
#define PACKAGES_API @"packages.php"
#define LAWYERS_API @"lawyers-list.php"
#define LAWYER_PAYMENT @"verify-lawyer.php"
#define PAGE_WORDS @"words-json.php"
#define PAGE_GET_AREA @"areas.php"
#define CREATE_POST @"add-post.php"
#define PAGE_TIMELINE @"posts.php"
#define BOOKS @"books.php"
#define MEMBER_DETAILS @"members.php"
#define LAWYER_DETAILS @"lawyer.php"
#define MYCHAT_API @"member-chats.php"

#define PAGE_ADD_RATING @"add-rating.php"

#define PAGE_PAYMENT @"http://clients.yellowsoft.in/lawyers/Tap.php"

#define SYSTEM_VERSION_GREATER_THAN(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)

#endif
