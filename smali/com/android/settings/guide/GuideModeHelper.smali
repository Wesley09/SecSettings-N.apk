.class public final Lcom/android/settings/guide/GuideModeHelper;
.super Ljava/lang/Object;
.source "GuideModeHelper.java"


# static fields
.field private static mIsTablet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/guide/GuideModeHelper;->mIsTablet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/android/settings/helpdialog/TwHelpDialog;)V
    .locals 16
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "helpDialog"    # Lcom/android/settings/helpdialog/TwHelpDialog;

    .prologue
    .line 310
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v9

    .line 318
    .local v9, "focus":Landroid/view/View;
    instance-of v1, v9, Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 319
    check-cast v9, Landroid/widget/ListView;

    .end local v9    # "focus":Landroid/view/View;
    invoke-virtual {v9}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v9

    .line 322
    .restart local v9    # "focus":Landroid/view/View;
    :cond_2
    if-eqz v9, :cond_0

    .line 323
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 324
    .local v13, "rect":Landroid/graphics/Rect;
    const/4 v1, 0x2

    new-array v10, v1, [I

    .line 326
    .local v10, "location":[I
    invoke-virtual {v9, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 327
    const/4 v1, 0x0

    aget v1, v10, v1

    const/4 v2, 0x1

    aget v2, v10, v2

    const/4 v3, 0x0

    aget v3, v10, v3

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v10, v4

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 330
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    iget v1, v13, Landroid/graphics/Rect;->left:I

    iget v2, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    div-int/lit8 v14, v1, 0x2

    .line 332
    .local v14, "x":I
    iget v1, v13, Landroid/graphics/Rect;->bottom:I

    iget v2, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    div-int/lit8 v15, v1, 0x2

    .line 333
    .local v15, "y":I
    const v1, 0x7f0b0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/settings/helpdialog/TwTouchPunchView;

    .line 336
    .local v12, "punchView":Lcom/android/settings/helpdialog/TwTouchPunchView;
    const-wide/16 v1, 0x64

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    int-to-float v6, v14

    int-to-float v7, v15

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 345
    .local v11, "motionEvent":Landroid/view/MotionEvent;
    if-eqz v12, :cond_3

    .line 346
    invoke-virtual {v12, v11}, Lcom/android/settings/helpdialog/TwTouchPunchView;->processGlobalCoordinatesTouch(Landroid/view/MotionEvent;)V

    .line 349
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settings/helpdialog/TwHelpDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 350
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 352
    const-wide/16 v1, 0x64

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    add-long/2addr v3, v5

    const/4 v5, 0x1

    int-to-float v6, v14

    int-to-float v7, v15

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 361
    if-eqz v12, :cond_4

    .line 362
    invoke-virtual {v12, v11}, Lcom/android/settings/helpdialog/TwTouchPunchView;->processGlobalCoordinatesTouch(Landroid/view/MotionEvent;)V

    .line 365
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settings/helpdialog/TwHelpDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 366
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0
.end method

.method static getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # Landroid/os/Bundle;

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 95
    const-string v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v1, "settings:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const-string v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 103
    :cond_0
    return-object v0
.end method

.method static getGuideModeFromIntent(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 74
    if-eqz p0, :cond_1

    const-string v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "result":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 78
    invoke-static {p1}, Lcom/android/settings/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_0
    return-object v0

    .line 74
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 442
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/guide/GuideModeHelper;->mIsTablet:Z

    .line 443
    return-void
.end method

.method static isGuideCompleted(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "b"    # Landroid/os/Bundle;

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "result":Z
    if-eqz p0, :cond_0

    .line 110
    const-string v1, "settings:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "settings:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 112
    const-string v1, "settings:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 116
    :cond_0
    return v0
.end method

.method static isGuideModeBluetooth(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "result":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    const-string v1, "bt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 160
    :cond_0
    return v0
.end method

.method static isGuideModeWiFi(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "result":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 147
    :cond_0
    return v0
.end method

.method static isInGuideMode(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, "result":Z
    if-eqz p0, :cond_1

    const-string v1, "settings:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    const-string v1, "settings:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    if-eqz p1, :cond_0

    .line 127
    const-string v1, "settings:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const-string v1, "settings:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 129
    const-string v1, "settings:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static isTablet()Z
    .locals 1

    .prologue
    .line 431
    sget-boolean v0, Lcom/android/settings/guide/GuideModeHelper;->mIsTablet:Z

    return v0
.end method

.method static setSettingsListEnabled(ZLandroid/app/Activity;)V
    .locals 2
    .param p0, "enabled"    # Z
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 411
    instance-of v1, p1, Landroid/app/ListActivity;

    if-eqz v1, :cond_0

    .line 412
    check-cast p1, Landroid/app/ListActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 414
    .local v0, "list":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v1

    if-eq v1, p0, :cond_0

    .line 415
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 418
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 423
    .end local v0    # "list":Landroid/widget/ListView;
    :cond_0
    return-void
.end method

.method static switchMode(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 387
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 388
    const/4 v1, 0x0

    .line 398
    :cond_0
    :goto_0
    return v1

    .line 391
    :cond_1
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/settings/guide/GuideFragmentCallback;

    move-result-object v0

    check-cast v0, Lcom/android/settings/guide/GuideFragment;

    .line 392
    .local v0, "frag":Lcom/android/settings/guide/GuideFragment;
    const/4 v1, 0x0

    .line 394
    .local v1, "retval":Z
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Lcom/android/settings/guide/GuideFragment;->switchGuiderMode()Z

    move-result v1

    goto :goto_0
.end method
