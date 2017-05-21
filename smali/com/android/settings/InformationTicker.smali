.class public Lcom/android/settings/InformationTicker;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InformationTicker.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mContentsType:Landroid/preference/ListPreference;

.field private mContentsTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mFacebookAutoRefresh:Landroid/preference/ListPreference;

.field private mNotiOfChargeDialog:Landroid/app/AlertDialog;

.field private mOldValue:I

.field private mSlidingSpeed:Landroid/preference/ListPreference;

.field private mTickerSetting:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/android/settings/InformationTicker;->mNotiOfChargeDialog:Landroid/app/AlertDialog;

    .line 85
    iput-object v0, p0, Lcom/android/settings/InformationTicker;->mContentsTypeList:Ljava/util/ArrayList;

    return-void
.end method

.method private static AppServiceOff(I)I
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 592
    xor-int/lit8 p0, p0, 0x1

    .line 593
    return p0
.end method

.method private static AppServiceOn(I)I
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 587
    or-int/lit8 p0, p0, 0x1

    .line 588
    return p0
.end method

.method static synthetic access$000(Lcom/android/settings/InformationTicker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/InformationTicker;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/InformationTicker;->saveFBAutoRefreshRate(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/InformationTicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/InformationTicker;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/InformationTicker;->updateFacebookState()V

    return-void
.end method

.method private getEnableContentsType()V
    .locals 8

    .prologue
    .line 680
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_RemoveMenuInLockScreenTicker"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "ContentsTypeFeature":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 683
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsTypeList:Ljava/util/ArrayList;

    .line 684
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 685
    .local v3, "contentsType":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v6, :cond_3

    .line 686
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 687
    .local v2, "contentsSequence":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 688
    .local v4, "found":Z
    const/4 v1, 0x0

    .local v1, "charindex":I
    :goto_0
    array-length v6, v2

    if-ge v1, v6, :cond_3

    .line 689
    const/4 v4, 0x0

    .line 690
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_0

    .line 691
    aget-object v6, v3, v5

    aget-object v7, v2, v1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 692
    const/4 v4, 0x1

    .line 696
    :cond_0
    if-nez v4, :cond_1

    .line 697
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsTypeList:Ljava/util/ArrayList;

    aget-object v7, v2, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 690
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 701
    .end local v1    # "charindex":I
    .end local v2    # "contentsSequence":[Ljava/lang/CharSequence;
    .end local v3    # "contentsType":[Ljava/lang/String;
    .end local v4    # "found":Z
    .end local v5    # "index":I
    :cond_3
    return-void
.end method

.method private saveFBAutoRefreshRate(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "information_ticker_auto_refresh"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 749
    iget-object v0, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 750
    const-string v0, "InformationTicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFacebookAutoRefresh.getEntry() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 752
    invoke-direct {p0, p1}, Lcom/android/settings/InformationTicker;->sendAutoRefreshRate(I)V

    .line 753
    return-void
.end method

.method private sendAutoRefreshRate(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 634
    return-void
.end method

.method private sendContentsType(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 649
    return-void
.end method

.method private sendInfoTickerNotiToFacebook(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 677
    return-void
.end method

.method private showNotiOfChargesDialog(I)V
    .locals 8
    .param p1, "v"    # I

    .prologue
    const v7, 0x7f090047

    const/4 v6, 0x0

    .line 705
    move v3, p1

    .line 707
    .local v3, "value":I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 708
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings/InformationTicker;->mNotiOfChargeDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 709
    iget-object v4, p0, Lcom/android/settings/InformationTicker;->mNotiOfChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 710
    iput-object v6, p0, Lcom/android/settings/InformationTicker;->mNotiOfChargeDialog:Landroid/app/AlertDialog;

    .line 713
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 714
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040065

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 716
    .local v2, "layout":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 717
    const v4, 0x7f090b96

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 718
    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 720
    new-instance v4, Lcom/android/settings/InformationTicker$5;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/InformationTicker$5;-><init>(Lcom/android/settings/InformationTicker;I)V

    invoke-virtual {v0, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 725
    const v4, 0x7f090048

    new-instance v5, Lcom/android/settings/InformationTicker$6;

    invoke-direct {v5, p0}, Lcom/android/settings/InformationTicker$6;-><init>(Lcom/android/settings/InformationTicker;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 731
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/InformationTicker;->mNotiOfChargeDialog:Landroid/app/AlertDialog;

    .line 732
    iget-object v4, p0, Lcom/android/settings/InformationTicker;->mNotiOfChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 734
    iget-object v4, p0, Lcom/android/settings/InformationTicker;->mNotiOfChargeDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/InformationTicker$7;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/InformationTicker$7;-><init>(Lcom/android/settings/InformationTicker;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 745
    return-void
.end method

.method private updateFacebookState()V
    .locals 0

    .prologue
    .line 599
    return-void
.end method

.method private updateState()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 371
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v7, "contents_type"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 372
    .local v0, "contentsType":I
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v7, :cond_0

    .line 373
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 374
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 377
    :cond_0
    const-string v7, "sliding_speed"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 378
    .local v3, "slidingSpeed":I
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 379
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 381
    const/4 v4, 0x0

    .line 382
    .local v4, "summary":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 383
    const v7, 0x7f090b8f

    invoke-virtual {p0, v7}, Lcom/android/settings/InformationTicker;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 398
    :goto_0
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 400
    invoke-direct {p0}, Lcom/android/settings/InformationTicker;->updateFacebookState()V

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "information_ticker"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_7

    move v2, v5

    .line 403
    .local v2, "saved_value":Z
    :goto_1
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 405
    if-eqz v2, :cond_8

    .line 406
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v7, :cond_1

    .line 407
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 408
    :cond_1
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 409
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_2

    .line 410
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 411
    :cond_2
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    if-eqz v7, :cond_3

    .line 412
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 423
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsTypeList:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsTypeList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v5, :cond_4

    .line 424
    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 425
    :cond_4
    return-void

    .line 384
    .end local v2    # "saved_value":Z
    :cond_5
    if-ne v0, v5, :cond_6

    .line 385
    const v7, 0x7f090b90

    invoke-virtual {p0, v7}, Lcom/android/settings/InformationTicker;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 394
    :cond_6
    const-string v7, "InformationTicker"

    const-string v8, "contentsType is out of bound"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    move v2, v6

    .line 402
    goto :goto_1

    .line 414
    .restart local v2    # "saved_value":Z
    :cond_8
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v7, :cond_9

    .line 415
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 416
    :cond_9
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 417
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_a

    .line 418
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 419
    :cond_a
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    if-eqz v7, :cond_3

    .line 420
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 202
    .local v0, "activity":Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    .line 204
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 205
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 206
    .local v2, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 207
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 209
    .local v1, "padding":I
    iget-object v3, p0, Lcom/android/settings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 210
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 212
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 216
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f090b87

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 220
    .end local v1    # "padding":I
    .end local v2    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 221
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 222
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 757
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 758
    const-string v2, "InformationTicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult : requestCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resultCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/16 v2, 0x65

    if-ne p1, v2, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 762
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.facebook.katana"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 763
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 764
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contents_type"

    iget v4, p0, Lcom/android/settings/InformationTicker;->mOldValue:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 765
    iget v2, p0, Lcom/android/settings/InformationTicker;->mOldValue:I

    invoke-direct {p0, v2}, Lcom/android/settings/InformationTicker;->sendContentsType(I)V

    .line 766
    invoke-direct {p0}, Lcom/android/settings/InformationTicker;->updateState()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 11
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 226
    const-string v6, "InformationTicker"

    const-string v9, "onCheckChanged"

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 233
    .local v5, "value":Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 234
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "sn_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 239
    .local v3, "mAppServiceStatus":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "sn_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 246
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 248
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.sinanews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v1, "intent_nw":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v2, "intent_st":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 310
    :goto_2
    invoke-direct {p0, v5}, Lcom/android/settings/InformationTicker;->sendInfoTickerNotiToFacebook(Ljava/lang/Boolean;)V

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "information_ticker"

    if-eqz p2, :cond_b

    move v6, v7

    :goto_3
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 314
    if-eqz p2, :cond_c

    .line 315
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v6, :cond_0

    .line 316
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 317
    :cond_0
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 318
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 319
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    if-eqz v6, :cond_1

    .line 320
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 329
    :cond_1
    :goto_4
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsTypeList:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    if-eqz p2, :cond_2

    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsTypeList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 330
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 354
    :cond_2
    return-void

    .line 237
    .end local v1    # "intent_nw":Landroid/content/Intent;
    .end local v2    # "intent_st":Landroid/content/Intent;
    .end local v3    # "mAppServiceStatus":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "sn_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    .restart local v3    # "mAppServiceStatus":I
    goto/16 :goto_0

    .line 244
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    goto/16 :goto_1

    .line 252
    .end local v3    # "mAppServiceStatus":I
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 253
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 258
    .restart local v3    # "mAppServiceStatus":I
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 265
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.yonhapnews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .restart local v1    # "intent_nw":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v9, "com.sec.android.daemonapp.ap.yonhapnews.DaemonReceiver"

    invoke-direct {v0, v6, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 273
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .restart local v2    # "intent_st":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 256
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "intent_nw":Landroid/content/Intent;
    .end local v2    # "intent_st":Landroid/content/Intent;
    .end local v3    # "mAppServiceStatus":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    .restart local v3    # "mAppServiceStatus":I
    goto :goto_5

    .line 263
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    goto :goto_6

    .line 289
    .end local v3    # "mAppServiceStatus":I
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yh_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 294
    .restart local v3    # "mAppServiceStatus":I
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yh_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 296
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 301
    :goto_8
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.yahoonews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .restart local v1    # "intent_nw":Landroid/content/Intent;
    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "salesCode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 306
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .restart local v2    # "intent_st":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 292
    .end local v1    # "intent_nw":Landroid/content/Intent;
    .end local v2    # "intent_st":Landroid/content/Intent;
    .end local v3    # "mAppServiceStatus":I
    .end local v4    # "salesCode":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yh_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    .restart local v3    # "mAppServiceStatus":I
    goto :goto_7

    .line 299
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    goto :goto_8

    .restart local v1    # "intent_nw":Landroid/content/Intent;
    .restart local v2    # "intent_st":Landroid/content/Intent;
    :cond_b
    move v6, v8

    .line 312
    goto/16 :goto_3

    .line 322
    :cond_c
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v6, :cond_d

    .line 323
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 324
    :cond_d
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 325
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 326
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    if-eqz v6, :cond_1

    .line 327
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v6, 0x7f070048

    invoke-virtual {p0, v6}, Lcom/android/settings/InformationTicker;->addPreferencesFromResource(I)V

    .line 119
    const-string v6, "contents_type"

    invoke-virtual {p0, v6}, Lcom/android/settings/InformationTicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    .line 120
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    const-string v6, "CHM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "CMCC"

    const-string v7, "OPEN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 128
    :cond_1
    const-string v6, "sliding_speed"

    invoke-virtual {p0, v6}, Lcom/android/settings/InformationTicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    .line 129
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    const-string v6, "ticker_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/InformationTicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    .line 133
    const-string v6, "facebook_auto_refresh"

    invoke-virtual {p0, v6}, Lcom/android/settings/InformationTicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    .line 134
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    const-string v6, "InformationTicker"

    const-string v7, "GLOBALCONFIG_SETTINGS_SUPPORT_INFORMATION_TICKER_FOR_FACEBOOK is not supported"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 166
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 167
    .local v5, "values":[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v3, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v4, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_3

    .line 171
    const-string v6, "Facebook"

    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 173
    const-string v6, "InformationTicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    aget-object v6, v1, v2

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    aget-object v6, v5, v2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_3
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 180
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "contents_type"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 183
    .local v0, "contentsType":I
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v6, :cond_4

    .line 184
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 185
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 188
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    invoke-direct {p0}, Lcom/android/settings/InformationTicker;->getEnableContentsType()V

    .line 197
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 365
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 366
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 481
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, "key":Ljava/lang/String;
    const-string v5, "contents_type"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 485
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 486
    .local v4, "value":I
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "contents_type"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/InformationTicker;->mOldValue:I

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "contents_type"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 489
    invoke-direct {p0, v4}, Lcom/android/settings/InformationTicker;->sendContentsType(I)V

    .line 491
    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 492
    const-string v5, "InformationTicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mContentsType.getEntry() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 495
    const/4 v3, 0x0

    .line 496
    .local v3, "summary":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 497
    const v5, 0x7f090b8f

    invoke-virtual {p0, v5}, Lcom/android/settings/InformationTicker;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 512
    :goto_0
    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 513
    invoke-direct {p0}, Lcom/android/settings/InformationTicker;->updateFacebookState()V

    .line 583
    .end local v3    # "summary":Ljava/lang/String;
    .end local v4    # "value":I
    :cond_0
    :goto_1
    return v8

    .line 498
    .restart local v3    # "summary":Ljava/lang/String;
    .restart local v4    # "value":I
    :cond_1
    if-ne v4, v8, :cond_2

    .line 499
    const v5, 0x7f090b90

    invoke-virtual {p0, v5}, Lcom/android/settings/InformationTicker;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 508
    :cond_2
    const-string v5, "InformationTicker"

    const-string v6, "objValue is out of bound"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 560
    .end local v3    # "summary":Ljava/lang/String;
    .end local v4    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_3
    const-string v5, "sliding_speed"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 561
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 562
    .restart local v4    # "value":I
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sliding_speed"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 563
    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 564
    const-string v5, "InformationTicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSlidingSpeed.getEntry() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 566
    .end local v4    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    const-string v5, "facebook_auto_refresh"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings.fb_noti_of_charges"

    invoke-virtual {v5, v6, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 568
    .local v1, "fbNotiChargesPrefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 569
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 570
    .restart local v4    # "value":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v5, v8, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 572
    invoke-direct {p0, v4}, Lcom/android/settings/InformationTicker;->saveFBAutoRefreshRate(I)V

    goto/16 :goto_1

    .line 574
    :cond_6
    const-string v5, "FBDoNotShowDialog"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 575
    .local v0, "doNotShow":Z
    if-eqz v0, :cond_7

    .line 576
    invoke-direct {p0, v4}, Lcom/android/settings/InformationTicker;->saveFBAutoRefreshRate(I)V

    goto/16 :goto_1

    .line 578
    :cond_7
    invoke-direct {p0, v4}, Lcom/android/settings/InformationTicker;->showNotiOfChargesDialog(I)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 429
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ticker_settings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "contents_type"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 431
    .local v1, "contentType":I
    if-nez v1, :cond_3

    .line 435
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 436
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v6, "SETTING_MODE"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 441
    .local v4, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 445
    .local v5, "salesCode":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 446
    const-string v6, "com.sec.android.daemonapp.ap.sinanews"

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 447
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.sinanews"

    const-string v7, "com.sec.android.daemonapp.ap.sinanews.DaemonConfigure"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .local v0, "cn":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 456
    invoke-virtual {p0, v3}, Lcom/android/settings/InformationTicker;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "contentType":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "salesCode":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    return v6

    .line 448
    .restart local v1    # "contentType":I
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "salesCode":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 449
    const-string v6, "com.sec.android.daemonapp.ap.yonhapnews"

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 450
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v7, "com.sec.android.daemonapp.ap.yonhapnews.activity.SettingsNews"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "cn":Landroid/content/ComponentName;
    goto :goto_0

    .line 452
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_2
    const-string v6, "com.sec.android.daemonapp.ap.yahoonews"

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 453
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.yahoonews"

    const-string v7, "com.sec.android.daemonapp.ap.yahoonews.activity.SettingsNews"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0    # "cn":Landroid/content/ComponentName;
    goto :goto_0

    .line 457
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v5    # "salesCode":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 458
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "InformationTicker"

    const-string v7, "[NameNotFoundException] news daemon not installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 460
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    const/4 v6, 0x1

    if-ne v1, v6, :cond_6

    .line 462
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 463
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.sinastock.stockclock.MENUSETTING"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .restart local v3    # "intent":Landroid/content/Intent;
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/settings/InformationTicker;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 464
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 465
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.edaily.stockclock.MENUSETTING"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 467
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.yahoostock.stockclock.MENUSETTING"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 474
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v6, "InformationTicker"

    const-string v7, "contentsType is out of bound"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 358
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 360
    invoke-direct {p0}, Lcom/android/settings/InformationTicker;->updateState()V

    .line 361
    return-void
.end method
