.class public Lcom/android/settings/motion2013/AirMotionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AirMotionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isGoIntoQuideHub:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

.field private mAirMotionIndicatorAnimation:[I

.field private mAirMotionObserver:Landroid/database/ContentObserver;

.field private mAirMove:Landroid/preference/SwitchPreferenceScreen;

.field private mAirPin:Landroid/preference/SwitchPreferenceScreen;

.field private mAirScroll:Landroid/preference/SwitchPreferenceScreen;

.field private mAirTurn:Landroid/preference/SwitchPreferenceScreen;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field protected mSwitchUncheckHandler:Landroid/os/Handler;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 76
    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 78
    iput-boolean v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->isGoIntoQuideHub:Z

    .line 82
    iput v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationIndex:I

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMotionIndicatorAnimation:[I

    .line 84
    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 86
    new-instance v0, Lcom/android/settings/motion2013/AirMotionSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion2013/AirMotionSettings$1;-><init>(Lcom/android/settings/motion2013/AirMotionSettings;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/android/settings/motion2013/AirMotionSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/motion2013/AirMotionSettings$2;-><init>(Lcom/android/settings/motion2013/AirMotionSettings;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mSwitchUncheckHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Lcom/android/settings/motion2013/AirMotionSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/AirMotionSettings$3;-><init>(Lcom/android/settings/motion2013/AirMotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMotionObserver:Landroid/database/ContentObserver;

    return-void

    .line 83
    :array_0
    .array-data 4
        0x7f020462
        0x7f020463
        0x7f020464
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/AirMotionSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/motion2013/AirMotionSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/AirMotionSettings;->showGuideDialog(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/motion2013/AirMotionSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->stopAnimation()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/motion2013/AirMotionSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirScrollChanged(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/motion2013/AirMotionSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirBrowseChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/motion2013/AirMotionSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private broadcastAirBrowseChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 585
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 587
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 588
    return-void
.end method

.method private broadcastAirCallAcceptChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 603
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_CALL_ACCEPT_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 605
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 606
    return-void
.end method

.method private broadcastAirMotionChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 573
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 576
    return-void
.end method

.method private broadcastAirMoveChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 591
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_MOVE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 592
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 593
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 594
    return-void
.end method

.method private broadcastAirPinChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 597
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_PIN_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 598
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 599
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 600
    return-void
.end method

.method private broadcastAirScrollChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 579
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 581
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 582
    return-void
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 480
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 482
    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 487
    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 491
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 492
    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 494
    :cond_2
    return-void
.end method

.method private isAllAirScrollOptionDisabled()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 541
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 543
    iget-object v8, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_all_list"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 544
    .local v1, "alllist":I
    iget-object v8, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_web_page"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 545
    .local v5, "webpage":I
    iget-object v8, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_contact_list"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 546
    .local v2, "contactlist":I
    iget-object v8, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_email_list"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 547
    .local v4, "emaillist":I
    iget-object v8, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_album_and_photo"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 548
    .local v0, "albumandphoto":I
    iget-object v8, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_email_body"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 550
    .local v3, "emailbody":I
    or-int v8, v1, v5

    or-int/2addr v8, v2

    or-int/2addr v8, v4

    or-int/2addr v8, v0

    or-int/2addr v8, v3

    if-ge v8, v6, :cond_0

    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method private isAllAirTurnOptionDisabled()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 554
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 556
    iget-object v7, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_single_photo_view"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 557
    .local v4, "singlephotoview":I
    iget-object v7, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_internet_window"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 558
    .local v1, "internetwindow":I
    iget-object v7, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_now_playing_on_music"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 559
    .local v3, "nowplayingmusic":I
    iget-object v7, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_bgm_on_lock_screen"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 560
    .local v0, "bgmonlockscreen":I
    iget-object v7, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_note_page_view"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 562
    .local v2, "notepageview":I
    or-int v7, v4, v1

    or-int/2addr v7, v3

    or-int/2addr v7, v0

    or-int/2addr v7, v2

    if-ge v7, v5, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method private sendGlanceViewCheck(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 566
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.GlanceViewChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "GlanceViewState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 568
    const-string v1, "AirMotionSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlanceViewState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 570
    return-void
.end method

.method private showAllOptionDisabledDialog(IILjava/lang/String;)V
    .locals 4
    .param p1, "title_res_id"    # I
    .param p2, "message_res_id"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->dismissAllDialog()V

    .line 456
    move-object v0, p3

    .line 457
    .local v0, "motion_type":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/motion2013/AirMotionSettings$9;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/motion2013/AirMotionSettings$9;-><init>(Lcom/android/settings/motion2013/AirMotionSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 476
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 477
    return-void
.end method

.method private showGuideDialog(Z)V
    .locals 19
    .param p1, "showagain_checkbox_flag"    # Z

    .prologue
    .line 382
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->dismissAllDialog()V

    .line 385
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v1, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 387
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 388
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x7f040064

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 389
    .local v5, "layout":Landroid/view/View;
    const v14, 0x7f0b004f

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 390
    .local v6, "message":Landroid/widget/TextView;
    const v14, 0x7f0b0107

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 391
    .local v3, "image":Landroid/widget/ImageView;
    const v14, 0x7f0b0105

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 392
    .local v2, "checkbox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 393
    if-eqz p1, :cond_0

    .line 394
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 396
    :cond_0
    const v14, 0x7f020464

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 399
    .local v12, "res":Landroid/content/res/Resources;
    const v14, 0x7f090c92

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 400
    .local v9, "part1":Ljava/lang/String;
    const-string v14, "."

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 401
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 405
    :goto_0
    const v14, 0x7f0e0005

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 406
    .local v11, "proper_distance":I
    const v14, 0x7f090c94

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 407
    .local v10, "part3":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    .line 408
    .local v13, "salesCode":Ljava/lang/String;
    const-string v14, "ATT"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "SPR"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "VZW"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "TMB"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "USC"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "CRI"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "VMU"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "BST"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "XAS"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "TFN"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "XAR"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "CSP"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 411
    :cond_1
    const v14, 0x7f0e0006

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 412
    const v14, 0x7f090c95

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 414
    :cond_2
    const-string v14, "."

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 415
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 419
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f090c93

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 420
    .local v8, "original_str":Ljava/lang/String;
    const-string v14, "ja"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget-object v15, v15, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 421
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f090c92

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f090c94

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f090c93

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 425
    :cond_3
    const v14, 0x7f02001e

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v8, v14}, Lcom/android/settings/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v7

    .line 426
    .local v7, "message_str":Landroid/text/SpannableString;
    if-eqz v7, :cond_6

    .line 427
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    :goto_2
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 432
    const v14, 0x7f090c90

    invoke-virtual {v1, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 433
    const v14, 0x7f0906b3

    new-instance v15, Lcom/android/settings/motion2013/AirMotionSettings$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Lcom/android/settings/motion2013/AirMotionSettings$7;-><init>(Lcom/android/settings/motion2013/AirMotionSettings;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v1, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 443
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 444
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    .line 445
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/android/settings/motion2013/AirMotionSettings$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/motion2013/AirMotionSettings$8;-><init>(Lcom/android/settings/motion2013/AirMotionSettings;)V

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 451
    return-void

    .line 403
    .end local v7    # "message_str":Landroid/text/SpannableString;
    .end local v8    # "original_str":Ljava/lang/String;
    .end local v10    # "part3":Ljava/lang/String;
    .end local v11    # "proper_distance":I
    .end local v13    # "salesCode":Ljava/lang/String;
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 417
    .restart local v10    # "part3":Ljava/lang/String;
    .restart local v11    # "proper_distance":I
    .restart local v13    # "salesCode":Ljava/lang/String;
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 429
    .restart local v7    # "message_str":Landroid/text/SpannableString;
    .restart local v8    # "original_str":Ljava/lang/String;
    :cond_6
    const v14, 0x7f090c91

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private showTalkBackDisableDialog()V
    .locals 3

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->dismissAllDialog()V

    .line 340
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090c79

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090c78

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2013/AirMotionSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/AirMotionSettings$5;-><init>(Lcom/android/settings/motion2013/AirMotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/motion2013/AirMotionSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/AirMotionSettings$4;-><init>(Lcom/android/settings/motion2013/AirMotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 371
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 373
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion2013/AirMotionSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/AirMotionSettings$6;-><init>(Lcom/android/settings/motion2013/AirMotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 380
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 510
    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMotionIndicatorAnimation:[I

    iget v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 515
    iget v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationIndex:I

    .line 516
    iget v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMotionIndicatorAnimation:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationIndex:I

    .line 517
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->stopAnimation()V

    goto :goto_0
.end method


# virtual methods
.method public isAllAirMotionDisabled()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 527
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 528
    iget-object v8, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_glance_view"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 529
    .local v5, "quickGlance":I
    iget-object v8, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 530
    .local v2, "airScroll":I
    iget-object v8, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_turn"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 531
    .local v3, "airTurn":I
    iget-object v8, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_item_move"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 532
    .local v0, "airMove":I
    const/4 v1, 0x0

    .line 534
    .local v1, "airPin":I
    iget-object v8, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_call_accept"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 536
    .local v4, "callAccept":I
    or-int v8, v5, v2

    or-int/2addr v8, v3

    or-int/2addr v8, v0

    or-int/2addr v8, v1

    or-int/2addr v8, v4

    if-ge v8, v6, :cond_0

    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 315
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->showTalkBackDisableDialog()V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_motion_engine"

    if-eqz p2, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirMotionChanged(Z)V

    .line 321
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 322
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 323
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 324
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 325
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 326
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 328
    if-eqz p2, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 330
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "pref_air_motion_sensor_noti"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 331
    .local v0, "do_not_show_again":Z
    if-nez v0, :cond_0

    .line 332
    invoke-direct {p0, v3}, Lcom/android/settings/motion2013/AirMotionSettings;->showGuideDialog(Z)V

    goto :goto_0

    .end local v0    # "do_not_show_again":Z
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_2
    move v2, v4

    .line 318
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x10

    const/4 v11, 0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 118
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0, v11}, Lcom/android/settings/motion2013/AirMotionSettings;->setHasOptionsMenu(Z)V

    .line 121
    const v5, 0x7f07000a

    invoke-virtual {p0, v5}, Lcom/android/settings/motion2013/AirMotionSettings;->addPreferencesFromResource(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    .line 124
    new-instance v5, Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 125
    iget-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    instance-of v5, v5, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_0

    .line 126
    iget-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 128
    .local v1, "padding":I
    iget-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v9, v9, v1, v9}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 129
    iget-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 131
    iget-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v10, v10, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 135
    iget-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarLayout:Landroid/view/View;

    .line 138
    .end local v1    # "padding":I
    :cond_0
    const-string v5, "quick_glance"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    .line 139
    const-string v5, "air_scroll"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    .line 140
    const-string v5, "air_turn"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    .line 141
    const-string v5, "air_move"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    .line 142
    const-string v5, "air_pin"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    .line 143
    const-string v5, "air_call_accept"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    .line 145
    iget-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 146
    iget-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    iget-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    iget-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    iget-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 150
    iget-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "salesCode":Ljava/lang/String;
    const-string v5, "ATT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "SPR"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "VZW"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "TMB"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "USC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 154
    :cond_1
    iget-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    const v6, 0x7f090c87

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 158
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 159
    .local v2, "ps":Landroid/preference/PreferenceScreen;
    iget-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 163
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "pref_air_motion_sensor_noti"

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 164
    .local v0, "do_not_show_again":Z
    if-nez v0, :cond_3

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->isAllAirMotionDisabled()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_engine"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    .line 166
    invoke-direct {p0, v11}, Lcom/android/settings/motion2013/AirMotionSettings;->showGuideDialog(Z)V

    .line 169
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 291
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x1

    const v1, 0x7f090a3a

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201aa

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 297
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 301
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 308
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 303
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "air_gesture"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 306
    const/4 v1, 0x1

    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 205
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->stopAnimation()V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 207
    iget-boolean v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->isGoIntoQuideHub:Z

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->isAllAirMotionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090c77

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirMotionChanged(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 215
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const v6, 0x7f090c3f

    const v5, 0x7f090c07

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 226
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    move-object v2, p2

    .line 227
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v3

    .line 228
    .local v1, "value":I
    :goto_0
    const-string v2, "quick_glance"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_glance_view"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/AirMotionSettings;->sendGlanceViewCheck(Z)V

    .line 269
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->isAllAirMotionDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_engine"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 271
    invoke-direct {p0, v4}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirMotionChanged(Z)V

    .line 272
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 274
    :cond_1
    :goto_2
    return v3

    .end local v1    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    move v1, v4

    .line 227
    goto :goto_0

    .line 231
    .restart local v1    # "value":I
    :cond_3
    const-string v2, "air_scroll"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, p2

    .line 232
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 233
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->isAllAirScrollOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 234
    invoke-direct {p0, v6, v5, v0}, Lcom/android/settings/motion2013/AirMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    goto :goto_2

    .line 237
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_scroll"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirScrollChanged(Z)V

    goto :goto_1

    .line 241
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_scroll"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirScrollChanged(Z)V

    goto :goto_1

    .line 244
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_6
    const-string v2, "air_turn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v2, p2

    .line 245
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 246
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->isAllAirTurnOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 247
    invoke-direct {p0, v6, v5, v0}, Lcom/android/settings/motion2013/AirMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    goto :goto_2

    .line 250
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_turn"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirBrowseChanged(Z)V

    goto/16 :goto_1

    .line 254
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_turn"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirBrowseChanged(Z)V

    goto/16 :goto_1

    .line 258
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_9
    const-string v2, "air_move"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_item_move"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirMoveChanged(Z)V

    goto/16 :goto_1

    .line 261
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_a
    const-string v2, "air_pin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_clip"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirPinChanged(Z)V

    goto/16 :goto_1

    .line 264
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_b
    const-string v2, "air_call_accept"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_call_accept"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 266
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirCallAcceptChanged(Z)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 279
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "key":Ljava/lang/String;
    const-string v2, "air_motion_indicator"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/AirMotionSettings;->showGuideDialog(Z)V

    .line 286
    :goto_0
    return v1

    .line 284
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->isGoIntoQuideHub:Z

    .line 286
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 172
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 173
    iput-boolean v3, p0, Lcom/android/settings/motion2013/AirMotionSettings;->isGoIntoQuideHub:Z

    .line 175
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->updateAnimation()V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 182
    iget-object v4, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_glance_view"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 183
    iget-object v4, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_scroll"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 184
    iget-object v4, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 185
    iget-object v4, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_item_move"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 186
    iget-object v4, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_clip"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 187
    iget-object v4, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_call_accept"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 189
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_engine"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    move v0, v2

    .line 190
    .local v0, "airMotionEngineState":Z
    :goto_6
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 191
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 192
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 193
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 194
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 195
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 196
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 197
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 199
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "air_motion_engine"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 200
    return-void

    .end local v0    # "airMotionEngineState":Z
    :cond_1
    move v1, v3

    .line 182
    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 183
    goto/16 :goto_1

    :cond_3
    move v1, v3

    .line 184
    goto :goto_2

    :cond_4
    move v1, v3

    .line 185
    goto :goto_3

    :cond_5
    move v1, v3

    .line 186
    goto :goto_4

    :cond_6
    move v1, v3

    .line 187
    goto :goto_5

    :cond_7
    move v0, v3

    .line 189
    goto :goto_6
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 220
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :cond_0
    return-void
.end method
