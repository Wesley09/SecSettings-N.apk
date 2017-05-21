.class public Lcom/android/settings/motion/MotionTutorialSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionTutorialSettings.java"


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationImage:[I

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mCurrentDB:Ljava/lang/String;

.field private mDoubleTap:Landroid/preference/Preference;

.field private mDoubleTapToGoTopAnimationImage:[I

.field private mGlanceView:Landroid/preference/Preference;

.field private mGlanceViewTutorialAnimationImage:[I

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mIsQuickAnimation:Z

.field private mIsTablet:Z

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mPalmSwipe:Landroid/preference/Preference;

.field private mPalmTouch:Landroid/preference/Preference;

.field private mPan:Landroid/preference/Preference;

.field private mPanToBrowseImage:Landroid/preference/Preference;

.field private mPanToBrowseImageAnimationImage:[I

.field private mPanToMoveIconAnimationImage:[I

.field private mPickUp:Landroid/preference/Preference;

.field private mPickUpToBeNotifiedAnimationImage:[I

.field private mPickUpToCallOut:Landroid/preference/Preference;

.field private mPickUpToCallOutAnimationImage:[I

.field private mShake:Landroid/preference/Preference;

.field private mShakeToUpdateAnimationImage:[I

.field private mSupportBrowser:Z

.field private mSurfacePalmSwipeAnimationImage:[I

.field private mSurfacePalmTouchAnimationImage:[I

.field private mSurfaceTapAndTwistAnimationImage:[I

.field private mTabletPanToBrowseImageAnimationImage:[I

.field private mTabletPanToMoveIconAnimationImage:[I

.field private mTapAndTwist:Landroid/preference/Preference;

.field private mTilt:Landroid/preference/Preference;

.field private mTiltToScrollList:Landroid/preference/Preference;

.field private mTiltToScrollListAnimationImage:[I

.field private mTiltToZoomAnimationImage:[I

.field private mTurnOver:Landroid/preference/Preference;

.field private mTurnOverToMuteAnimationImage:[I

.field private mTutorialContent:Ljava/lang/String;

.field private mTutorialTitle:Ljava/lang/String;

.field private mUnlockCameraShortCut:[I

.field private mUseRingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 85
    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 89
    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 90
    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 91
    iput v2, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    .line 92
    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 93
    iput-boolean v2, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsTablet:Z

    .line 94
    iput-boolean v2, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 97
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGlanceViewTutorialAnimationImage:[I

    .line 98
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTiltToZoomAnimationImage:[I

    .line 99
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTiltToScrollListAnimationImage:[I

    .line 100
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPanToMoveIconAnimationImage:[I

    .line 101
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPanToBrowseImageAnimationImage:[I

    .line 102
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mShakeToUpdateAnimationImage:[I

    .line 103
    new-array v0, v3, [I

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mDoubleTapToGoTopAnimationImage:[I

    .line 104
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUpToBeNotifiedAnimationImage:[I

    .line 105
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTurnOverToMuteAnimationImage:[I

    .line 106
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUpToCallOutAnimationImage:[I

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mUnlockCameraShortCut:[I

    .line 108
    new-array v0, v3, [I

    fill-array-data v0, :array_b

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTabletPanToMoveIconAnimationImage:[I

    .line 109
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTabletPanToBrowseImageAnimationImage:[I

    .line 112
    new-array v0, v4, [I

    fill-array-data v0, :array_d

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSurfacePalmSwipeAnimationImage:[I

    .line 113
    new-array v0, v1, [I

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSurfacePalmTouchAnimationImage:[I

    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f020577

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSurfaceTapAndTwistAnimationImage:[I

    .line 121
    new-instance v0, Lcom/android/settings/motion/MotionTutorialSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/MotionTutorialSettings$1;-><init>(Lcom/android/settings/motion/MotionTutorialSettings;)V

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    return-void

    .line 97
    :array_0
    .array-data 4
        0x7f02045c
        0x7f02045d
        0x7f02045e
        0x7f02045f
        0x7f020460
        0x7f020461
    .end array-data

    .line 98
    :array_1
    .array-data 4
        0x7f0202c9
        0x7f0202ca
        0x7f0202cb
    .end array-data

    .line 99
    :array_2
    .array-data 4
        0x7f0202e5
        0x7f0202e6
        0x7f0202e7
        0x7f0202e8
        0x7f0202e9
    .end array-data

    .line 100
    :array_3
    .array-data 4
        0x7f0202c5
        0x7f0202c6
        0x7f0202c7
        0x7f0202c8
    .end array-data

    .line 101
    :array_4
    .array-data 4
        0x7f0202b5
        0x7f0202b6
        0x7f0202b7
        0x7f0202b8
        0x7f0202b9
        0x7f0202ba
        0x7f0202bb
    .end array-data

    .line 102
    :array_5
    .array-data 4
        0x7f0202d4
        0x7f0202d5
        0x7f0202d4
        0x7f0202d5
    .end array-data

    .line 103
    :array_6
    .array-data 4
        0x7f0202be
        0x7f0202bf
        0x7f0202be
        0x7f0202bf
    .end array-data

    .line 104
    :array_7
    .array-data 4
        0x7f0202cf
        0x7f0202d0
        0x7f0202d1
    .end array-data

    .line 105
    :array_8
    .array-data 4
        0x7f0202ee
        0x7f0202ef
        0x7f0202f0
    .end array-data

    .line 106
    :array_9
    .array-data 4
        0x7f0202c2
        0x7f0202c3
        0x7f0202c4
    .end array-data

    .line 107
    :array_a
    .array-data 4
        0x7f0202d2
        0x7f0202d3
    .end array-data

    .line 108
    :array_b
    .array-data 4
        0x7f0202e0
        0x7f0202e1
        0x7f0202e2
        0x7f0202e3
    .end array-data

    .line 109
    :array_c
    .array-data 4
        0x7f0202d8
        0x7f0202d9
        0x7f0202da
        0x7f0202db
        0x7f0202dc
        0x7f0202dd
        0x7f0202de
        0x7f0202df
    .end array-data

    .line 112
    :array_d
    .array-data 4
        0x7f02032a
        0x7f02032c
        0x7f02032e
        0x7f020330
        0x7f020332
    .end array-data

    .line 113
    :array_e
    .array-data 4
        0x7f020333
        0x7f020334
        0x7f020335
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/motion/MotionTutorialSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion/MotionTutorialSettings;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion/MotionTutorialSettings;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/motion/MotionTutorialSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion/MotionTutorialSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/motion/MotionTutorialSettings;->startTryActually(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/motion/MotionTutorialSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion/MotionTutorialSettings;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion/MotionTutorialSettings;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion/MotionTutorialSettings;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion/MotionTutorialSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion/MotionTutorialSettings;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->startTryActually()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion/MotionTutorialSettings;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/motion/MotionTutorialSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion/MotionTutorialSettings;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showMotionDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion/MotionTutorialSettings;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/motion/MotionTutorialSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion/MotionTutorialSettings;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->stopAnimation()V

    return-void
.end method

.method private showMotionDialog()V
    .locals 4

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->allDialogDismiss()V

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090c44

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090c43

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090c42

    new-instance v3, Lcom/android/settings/motion/MotionTutorialSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/motion/MotionTutorialSettings$2;-><init>(Lcom/android/settings/motion/MotionTutorialSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090143

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 387
    iget-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/motion/MotionTutorialSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionTutorialSettings$3;-><init>(Lcom/android/settings/motion/MotionTutorialSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 393
    return-void
.end method

.method private showUseRingDialog()V
    .locals 3

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->allDialogDismiss()V

    .line 435
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090c40

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090c3f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0906b3

    new-instance v2, Lcom/android/settings/motion/MotionTutorialSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionTutorialSettings$7;-><init>(Lcom/android/settings/motion/MotionTutorialSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090c41

    new-instance v2, Lcom/android/settings/motion/MotionTutorialSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionTutorialSettings$6;-><init>(Lcom/android/settings/motion/MotionTutorialSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 450
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    const-string v0, "MotionTutorialSettings"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 591
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    .line 592
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->updateAnimation()V

    goto :goto_0
.end method

.method private startTryActually()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/16 v3, 0xa

    .line 454
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_zooming"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const-string v1, "MotionTest"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_tilt_to_list_scrolling"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 461
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 462
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 463
    const-string v1, "com.android.jcontacts"

    const-string v2, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 465
    :cond_2
    const-string v1, "com.android.contacts"

    const-string v2, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 468
    :cond_3
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_panning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 469
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 470
    const-string v1, "com.sec.android.motions.settings.panningtutorial"

    const-string v2, "com.sec.android.motions.settings.panningtutorial.PanningTryActually"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 472
    :cond_4
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_pan_to_browse_image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 473
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string v1, "MotionTest"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 478
    :cond_5
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_zooming"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 486
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 487
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.motion.ShakeTutorial"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 489
    :cond_6
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_shake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 497
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 498
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.motion.ShakeTutorial"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 500
    :cond_7
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_double_tap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 501
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 502
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 503
    const-string v1, "com.android.jcontacts"

    const-string v2, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    :goto_2
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 505
    :cond_8
    const-string v1, "com.android.contacts"

    const-string v2, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 508
    :cond_9
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_pick_up"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 509
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 510
    const-string v1, "android.pickuptutorial.PICKUPTUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 512
    :cond_a
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_pick_up_to_call_out"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 513
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 514
    const-string v1, "com.android.mms.ui.DirectCallTutorial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 516
    :cond_b
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_overturn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 517
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/MotionTutorialSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 518
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_c

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_c

    .line 519
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showUseRingDialog()V

    goto/16 :goto_0

    .line 521
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/motion/MotionTutorialSettings;->startTryActually(Z)V

    goto/16 :goto_0

    .line 523
    :cond_d
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "air_motion_glance_view"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 524
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 525
    const-string v1, "android.pickuptutorial.GLANCEVIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 527
    const-string v0, "MotionTutorialSettings"

    const-string v1, "AIR_MOTION_GLANCE_VIEW"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 528
    :cond_e
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "surface_palm_swipe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 530
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 531
    const-string v1, "com.android.pickuptutorial.PALMSWIPETUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 533
    const-string v0, "MotionTutorialSettings"

    const-string v1, "MotionTutorialSettings Tutorial Palm swipe to capture"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 534
    :cond_f
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "surface_palm_touch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 536
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 537
    const-string v1, "android.intent.action.PALM_TOUCH_TUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 539
    const-string v0, "MotionTutorialSettings"

    const-string v1, "MotionTutorialSettings Tutorial Palm touch to mute/pause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 540
    :cond_10
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "surface_tap_and_twist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method

.method private startTryActually(Z)V
    .locals 3

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_overturn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 548
    const-string v1, "UseRing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 549
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 550
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.OverturnTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivity(Landroid/content/Intent;)V

    .line 556
    :cond_0
    return-void

    .line 552
    :cond_1
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.alarm.OverturnTutorialAlarmScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    const-string v0, "MotionTutorialSettings"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private updateAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    const/16 v3, 0x66

    .line 559
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    const-string v0, "MotionTutorialSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 563
    iget v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    .line 566
    :cond_2
    iget v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    .line 568
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 569
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->stopAnimation()V

    .line 570
    iget v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    if-nez v0, :cond_3

    .line 571
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 573
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    if-eqz v0, :cond_5

    .line 574
    iget v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 575
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 577
    :cond_4
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 580
    :cond_5
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public allDialogDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 606
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 608
    iput-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 612
    iput-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 615
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 616
    iput-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 618
    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 219
    const-string v0, "MotionTutorialSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    packed-switch p1, :pswitch_data_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 222
    :pswitch_0
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.android.browser"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSupportBrowser:Z

    .line 137
    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsTablet:Z

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 139
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v4, "type"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x1

    .line 141
    .local v1, "isMotionTutorial":Z
    :cond_0
    const v4, 0x7f070056

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->addPreferencesFromResource(I)V

    .line 143
    const-string v4, "glance_view"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGlanceView:Landroid/preference/Preference;

    .line 144
    const-string v4, "tilt"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTilt:Landroid/preference/Preference;

    .line 145
    const-string v4, "tilt_to_scroll_list"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTiltToScrollList:Landroid/preference/Preference;

    .line 146
    const-string v4, "pan"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPan:Landroid/preference/Preference;

    .line 147
    const-string v4, "pan_to_browse_image"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPanToBrowseImage:Landroid/preference/Preference;

    .line 148
    const-string v4, "shake"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mShake:Landroid/preference/Preference;

    .line 149
    const-string v4, "double_tap"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mDoubleTap:Landroid/preference/Preference;

    .line 150
    const-string v4, "pick_up"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUp:Landroid/preference/Preference;

    .line 151
    const-string v4, "pick_up_to_call_out"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUpToCallOut:Landroid/preference/Preference;

    .line 152
    const-string v4, "turn_over"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTurnOver:Landroid/preference/Preference;

    .line 153
    const-string v4, "palm_swipe"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPalmSwipe:Landroid/preference/Preference;

    .line 154
    const-string v4, "palm_touch"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPalmTouch:Landroid/preference/Preference;

    .line 155
    const-string v4, "tap_and_twist"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTapAndTwist:Landroid/preference/Preference;

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 159
    .local v3, "ps":Landroid/preference/PreferenceScreen;
    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    .line 162
    .local v2, "isTablet":Z
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGlanceView:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 165
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTilt:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTiltToScrollList:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 171
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPan:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 174
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPanToBrowseImage:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mShake:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mDoubleTap:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 183
    :cond_1
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUp:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 186
    :cond_2
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUpToCallOut:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    if-eqz v1, :cond_3

    if-eqz v2, :cond_4

    .line 189
    :cond_3
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTurnOver:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    :cond_4
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPalmSwipe:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 195
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPalmTouch:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 198
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTapAndTwist:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 200
    iget-boolean v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSupportBrowser:Z

    if-nez v4, :cond_5

    .line 201
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTilt:Landroid/preference/Preference;

    const v5, 0x7f090c15

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 203
    :cond_5
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 214
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->stopAnimation()V

    .line 215
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const v7, 0x7f090c32

    const v5, 0x7f090c26

    const v4, 0x7f090c25

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 231
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGlanceView:Landroid/preference/Preference;

    if-ne p2, v3, :cond_0

    .line 232
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGlanceViewTutorialAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 233
    const-string v3, "air_motion_glance_view"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090cca

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090ccb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 236
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    .line 359
    :goto_0
    return v2

    .line 238
    :cond_0
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTilt:Landroid/preference/Preference;

    if-ne p2, v3, :cond_1

    .line 239
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTiltToZoomAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 240
    const-string v3, "motion_zooming"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c2c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 243
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto :goto_0

    .line 245
    :cond_1
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTiltToScrollList:Landroid/preference/Preference;

    if-ne p2, v3, :cond_2

    .line 246
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTiltToScrollListAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 247
    const-string v3, "motion_tilt_to_list_scrolling"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c2d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 250
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto :goto_0

    .line 252
    :cond_2
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPan:Landroid/preference/Preference;

    if-ne p2, v3, :cond_4

    .line 253
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPanToMoveIconAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 254
    iget-boolean v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsTablet:Z

    if-eqz v3, :cond_3

    .line 255
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTabletPanToMoveIconAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 257
    :cond_3
    const-string v3, "motion_panning"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c2e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 260
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 262
    :cond_4
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPanToBrowseImage:Landroid/preference/Preference;

    if-ne p2, v3, :cond_6

    .line 263
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPanToBrowseImageAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 264
    iget-boolean v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsTablet:Z

    if-eqz v3, :cond_5

    .line 265
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTabletPanToBrowseImageAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 267
    :cond_5
    const-string v3, "motion_pan_to_browse_image"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c2f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 270
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 272
    :cond_6
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mShake:Landroid/preference/Preference;

    if-ne p2, v3, :cond_c

    .line 273
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mShakeToUpdateAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 274
    const-string v3, "motion_shake"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c27

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c30

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 277
    const/4 v1, 0x1

    .line 279
    .local v1, "isKiesAirInstalled":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.swift.app.kiesair"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_1
    if-nez v1, :cond_8

    .line 284
    const-string v3, "CMCC"

    const-string v4, "OPEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "CHM"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 286
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c33

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 297
    :cond_8
    :goto_2
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_1

    .line 288
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_9
    const-string v3, "CHN"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "CTC"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 290
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    goto :goto_2

    .line 293
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    goto :goto_2

    .line 299
    .end local v1    # "isKiesAirInstalled":Z
    :cond_c
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mDoubleTap:Landroid/preference/Preference;

    if-ne p2, v3, :cond_d

    .line 300
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mDoubleTapToGoTopAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 301
    const-string v3, "motion_double_tap"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c28

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c34

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 304
    iput-boolean v2, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 306
    :cond_d
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUp:Landroid/preference/Preference;

    if-ne p2, v3, :cond_e

    .line 307
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUpToBeNotifiedAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 308
    const-string v3, "motion_pick_up"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c29

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c35

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 315
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 317
    :cond_e
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUpToCallOut:Landroid/preference/Preference;

    if-ne p2, v3, :cond_f

    .line 318
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUpToCallOutAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 319
    const-string v3, "motion_pick_up_to_call_out"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c2a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c47

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 322
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 324
    :cond_f
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTurnOver:Landroid/preference/Preference;

    if-ne p2, v3, :cond_10

    .line 325
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTurnOverToMuteAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 326
    const-string v3, "motion_overturn"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c2b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c38

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 329
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 331
    :cond_10
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPalmSwipe:Landroid/preference/Preference;

    if-ne p2, v3, :cond_11

    .line 332
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSurfacePalmSwipeAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 333
    const-string v3, "surface_palm_swipe"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c53

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c54

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 336
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 338
    :cond_11
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPalmTouch:Landroid/preference/Preference;

    if-ne p2, v3, :cond_13

    .line 339
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSurfacePalmTouchAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 340
    const-string v3, "surface_palm_touch"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c55

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c57

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 347
    :goto_3
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 345
    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c56

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    goto :goto_3

    .line 349
    :cond_13
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTapAndTwist:Landroid/preference/Preference;

    if-ne p2, v3, :cond_14

    .line 350
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSurfaceTapAndTwistAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 351
    const-string v3, "surface_tap_and_twist"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c58

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c59

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 354
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 357
    :cond_14
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 208
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->updateAnimation()V

    .line 209
    return-void
.end method

.method public showGuideDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 397
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 398
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->allDialogDismiss()V

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 401
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040063

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 402
    .local v2, "layout":Landroid/view/View;
    const v4, 0x7f0b004f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 403
    .local v3, "message":Landroid/widget/TextView;
    const v4, 0x7f0b0107

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 405
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 407
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 409
    const v4, 0x7f090c39

    new-instance v5, Lcom/android/settings/motion/MotionTutorialSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings/motion/MotionTutorialSettings$4;-><init>(Lcom/android/settings/motion/MotionTutorialSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090143

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 423
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 424
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 425
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/motion/MotionTutorialSettings$5;

    invoke-direct {v5, p0}, Lcom/android/settings/motion/MotionTutorialSettings$5;-><init>(Lcom/android/settings/motion/MotionTutorialSettings;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 430
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->startAnimation()V

    .line 431
    return-void
.end method
