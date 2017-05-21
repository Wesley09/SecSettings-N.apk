.class public Lcom/android/settings/colorblind/ColorChipReport;
.super Landroid/app/Fragment;
.source "ColorChipReport.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final MAX_COLOUR_ADJUSTMENT:I

.field private final SETTING_OFF:I

.field private final SETTING_ON:I

.field private TAG:Ljava/lang/String;

.field private cvdCalculator:Ldmc/cvd/cvdcalculator/CVDCalculator;

.field private isFromSetting:Z

.field private isSwitch:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mCVDType:I

.field private mCVDseverity:F

.field private mColourAdjustment:Landroid/widget/TextView;

.field private mColourAdjustment1:Landroid/widget/TextView;

.field private mColourAdjustmentDefaultImage:Landroid/widget/ImageView;

.field private mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

.field private mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

.field private final mColourAdjustmentSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mNegativeColorDialog:Landroid/app/AlertDialog;

.field private mResultText:Landroid/widget/TextView;

.field private mRetestDialog:Landroid/app/AlertDialog;

.field private mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

.field private mTestCheck:I

.field private mUserParameter:F

.field private rel:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 40
    const-string v0, "ColorChipReport"

    iput-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->TAG:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I

    .line 62
    iput-boolean v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->isSwitch:Z

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->SETTING_ON:I

    .line 66
    iput v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->SETTING_OFF:I

    .line 68
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->MAX_COLOUR_ADJUSTMENT:I

    .line 70
    iput-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    .line 72
    iput-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    .line 74
    iput v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mTestCheck:I

    .line 76
    iput-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->rel:Landroid/view/View;

    .line 78
    iput-boolean v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->isFromSetting:Z

    .line 508
    new-instance v0, Lcom/android/settings/colorblind/ColorChipReport$6;

    invoke-direct {v0, p0}, Lcom/android/settings/colorblind/ColorChipReport$6;-><init>(Lcom/android/settings/colorblind/ColorChipReport;)V

    iput-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method private CheckSwitch()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 583
    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "color_blind"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 585
    .local v1, "state":I
    iget-object v3, p0, Lcom/android/settings/colorblind/ColorChipReport;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckSwitch state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    if-ne v1, v0, :cond_0

    .line 589
    .local v0, "SwitchState":Z
    :goto_0
    return v0

    .end local v0    # "SwitchState":Z
    :cond_0
    move v0, v2

    .line 587
    goto :goto_0
.end method

.method private CheckTestRecord()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    .line 470
    const/16 v0, 0x9

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    .line 473
    .local v6, "intArr":[I
    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind_test"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mTestCheck:I

    .line 474
    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mTestCheck:I

    if-ne v0, v7, :cond_2

    .line 475
    iput-boolean v7, p0, Lcom/android/settings/colorblind/ColorChipReport;->isSwitch:Z

    .line 476
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mActionBarSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->isSwitch:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 478
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 479
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 480
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setAlpha(F)V

    .line 481
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setAlpha(F)V

    .line 483
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mUserParameter:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 484
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mUserParameter:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 485
    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 488
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 489
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 490
    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I

    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I

    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 491
    :cond_0
    invoke-static {v4, v6}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeColorBlind(Z[I)Z

    .line 500
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->cvdCalculator:Ldmc/cvd/cvdcalculator/CVDCalculator;

    iget v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I

    iget v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDseverity:F

    float-to-double v2, v2

    iget v4, p0, Lcom/android/settings/colorblind/ColorChipReport;->mUserParameter:F

    float-to-double v4, v4

    invoke-virtual/range {v0 .. v5}, Ldmc/cvd/cvdcalculator/CVDCalculator;->getRGBCMY(IDD)[I

    move-result-object v6

    .line 494
    invoke-static {v7, v6}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeColorBlind(Z[I)Z

    goto :goto_0

    .line 498
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/colorblind/ColorChipReport;->RetestOperate()V

    goto :goto_0

    .line 470
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private CreateNegativeColorDialog()V
    .locals 3

    .prologue
    .line 395
    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    :goto_0
    return-void

    .line 401
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 402
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0907c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 403
    const v1, 0x7f0907c5

    invoke-virtual {p0, v1}, Lcom/android/settings/colorblind/ColorChipReport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 404
    const v1, 0x1040013

    new-instance v2, Lcom/android/settings/colorblind/ColorChipReport$3;

    invoke-direct {v2, p0}, Lcom/android/settings/colorblind/ColorChipReport$3;-><init>(Lcom/android/settings/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 413
    const v1, 0x1040009

    new-instance v2, Lcom/android/settings/colorblind/ColorChipReport$4;

    invoke-direct {v2, p0}, Lcom/android/settings/colorblind/ColorChipReport$4;-><init>(Lcom/android/settings/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 421
    new-instance v1, Lcom/android/settings/colorblind/ColorChipReport$5;

    invoke-direct {v1, p0}, Lcom/android/settings/colorblind/ColorChipReport$5;-><init>(Lcom/android/settings/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 430
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private CreateRetestDialog()V
    .locals 3

    .prologue
    .line 368
    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    :goto_0
    return-void

    .line 374
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 375
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0907c2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 376
    const v1, 0x7f0907c3

    invoke-virtual {p0, v1}, Lcom/android/settings/colorblind/ColorChipReport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 377
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/colorblind/ColorChipReport$1;

    invoke-direct {v2, p0}, Lcom/android/settings/colorblind/ColorChipReport$1;-><init>(Lcom/android/settings/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 384
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/colorblind/ColorChipReport$2;

    invoke-direct {v2, p0}, Lcom/android/settings/colorblind/ColorChipReport$2;-><init>(Lcom/android/settings/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 391
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private InitControls(Z)V
    .locals 10
    .param p1, "isRotateDevice"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v9, -0x2

    const/high16 v8, 0x41200000    # 10.0f

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "fromSetting"

    .line 96
    .local v1, "prevActivity":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 97
    const-string v2, "fromSetting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/colorblind/ColorChipReport;->CheckSwitch()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->isSwitch:Z

    .line 99
    iput-boolean v3, p0, Lcom/android/settings/colorblind/ColorChipReport;->isFromSetting:Z

    .line 107
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_blind_test"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mTestCheck:I

    .line 110
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->rel:Landroid/view/View;

    const v3, 0x7f0b0067

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentDefaultImage:Landroid/widget/ImageView;

    .line 111
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->rel:Landroid/view/View;

    const v3, 0x7f0b0068

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    .line 112
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->rel:Landroid/view/View;

    const v3, 0x7f0b0069

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    .line 113
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->rel:Landroid/view/View;

    const v3, 0x7f0b006a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    .line 114
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->rel:Landroid/view/View;

    const v3, 0x7f0b006b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    .line 115
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 116
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 117
    new-instance v2, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mActionBarSwitch:Landroid/widget/Switch;

    .line 118
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v6, v6, v3, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/colorblind/ColorChipReport;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v9, v9, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mActionBarLayout:Landroid/view/View;

    .line 129
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mActionBarSwitch:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/android/settings/colorblind/ColorChipReport;->isSwitch:Z

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 134
    iget-boolean v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->isSwitch:Z

    invoke-direct {p0, v2}, Lcom/android/settings/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    .line 135
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 138
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 139
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/colorblind/ColorChipReport;->mUserParameter:F

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 140
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/colorblind/ColorChipReport;->mUserParameter:F

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 142
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->rel:Landroid/view/View;

    const v3, 0x7f0b0065

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    .line 144
    iget v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mTestCheck:I

    if-nez v2, :cond_3

    .line 145
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v3, 0x7f0907be

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 159
    :goto_1
    return-void

    .line 102
    :cond_2
    if-nez p1, :cond_0

    .line 103
    iput-boolean v3, p0, Lcom/android/settings/colorblind/ColorChipReport;->isSwitch:Z

    goto/16 :goto_0

    .line 148
    :cond_3
    iget v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I

    iget-object v3, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I

    iget-object v3, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 149
    :cond_4
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v3, 0x7f0907bf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 150
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v7}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 153
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v2, v7}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_1

    .line 156
    :cond_5
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v3, 0x7f0907c0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private RetestOperate()V
    .locals 4

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_blind_test"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 575
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v0, "resetIntent":Landroid/content/Intent;
    const-string v1, "toStartActivity"

    const-string v2, "fromSwitchOn"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.colorblind"

    const-string v3, "com.samsung.android.app.colorblind.ColorChipStart"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 579
    invoke-virtual {p0, v0}, Lcom/android/settings/colorblind/ColorChipReport;->startActivity(Landroid/content/Intent;)V

    .line 580
    return-void
.end method

.method private SetSwitchOnOff(Z)V
    .locals 6
    .param p1, "isOn"    # Z

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x41200000    # 10.0f

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    .line 434
    const/16 v1, 0x9

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 438
    .local v0, "intArr":[I
    if-eqz p1, :cond_2

    .line 439
    invoke-virtual {p0, v5}, Lcom/android/settings/colorblind/ColorChipReport;->setHasOptionsMenu(Z)V

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "high_contrast"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 442
    invoke-direct {p0}, Lcom/android/settings/colorblind/ColorChipReport;->CreateNegativeColorDialog()V

    .line 443
    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/colorblind/ColorChipReport;->CheckTestRecord()V

    goto :goto_0

    .line 449
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/settings/colorblind/ColorChipReport;->setHasOptionsMenu(Z)V

    .line 450
    iput-boolean v3, p0, Lcom/android/settings/colorblind/ColorChipReport;->isSwitch:Z

    .line 452
    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 453
    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 454
    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setAlpha(F)V

    .line 455
    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setAlpha(F)V

    .line 456
    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mUserParameter:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 457
    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mUserParameter:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_blind"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 461
    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 462
    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "high_contrast"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 464
    invoke-static {p1, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeColorBlind(Z[I)Z

    goto :goto_0

    .line 434
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/colorblind/ColorChipReport;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/colorblind/ColorChipReport;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/colorblind/ColorChipReport;->RetestOperate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/colorblind/ColorChipReport;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/colorblind/ColorChipReport;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/colorblind/ColorChipReport;->CheckTestRecord()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/colorblind/ColorChipReport;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/colorblind/ColorChipReport;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/colorblind/ColorChipReport;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/colorblind/ColorChipReport;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/colorblind/ColorChipReport;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/colorblind/ColorChipReport;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mUserParameter:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/colorblind/ColorChipReport;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/colorblind/ColorChipReport;
    .param p1, "x1"    # F

    .prologue
    .line 38
    iput p1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mUserParameter:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/colorblind/ColorChipReport;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/colorblind/ColorChipReport;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->isSwitch:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/colorblind/ColorChipReport;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/colorblind/ColorChipReport;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/colorblind/ColorChipReport;)Lcom/android/settings/colorblind/ColorChipSettingValue;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/colorblind/ColorChipReport;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/colorblind/ColorChipReport;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/colorblind/ColorChipReport;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDseverity:F

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/colorblind/ColorChipReport;)Ldmc/cvd/cvdcalculator/CVDCalculator;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/colorblind/ColorChipReport;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->cvdCalculator:Ldmc/cvd/cvdcalculator/CVDCalculator;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->TAG:Ljava/lang/String;

    const-string v1, "onCheckedChanged() is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-direct {p0, p2}, Lcom/android/settings/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    .line 506
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v6, 0x7f0907bf

    const v5, 0x7f0907be

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind_test"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mTestCheck:I

    .line 283
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_4

    .line 284
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentDefaultImage:Landroid/widget/ImageView;

    const v1, 0x7f020363

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I

    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I

    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mTestCheck:I

    if-nez v0, :cond_3

    .line 286
    :cond_0
    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mTestCheck:I

    if-nez v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 291
    :goto_0
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 323
    return-void

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0907c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_1

    .line 302
    :cond_4
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentDefaultImage:Landroid/widget/ImageView;

    const v1, 0x7f020364

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I

    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I

    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v0, v4, :cond_5

    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mTestCheck:I

    if-nez v0, :cond_7

    .line 305
    :cond_5
    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mTestCheck:I

    if-nez v0, :cond_6

    .line 306
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 310
    :goto_2
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 308
    :cond_6
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0907c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 315
    :cond_7
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/colorblind/ColorChipReport;->setHasOptionsMenu(Z)V

    .line 89
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 327
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 329
    const v0, 0x7f0907c1

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020320

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 330
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 164
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 166
    const v0, 0x7f040029

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->rel:Landroid/view/View;

    .line 168
    new-instance v0, Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/colorblind/ColorChipSettingValue;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    .line 170
    new-instance v0, Ldmc/cvd/cvdcalculator/CVDCalculator;

    invoke-direct {v0}, Ldmc/cvd/cvdcalculator/CVDCalculator;-><init>()V

    iput-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->cvdCalculator:Ldmc/cvd/cvdcalculator/CVDCalculator;

    .line 172
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/colorblind/ColorChipSettingValue;->UpdatePrefCVDSettingValue()V

    .line 173
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/colorblind/ColorChipSettingValue;->getCVDType()I

    move-result v0

    iput v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I

    .line 174
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/colorblind/ColorChipSettingValue;->getCVDseverity()F

    move-result v0

    iput v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDseverity:F

    .line 175
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/colorblind/ColorChipSettingValue;->getUserParameter()F

    move-result v0

    iput v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mUserParameter:F

    .line 177
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate : mCVDType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCVDseverity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDseverity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUserParameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mUserParameter:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0, v3}, Lcom/android/settings/colorblind/ColorChipReport;->InitControls(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->rel:Landroid/view/View;

    return-object v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 548
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->cvdCalculator:Ldmc/cvd/cvdcalculator/CVDCalculator;

    if-eqz v0, :cond_0

    .line 549
    iput-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->cvdCalculator:Ldmc/cvd/cvdcalculator/CVDCalculator;

    .line 552
    :cond_0
    iput-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mActionBarSwitch:Landroid/widget/Switch;

    .line 553
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    if-eqz v0, :cond_1

    .line 554
    iput-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 557
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 560
    :cond_2
    iput-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    .line 562
    :cond_3
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 563
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 564
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 566
    :cond_4
    iput-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    .line 568
    :cond_5
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 569
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 335
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 336
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 340
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 356
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 342
    :sswitch_0
    iget-boolean v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->isSwitch:Z

    if-eqz v0, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/android/settings/colorblind/ColorChipReport;->CreateRetestDialog()V

    .line 344
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 349
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Click actionbar home icon : mUserParameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mUserParameter:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 340
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 254
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 255
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->TAG:Ljava/lang/String;

    const-string v1, "onResume() is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/colorblind/ColorChipReport;->CheckSwitch()Z

    move-result v6

    .line 263
    .local v6, "checkSwitch":Z
    iget-boolean v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->isSwitch:Z

    if-eq v6, v0, :cond_1

    .line 264
    invoke-direct {p0, v6}, Lcom/android/settings/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mActionBarSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->isSwitch:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->refresh()V

    .line 271
    iget-boolean v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->isSwitch:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I

    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v0, v7, :cond_2

    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I

    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_3

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->cvdCalculator:Ldmc/cvd/cvdcalculator/CVDCalculator;

    iget v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I

    iget v2, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDseverity:F

    float-to-double v2, v2

    iget v4, p0, Lcom/android/settings/colorblind/ColorChipReport;->mUserParameter:F

    float-to-double v4, v4

    invoke-virtual/range {v0 .. v5}, Ldmc/cvd/cvdcalculator/CVDCalculator;->getRGBCMY(IDD)[I

    move-result-object v0

    invoke-static {v7, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeColorBlind(Z[I)Z

    .line 276
    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 540
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 541
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 544
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 199
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/colorblind/ColorChipSettingValue;->UpdatePrefCVDSettingValue()V

    .line 200
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/colorblind/ColorChipSettingValue;->getCVDType()I

    move-result v0

    iput v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I

    .line 201
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/colorblind/ColorChipSettingValue;->getCVDseverity()F

    move-result v0

    iput v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDseverity:F

    .line 202
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/colorblind/ColorChipSettingValue;->getUserParameter()F

    move-result v0

    iput v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mUserParameter:F

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind_test"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mTestCheck:I

    .line 206
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mUserParameter:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mUserParameter:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_4

    .line 212
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentDefaultImage:Landroid/widget/ImageView;

    const v1, 0x7f020363

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I

    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I

    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mTestCheck:I

    if-nez v0, :cond_3

    .line 214
    :cond_0
    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mTestCheck:I

    if-nez v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0907be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    :cond_1
    :goto_1
    return-void

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0907c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0907bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_1

    .line 230
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentDefaultImage:Landroid/widget/ImageView;

    const v1, 0x7f020364

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I

    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I

    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v0, v4, :cond_5

    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mTestCheck:I

    if-nez v0, :cond_7

    .line 233
    :cond_5
    iget v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mTestCheck:I

    if-nez v0, :cond_6

    .line 234
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0907be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 238
    :goto_2
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 236
    :cond_6
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0907c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 243
    :cond_7
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0907bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustment1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport;->mColourAdjustmentSeekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto/16 :goto_1
.end method
