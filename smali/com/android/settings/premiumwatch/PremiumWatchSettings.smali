.class public Lcom/android/settings/premiumwatch/PremiumWatchSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PremiumWatchSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static mStyleItem:[Ljava/lang/String;

.field private static mStyleState:I

.field private static sSettingsObserver:Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mDualclockRoaming:Landroid/preference/CheckBoxPreference;

.field private mHelpPref:Landroid/preference/Preference;

.field private mWatchSignature:Landroid/preference/Preference;

.field private mWatchStyle:Landroid/preference/Preference;

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/premiumwatch/PremiumWatchSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/premiumwatch/PremiumWatchSettings;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->updateState()V

    return-void
.end method

.method private putIntToFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 249
    const/4 v3, 0x0

    .line 250
    .local v3, "ret":I
    const/4 v1, 0x0

    .line 252
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x1000

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    const/4 v3, 0x0

    .line 259
    if-eqz v2, :cond_0

    .line 261
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    move v4, v3

    .line 267
    .end local v3    # "ret":I
    .local v4, "ret":I
    :goto_1
    return v4

    .line 262
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .end local v4    # "ret":I
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "ret":I
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "PremiumWatchSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t close the file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .line 256
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v5, "PremiumWatchSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 257
    const/4 v3, -0x1

    .line 259
    if-eqz v1, :cond_1

    .line 261
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_3
    move v4, v3

    .line 267
    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    goto :goto_1

    .line 262
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :catch_2
    move-exception v0

    .line 263
    const-string v5, "PremiumWatchSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t close the file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v1, :cond_2

    .line 261
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_5
    move v4, v3

    .line 267
    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    goto :goto_1

    .line 262
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :catch_3
    move-exception v0

    .line 263
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "PremiumWatchSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t close the file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 255
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method private updateState()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "premium_watch_switch_onoff"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 211
    .local v0, "savedValue":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 213
    return-void
.end method

.method private updateStyleSummary()V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->resolver:Landroid/content/ContentResolver;

    const-string v1, "premium_watch_style_option"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mStyleState:I

    .line 245
    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mWatchStyle:Landroid/preference/Preference;

    sget-object v1, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mStyleItem:[Ljava/lang/String;

    sget v2, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mStyleState:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 246
    const-string v0, "PremiumWatchSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStyleSummary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mStyleState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 104
    .local v0, "activity":Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 106
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 107
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 108
    .local v2, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 109
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 111
    .local v1, "padding":I
    iget-object v3, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 112
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 114
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 118
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mActionBarLayout:Landroid/view/View;

    .line 122
    .end local v1    # "padding":I
    .end local v2    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 124
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 128
    const-string v1, "PremiumWatchSettings"

    const-string v2, "onCheckChanged : Premium Watch enable/disable"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.PREMIUM_WATCH_SWITCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "premium_watch_switch_onoff"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    const-string v1, "/sys/class/sec/sec_touchkey/two_touch_wakeup_mode"

    const-string v2, "1"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->putIntToFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 140
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "premium_watch_switch_onoff"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    const-string v1, "/sys/class/sec/sec_touchkey/two_touch_wakeup_mode"

    const-string v2, "0"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->putIntToFile(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->resolver:Landroid/content/ContentResolver;

    .line 83
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mStyleItem:[Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mStyleItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0913be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 85
    sget-object v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mStyleItem:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0913bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 86
    sget-object v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mStyleItem:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0913c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 87
    sget-object v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mStyleItem:[Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0913c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 89
    const v0, 0x7f0700c1

    invoke-virtual {p0, v0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->addPreferencesFromResource(I)V

    .line 90
    const-string v0, "premium_watch_help_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mHelpPref:Landroid/preference/Preference;

    .line 91
    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mHelpPref:Landroid/preference/Preference;

    const v1, 0x7f0401bb

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mHelpPref:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 93
    const-string v0, "premium_watch_style_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mWatchStyle:Landroid/preference/Preference;

    .line 94
    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->resolver:Landroid/content/ContentResolver;

    const-string v1, "premium_watch_style_option"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mStyleState:I

    .line 96
    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mWatchStyle:Landroid/preference/Preference;

    sget-object v1, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mStyleItem:[Ljava/lang/String;

    sget v2, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mStyleState:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    const-string v0, "premium_watch_signature_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mWatchSignature:Landroid/preference/Preference;

    .line 98
    const-string v0, "premium_watch_dual_clock_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mDualclockRoaming:Landroid/preference/CheckBoxPreference;

    .line 99
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "PremiumWatchSettings"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->sSettingsObserver:Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->sSettingsObserver:Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;->stopObserving()V

    .line 161
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->sSettingsObserver:Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->updateState()V

    .line 164
    invoke-direct {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->updateStyleSummary()V

    .line 165
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 166
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 181
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 182
    iget-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v5, :cond_0

    .line 183
    sget v5, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mSettingValue:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 184
    sget v5, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mSettingValue:I

    if-ne v5, v3, :cond_2

    move v2, v3

    .local v2, "value":Z
    :goto_0
    move-object v0, p2

    .line 185
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 186
    .local v0, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 187
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 192
    .end local v0    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v2    # "value":Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 193
    .local v1, "cr":Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mDualclockRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 194
    const-string v5, "premium_watch_dual_clock"

    iget-object v6, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mDualclockRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v3

    :cond_1
    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    :goto_1
    return v3

    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_2
    move v2, v4

    .line 184
    goto :goto_0

    .line 207
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 144
    const-string v0, "PremiumWatchSettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->updateState()V

    .line 146
    invoke-direct {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->updateStyleSummary()V

    .line 147
    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 151
    :cond_0
    sget-object v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->sSettingsObserver:Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;

    if-nez v0, :cond_1

    .line 152
    new-instance v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;-><init>(Lcom/android/settings/premiumwatch/PremiumWatchSettings;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->sSettingsObserver:Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;

    .line 153
    sget-object v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->sSettingsObserver:Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;->startObserving()V

    .line 155
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 170
    const-string v0, "PremiumWatchSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 175
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 176
    return-void
.end method
