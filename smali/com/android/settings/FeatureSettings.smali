.class public Lcom/android/settings/FeatureSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FeatureSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mAdapt:Landroid/preference/SwitchPreferenceScreen;

.field private mAirMotion:Landroid/preference/SwitchPreferenceScreen;

.field private mAirView:Landroid/preference/SwitchPreferenceScreen;

.field private mEasyMode:Landroid/preference/SwitchPreferenceScreen;

.field private mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mMulti:Landroid/preference/SwitchPreferenceScreen;

.field private mOPMode:Landroid/preference/SwitchPreferenceScreen;

.field private mPm:Landroid/content/pm/PackageManager;

.field mResolver:Landroid/content/ContentResolver;

.field private mSBeam:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartPause:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartStay:Landroid/preference/SwitchPreferenceScreen;

.field protected mSwitchUncheckHandler:Landroid/os/Handler;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;

.field private mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 88
    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 89
    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 91
    new-instance v0, Lcom/android/settings/FeatureSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/FeatureSettings$1;-><init>(Lcom/android/settings/FeatureSettings;)V

    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mSwitchUncheckHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/FeatureSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/FeatureSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/FeatureSettings;->turnOnEasyMode(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/FeatureSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/FeatureSettings;->turnOnOPMode(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private initUI()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    .line 146
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_5

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 147
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "air_motion_engine"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_6

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 148
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "voice_input_control"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_7

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 149
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "intelligent_sleep_mode"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_8

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 150
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "smart_pause"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_9

    move v6, v7

    :goto_4
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 151
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "smart_scroll"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_a

    move v6, v7

    :goto_5
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 152
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "easy_mode_switch"

    invoke-static {v6, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_b

    move v6, v7

    :goto_6
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 153
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "key_spam_smart"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_c

    move v6, v7

    :goto_7
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 154
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "screen_mode_automatic_setting"

    invoke-static {v6, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_d

    move v6, v7

    :goto_8
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 164
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "multi_window_enabled"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_e

    :goto_9
    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 166
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 168
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 169
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 171
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 172
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 173
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 174
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 175
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 176
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 177
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 178
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 179
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 180
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 181
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 182
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 183
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 185
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 187
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 191
    .local v5, "ps":Landroid/preference/PreferenceScreen;
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 197
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 206
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 208
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    .line 209
    .local v1, "cscFeature":Lcom/sec/android/app/CscFeature;
    const-string v6, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v1, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    .line 210
    .local v3, "enableBlackListForCHN":Z
    if-nez v3, :cond_0

    .line 211
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 228
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 229
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 233
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.vlingo.midas"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_a
    new-instance v4, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v4}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    .line 239
    .local v4, "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    iget-boolean v6, v4, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-nez v6, :cond_2

    .line 240
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.feature.multiwindow"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 244
    .local v0, "UseMultiWindow":Z
    if-eqz v0, :cond_3

    const-string v6, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 245
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 248
    :cond_4
    return-void

    .end local v0    # "UseMultiWindow":Z
    .end local v1    # "cscFeature":Lcom/sec/android/app/CscFeature;
    .end local v3    # "enableBlackListForCHN":Z
    .end local v4    # "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    .end local v5    # "ps":Landroid/preference/PreferenceScreen;
    :cond_5
    move v6, v8

    .line 146
    goto/16 :goto_0

    :cond_6
    move v6, v8

    .line 147
    goto/16 :goto_1

    :cond_7
    move v6, v8

    .line 148
    goto/16 :goto_2

    :cond_8
    move v6, v8

    .line 149
    goto/16 :goto_3

    :cond_9
    move v6, v8

    .line 150
    goto/16 :goto_4

    :cond_a
    move v6, v8

    .line 151
    goto/16 :goto_5

    :cond_b
    move v6, v8

    .line 152
    goto/16 :goto_6

    :cond_c
    move v6, v8

    .line 153
    goto/16 :goto_7

    :cond_d
    move v6, v8

    .line 154
    goto/16 :goto_8

    :cond_e
    move v7, v8

    .line 164
    goto/16 :goto_9

    .line 234
    .restart local v1    # "cscFeature":Lcom/sec/android/app/CscFeature;
    .restart local v3    # "enableBlackListForCHN":Z
    .restart local v5    # "ps":Landroid/preference/PreferenceScreen;
    :catch_0
    move-exception v2

    .line 235
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_a
.end method

.method private showTalkBackDisableDialog(IILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1044
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1046
    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1050
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1051
    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 1055
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/FeatureSettings$9;

    invoke-direct {v2, p0, p3}, Lcom/android/settings/FeatureSettings$9;-><init>(Lcom/android/settings/FeatureSettings;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/FeatureSettings$8;

    invoke-direct {v2, p0, p3}, Lcom/android/settings/FeatureSettings$8;-><init>(Lcom/android/settings/FeatureSettings;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 1127
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1129
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/FeatureSettings$10;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/FeatureSettings$10;-><init>(Lcom/android/settings/FeatureSettings;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1146
    return-void
.end method

.method private turnOnEasyMode(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 977
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 978
    iget-object v3, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "easy_mode_switch"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 980
    if-ne p1, v2, :cond_0

    .line 981
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_scroll"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 982
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 983
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 984
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 985
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 987
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_pause"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 988
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 989
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 990
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 991
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 993
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "finger_air_view"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 994
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 996
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 997
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 998
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1000
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "multi_window_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1007
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 978
    goto :goto_0
.end method

.method private turnOnOPMode(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1010
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1012
    iget-object v3, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "op_mode_switch"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1014
    if-ne p1, v1, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1016
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1018
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "smart_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1019
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1020
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1021
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1022
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1024
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "smart_pause"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1025
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1026
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1027
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1028
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1030
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1031
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1033
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1034
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1035
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1037
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "multi_window_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1041
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1012
    goto :goto_0

    .line 1039
    :cond_1
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "easy_mode_switch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method


# virtual methods
.method public getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 479
    if-nez p1, :cond_1

    const-string v1, ""

    .line 486
    :cond_0
    :goto_0
    return-object v1

    .line 481
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 482
    .local v0, "resID":I
    const-string v1, ""

    .line 483
    .local v1, "ret":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public makeAdaptDisplayLayout()Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 732
    .line 733
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 734
    const v0, 0x7f0b0191

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 736
    const v1, 0x7f090a8e

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 738
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 739
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 740
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 741
    const v1, 0x7f02035f

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 742
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 744
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 746
    return-object v2
.end method

.method public makeAirMotionLayout()Landroid/view/View;
    .locals 21

    .prologue
    .line 385
    const/4 v15, 0x0

    .line 386
    .local v15, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    const v17, 0x7f040080

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 387
    const v16, 0x7f0b0191

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 389
    .local v4, "helpContent":Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 390
    .local v2, "first":Lcom/android/settings/HelpItem;
    const v16, 0x7f090c7a

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 393
    .local v11, "res":Landroid/content/res/Resources;
    const v16, 0x7f090c92

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 394
    .local v8, "part1":Ljava/lang/String;
    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 395
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 399
    :goto_0
    const v16, 0x7f0e0005

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 400
    .local v10, "proper_distance":I
    const v16, 0x7f090c94

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 401
    .local v9, "part3":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    .line 402
    .local v12, "salesCode":Ljava/lang/String;
    const-string v16, "ATT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "SPR"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "VZW"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "TMB"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "USC"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "CRI"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "VMU"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "BST"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "XAS"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "TFN"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "XAR"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "CSP"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 405
    :cond_0
    const v16, 0x7f0e0006

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 406
    const v16, 0x7f090c95

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 408
    :cond_1
    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 409
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 413
    :goto_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090c93

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 414
    .local v7, "original_str":Ljava/lang/String;
    const-string v16, "ja"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 415
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const v17, 0x7f090c92

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090c94

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x7

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090c93

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 419
    :cond_2
    const v16, 0x7f02001e

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lcom/android/settings/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v6

    .line 420
    .local v6, "message_str":Landroid/text/SpannableString;
    if-eqz v6, :cond_8

    .line 421
    invoke-virtual {v2, v6}, Lcom/android/settings/HelpItem;->setContentText(Landroid/text/SpannableString;)V

    .line 425
    :goto_2
    const v16, 0x7f020464

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 427
    invoke-virtual {v2}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 429
    new-instance v14, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 430
    .local v14, "third":Lcom/android/settings/HelpItem;
    const v16, 0x7f090c81

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 431
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const v17, 0x7f090c9b

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090c8d

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n- "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090cd3

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n- "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090cdc

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 435
    .local v5, "mGuideContent":Ljava/lang/String;
    invoke-virtual {v14, v5}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 436
    const v16, 0x7f02001f

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 437
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 438
    invoke-virtual {v14}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 440
    new-instance v13, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 441
    .local v13, "second":Lcom/android/settings/HelpItem;
    const v16, 0x7f090c83

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 442
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const v17, 0x7f090c9d

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090c8d

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n- "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090ce3

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n- "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090ce6

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n- "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090ce9

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n- "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090ceb

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n- "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090cee

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 449
    invoke-virtual {v13, v5}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 450
    const v16, 0x7f020020

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 451
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 452
    invoke-virtual {v13}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 454
    new-instance v3, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 455
    .local v3, "fourth":Lcom/android/settings/HelpItem;
    const v16, 0x7f090ca0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 456
    const-string v16, "ATT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    const-string v16, "SPR"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    const-string v16, "VZW"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    const-string v16, "TMB"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    const-string v16, "USC"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 457
    :cond_3
    const v16, 0x7f090ca2

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 460
    :cond_4
    const v16, 0x7f090c85

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 461
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 462
    const v16, 0x7f02001b

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 463
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 464
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 467
    new-instance v1, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v1, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 468
    .local v1, "fifth":Lcom/android/settings/HelpItem;
    const v16, 0x7f09000f

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 469
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 470
    invoke-virtual {v1, v5}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 471
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 472
    invoke-virtual {v1}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 475
    .end local v1    # "fifth":Lcom/android/settings/HelpItem;
    :cond_5
    return-object v15

    .line 397
    .end local v3    # "fourth":Lcom/android/settings/HelpItem;
    .end local v5    # "mGuideContent":Ljava/lang/String;
    .end local v6    # "message_str":Landroid/text/SpannableString;
    .end local v7    # "original_str":Ljava/lang/String;
    .end local v9    # "part3":Ljava/lang/String;
    .end local v10    # "proper_distance":I
    .end local v12    # "salesCode":Ljava/lang/String;
    .end local v13    # "second":Lcom/android/settings/HelpItem;
    .end local v14    # "third":Lcom/android/settings/HelpItem;
    :cond_6
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ". "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 411
    .restart local v9    # "part3":Ljava/lang/String;
    .restart local v10    # "proper_distance":I
    .restart local v12    # "salesCode":Ljava/lang/String;
    :cond_7
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 423
    .restart local v6    # "message_str":Landroid/text/SpannableString;
    .restart local v7    # "original_str":Ljava/lang/String;
    :cond_8
    const v16, 0x7f090c91

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setContentText(I)V

    goto/16 :goto_2
.end method

.method public makeAirViewLayout()Landroid/view/View;
    .locals 10

    .prologue
    .line 319
    const/4 v6, 0x0

    .line 320
    .local v6, "view":Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040080

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 321
    const v7, 0x7f0b0191

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 333
    .local v1, "helpContent":Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v2, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 334
    .local v2, "infoPreview":Lcom/android/settings/HelpItem;
    const v7, 0x7f090d04

    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 335
    const v7, 0x7f090d05

    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 336
    const v7, 0x7f0203b7

    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 338
    invoke-virtual {v2}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 342
    .local v0, "barPreview":Lcom/android/settings/HelpItem;
    const v7, 0x7f090d0d

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 343
    const v7, 0x7f090d0e

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 344
    const v7, 0x7f0203b4

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 346
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 349
    new-instance v5, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v5, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 350
    .local v5, "speedPreview":Lcom/android/settings/HelpItem;
    const v7, 0x7f090d0f

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 351
    const v7, 0x7f090d10

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 352
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    .line 353
    .local v4, "salesCode":Ljava/lang/String;
    const-string v7, "ATT"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "SPR"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "VZW"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "TMB"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "USC"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 355
    :cond_0
    const v7, 0x7f0203b6

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 360
    :goto_0
    invoke-virtual {v5}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 363
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 364
    .local v3, "magniPreview":Lcom/android/settings/HelpItem;
    const v7, 0x7f090d00

    invoke-virtual {v3, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 365
    const v7, 0x7f090d01

    invoke-virtual {v3, v7}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 366
    const v7, 0x7f0203b3

    invoke-virtual {v3, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 368
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 380
    return-object v6

    .line 357
    .end local v3    # "magniPreview":Lcom/android/settings/HelpItem;
    :cond_1
    const v7, 0x7f0203b5

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    goto :goto_0
.end method

.method public makeEasyModeLayout()Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 685
    .line 686
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 687
    const v0, 0x7f0b0191

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 689
    const v1, 0x7f090010

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 691
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 694
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 695
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 696
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 697
    const v1, 0x7f0203c2

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 699
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 701
    return-object v2
.end method

.method public makeMultiWindowLayout()Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 750
    .line 751
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 752
    const v0, 0x7f0b0191

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 754
    const v1, 0x7f0904fd

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 756
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 757
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 758
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 759
    const v1, 0x7f0202f1

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 760
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 762
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 764
    new-instance v1, Lcom/android/settings/HelpItem;

    iget-object v3, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v1, v3}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 765
    invoke-virtual {v1, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 766
    invoke-virtual {v1, v5}, Lcom/android/settings/HelpItem;->setContentVisibility(I)V

    .line 767
    const v3, 0x7f0202f2

    invoke-virtual {v1, v3}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 768
    invoke-virtual {v1, v5}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 770
    invoke-virtual {v1}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 772
    return-object v2
.end method

.method public makeOPModeLayout()Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 706
    .line 707
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 708
    const v0, 0x7f0b0191

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 710
    const v1, 0x7f091032

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 712
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 715
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 716
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 717
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 718
    const v1, 0x7f0203c3

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 719
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 721
    return-object v2
.end method

.method public makeSBeamLayout()Landroid/view/View;
    .locals 8

    .prologue
    .line 296
    const/4 v4, 0x0

    .line 297
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040080

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 298
    const v5, 0x7f0b0191

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 300
    .local v1, "helpContent":Landroid/widget/LinearLayout;
    const v5, 0x7f090274

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 302
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.snotebook"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 303
    .local v2, "i":Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 304
    const v5, 0x7f090275

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3    # "s":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 307
    .restart local v3    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v5}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 308
    .local v0, "first":Lcom/android/settings/HelpItem;
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 309
    invoke-virtual {v0, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 310
    const v5, 0x7f050009

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 311
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 312
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 314
    return-object v4
.end method

.method public makeSmartBlockLayout()Landroid/view/View;
    .locals 3

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04009c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 727
    return-object v0
.end method

.method public makeSmartPauseLayout()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 609
    const/4 v4, 0x0

    .line 610
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040080

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 611
    const v5, 0x7f0b0191

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 613
    .local v1, "helpContent":Landroid/widget/LinearLayout;
    const v5, 0x7f090e54

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 615
    .local v2, "s":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v5}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 616
    .local v0, "first":Lcom/android/settings/HelpItem;
    invoke-virtual {v0, v8}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 617
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 618
    const v5, 0x7f020421

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 619
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 620
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 622
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f090e55

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 623
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v5, 0x7f090e56

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 624
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v5, 0x7f090e57

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 625
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v5, 0x7f090e58

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 627
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v5}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 628
    .local v3, "second":Lcom/android/settings/HelpItem;
    invoke-virtual {v3, v8}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 629
    invoke-virtual {v3, v8}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 630
    invoke-virtual {v3, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 633
    return-object v4
.end method

.method public makeSmartScrollLayout()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 638
    .line 639
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 640
    const v0, 0x7f0b0191

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 642
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090e5c

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 643
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f090e5d

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f090e5e

    invoke-virtual {p0, v3}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 645
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f090e5f

    invoke-virtual {p0, v3}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 646
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f090e60

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 647
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f090e61

    invoke-virtual {p0, v3}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 649
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 650
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 651
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 652
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 656
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 657
    const v1, 0x7f090e6b

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 658
    const v1, 0x7f090e62

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 659
    const v1, 0x7f020423

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 660
    invoke-virtual {v3, v6}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 661
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 663
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 664
    const v1, 0x7f090e6a

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 665
    const v1, 0x7f090e63

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 666
    const v1, 0x7f020422

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 667
    invoke-virtual {v3, v6}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 668
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 670
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090e64

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 671
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f090e65

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f090e66

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 673
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f090e67

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 675
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 676
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 677
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 678
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 679
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 681
    return-object v2
.end method

.method public makeSmartStayLayout()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 580
    const/4 v4, 0x0

    .line 581
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040080

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 582
    const v5, 0x7f0b0191

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 584
    .local v1, "helpContent":Landroid/widget/LinearLayout;
    const v5, 0x7f090e31

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 586
    .local v2, "s":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v5}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 587
    .local v0, "first":Lcom/android/settings/HelpItem;
    invoke-virtual {v0, v8}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 588
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 589
    const v5, 0x7f02041a

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 590
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 591
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 593
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f090e32

    invoke-virtual {p0, v6}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 594
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090e33

    invoke-virtual {p0, v6}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 595
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090e34

    invoke-virtual {p0, v6}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 596
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090e35

    invoke-virtual {p0, v6}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 598
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v5}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 599
    .local v3, "second":Lcom/android/settings/HelpItem;
    invoke-virtual {v3, v8}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 600
    invoke-virtual {v3, v8}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 601
    invoke-virtual {v3, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 604
    return-object v4
.end method

.method public makeVoiceCmdLayout()Landroid/view/View;
    .locals 15

    .prologue
    .line 492
    const/4 v11, 0x0

    .line 493
    .local v11, "view":Landroid/view/View;
    iget-object v12, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v13, 0x7f040080

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 494
    const v12, 0x7f0b0191

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 495
    .local v7, "helpContent":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    .line 497
    .local v0, "c":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "com.vlingo.midas"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 504
    :goto_0
    const-string v12, "voice_input_control_incomming_calls"

    invoke-virtual {p0, v0, v12}, Lcom/android/settings/FeatureSettings;->getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 505
    .local v10, "title":Ljava/lang/String;
    const-string v12, "voice_input_control_incomming_calls_summary"

    invoke-virtual {p0, v0, v12}, Lcom/android/settings/FeatureSettings;->getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, "contents":Ljava/lang/String;
    new-instance v5, Lcom/android/settings/HelpItem;

    iget-object v12, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v5, v12}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 509
    .local v5, "first":Lcom/android/settings/HelpItem;
    invoke-virtual {v5, v10}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v5, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 511
    const/16 v12, 0x8

    invoke-virtual {v5, v12}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 512
    const-string v12, ""

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, ""

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 513
    invoke-virtual {v5}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 516
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "com.coolots.chaton"

    invoke-static {v12, v13}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v12

    if-nez v12, :cond_1

    .line 518
    const-string v12, "voice_input_control_chatonv"

    invoke-virtual {p0, v0, v12}, Lcom/android/settings/FeatureSettings;->getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 519
    const-string v12, "voice_input_control_chatonv_summary"

    invoke-virtual {p0, v0, v12}, Lcom/android/settings/FeatureSettings;->getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 522
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v12, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v12}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 523
    .local v3, "extra":Lcom/android/settings/HelpItem;
    invoke-virtual {v3, v10}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 525
    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 526
    const-string v12, ""

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, ""

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 527
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 532
    .end local v3    # "extra":Lcom/android/settings/HelpItem;
    :cond_1
    const-string v12, "voice_input_control_alarm"

    invoke-virtual {p0, v0, v12}, Lcom/android/settings/FeatureSettings;->getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 533
    const-string v12, "voice_input_control_alarm_summary"

    invoke-virtual {p0, v0, v12}, Lcom/android/settings/FeatureSettings;->getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
    new-instance v8, Lcom/android/settings/HelpItem;

    iget-object v12, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v8, v12}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 537
    .local v8, "second":Lcom/android/settings/HelpItem;
    invoke-virtual {v8, v10}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v8, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 539
    const/16 v12, 0x8

    invoke-virtual {v8, v12}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 540
    const-string v12, ""

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, ""

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 541
    invoke-virtual {v8}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 545
    :cond_2
    const-string v12, "voice_input_control_camera"

    invoke-virtual {p0, v0, v12}, Lcom/android/settings/FeatureSettings;->getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 546
    const-string v12, "voice_input_control_camera_summary"

    invoke-virtual {p0, v0, v12}, Lcom/android/settings/FeatureSettings;->getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 548
    new-instance v9, Lcom/android/settings/HelpItem;

    iget-object v12, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v9, v12}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 549
    .local v9, "third":Lcom/android/settings/HelpItem;
    invoke-virtual {v9, v10}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v9, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 551
    const/16 v12, 0x8

    invoke-virtual {v9, v12}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 552
    const-string v12, ""

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, ""

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 553
    invoke-virtual {v9}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 557
    :cond_3
    const-string v12, "voice_input_control_music"

    invoke-virtual {p0, v0, v12}, Lcom/android/settings/FeatureSettings;->getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 558
    const-string v12, "voice_input_control_music_summary"

    invoke-virtual {p0, v0, v12}, Lcom/android/settings/FeatureSettings;->getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 560
    new-instance v6, Lcom/android/settings/HelpItem;

    iget-object v12, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v6, v12}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 561
    .local v6, "fourth":Lcom/android/settings/HelpItem;
    invoke-virtual {v6, v10}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v6, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 563
    const/16 v12, 0x8

    invoke-virtual {v6, v12}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 564
    const-string v12, ""

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, ""

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 565
    invoke-virtual {v6}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 568
    :cond_4
    new-instance v4, Lcom/android/settings/HelpItem;

    iget-object v12, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v4, v12}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 569
    .local v4, "fifth":Lcom/android/settings/HelpItem;
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 570
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 571
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Lcom/android/settings/HelpItem;->setContentVisibility(I)V

    .line 572
    const v12, 0x7f020539

    invoke-virtual {v4, v12}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 573
    invoke-virtual {v4}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 575
    return-object v11

    .line 498
    .end local v1    # "contents":Ljava/lang/String;
    .end local v4    # "fifth":Lcom/android/settings/HelpItem;
    .end local v5    # "first":Lcom/android/settings/HelpItem;
    .end local v6    # "fourth":Lcom/android/settings/HelpItem;
    .end local v8    # "second":Lcom/android/settings/HelpItem;
    .end local v9    # "third":Lcom/android/settings/HelpItem;
    .end local v10    # "title":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 500
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "FeatureSettings"

    const-string v2, "talkback is enabled, so samsung features are off"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "option_flag"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 120
    .local v0, "mDisableExclusiveOptionsFlag":I
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 123
    .end local v0    # "mDisableExclusiveOptionsFlag":I
    :cond_0
    const v1, 0x7f07003e

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->addPreferencesFromResource(I)V

    .line 125
    const-string v1, "sbeam"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 126
    const-string v1, "air_view"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    .line 127
    const-string v1, "air_motion"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    .line 128
    const-string v1, "voice_cmd"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    .line 129
    const-string v1, "smart_stay"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    .line 130
    const-string v1, "smart_pause"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    .line 131
    const-string v1, "smart_scroll"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    .line 132
    const-string v1, "easy_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    .line 133
    const-string v1, "op_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    .line 134
    const-string v1, "smart_block"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    .line 135
    const-string v1, "adapt_display"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    .line 136
    const-string v1, "multi_window"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    .line 140
    new-instance v1, Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/nfc/SBeamEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;)V

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 141
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 265
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const v6, 0x104000a

    const/high16 v5, 0x1040000

    const v4, 0x7f090e80

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 825
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 826
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 827
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "sbeam_mode"

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 973
    :cond_1
    :goto_0
    return v1

    .line 828
    :cond_2
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 829
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 830
    const v0, 0x7f090cfb

    const v2, 0x7f090bb4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto :goto_0

    .line 832
    :cond_3
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "finger_air_view"

    if-eqz v3, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 834
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 835
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 836
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 838
    :cond_5
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 839
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 840
    const v0, 0x7f090c75

    const v2, 0x7f090c79

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto :goto_0

    .line 842
    :cond_6
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_engine"

    if-eqz v3, :cond_8

    move v2, v1

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 843
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 844
    const-string v4, "isEnable"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 845
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 847
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_scroll"

    if-eqz v3, :cond_9

    move v2, v1

    :goto_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 848
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 849
    const-string v4, "isEnable"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 850
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 852
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn"

    if-eqz v3, :cond_a

    move v2, v1

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 853
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 854
    const-string v4, "isEnable"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 855
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 857
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_item_move"

    if-eqz v3, :cond_7

    move v0, v1

    :cond_7
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 858
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_MOVE_SETTINGS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 859
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 860
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    move v2, v0

    .line 842
    goto :goto_1

    :cond_9
    move v2, v0

    .line 847
    goto :goto_2

    :cond_a
    move v2, v0

    .line 852
    goto :goto_3

    .line 869
    :cond_b
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 870
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "voice_input_control"

    if-eqz v3, :cond_c

    move v0, v1

    :cond_c
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 871
    :cond_d
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 872
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 873
    const v0, 0x7f090e2d

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v4, v2}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 875
    :cond_e
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_sleep_mode"

    if-eqz v3, :cond_f

    move v0, v1

    :cond_f
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 877
    :cond_10
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 878
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 879
    const v0, 0x7f090e3a

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v4, v2}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 881
    :cond_11
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_pause"

    if-eqz v3, :cond_12

    move v0, v1

    :cond_12
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 883
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 884
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 885
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 887
    :cond_13
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 888
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 889
    const v0, 0x7f090e3c

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v4, v2}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 891
    :cond_14
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll"

    if-eqz v3, :cond_15

    move v0, v1

    :cond_15
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 893
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 894
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 895
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 897
    :cond_16
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 898
    if-eqz v3, :cond_17

    .line 900
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 901
    const v2, 0x7f091025

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 902
    const v2, 0x7f090010

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 903
    new-instance v2, Lcom/android/settings/FeatureSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$3;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 909
    new-instance v2, Lcom/android/settings/FeatureSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$4;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 915
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 917
    :cond_17
    invoke-direct {p0, v0}, Lcom/android/settings/FeatureSettings;->turnOnEasyMode(Z)V

    goto/16 :goto_0

    .line 920
    :cond_18
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 921
    if-eqz v3, :cond_19

    .line 923
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 924
    const v2, 0x7f09102f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 925
    const v2, 0x7f091032

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 926
    new-instance v2, Lcom/android/settings/FeatureSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$5;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 932
    new-instance v2, Lcom/android/settings/FeatureSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$6;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 938
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 940
    :cond_19
    invoke-direct {p0, v0}, Lcom/android/settings/FeatureSettings;->turnOnOPMode(Z)V

    goto/16 :goto_0

    .line 943
    :cond_1a
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 944
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "key_spam_smart"

    if-eqz v3, :cond_1b

    move v0, v1

    :cond_1b
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 946
    :cond_1c
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 947
    if-eqz v3, :cond_1d

    .line 951
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 953
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_mode_automatic_setting"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 955
    :cond_1d
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_mode_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 956
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_mode_automatic_setting"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 959
    :cond_1e
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 960
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 961
    const v0, 0x7f090bb1

    const v2, 0x7f090bb2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 963
    :cond_1f
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_window_enabled"

    if-eqz v3, :cond_20

    move v2, v1

    :goto_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 964
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 965
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 966
    new-instance v2, Lcom/android/settings/FeatureSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$7;-><init>(Lcom/android/settings/FeatureSettings;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_20
    move v2, v0

    .line 963
    goto :goto_4
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSBeamLayout()Landroid/view/View;

    move-result-object v0

    .line 780
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09026f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    .line 819
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 782
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeAirViewLayout()Landroid/view/View;

    move-result-object v0

    .line 783
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090bb5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 784
    :cond_2
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 785
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeAirMotionLayout()Landroid/view/View;

    move-result-object v0

    .line 786
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090c75

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 787
    :cond_3
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 788
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeVoiceCmdLayout()Landroid/view/View;

    move-result-object v0

    .line 789
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090f4c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 790
    :cond_4
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 791
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSmartStayLayout()Landroid/view/View;

    move-result-object v0

    .line 792
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090e2d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 793
    :cond_5
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 794
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSmartPauseLayout()Landroid/view/View;

    move-result-object v0

    .line 795
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090e3a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 796
    :cond_6
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 797
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSmartScrollLayout()Landroid/view/View;

    move-result-object v0

    .line 798
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090e3c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 799
    :cond_7
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 800
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeEasyModeLayout()Landroid/view/View;

    move-result-object v0

    .line 801
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f091015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 803
    :cond_8
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 804
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSmartBlockLayout()Landroid/view/View;

    move-result-object v0

    .line 805
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090e3e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 807
    :cond_9
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 808
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeAdaptDisplayLayout()Landroid/view/View;

    move-result-object v0

    .line 809
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a8c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 811
    :cond_a
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 812
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeOPModeLayout()Landroid/view/View;

    move-result-object v0

    .line 813
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09102d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 815
    :cond_b
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeMultiWindowLayout()Landroid/view/View;

    move-result-object v0

    .line 817
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 252
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 256
    invoke-direct {p0}, Lcom/android/settings/FeatureSettings;->initUI()V

    .line 257
    return-void
.end method

.method public showGuideDialog(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "layout"    # Landroid/view/View;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 269
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 271
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 273
    iput-object v2, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 278
    iput-object v2, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 281
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 282
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 284
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/FeatureSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$2;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 291
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 292
    return-void
.end method
