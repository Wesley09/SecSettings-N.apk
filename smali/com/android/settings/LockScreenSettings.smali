.class public Lcom/android/settings/LockScreenSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockScreenSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private isMyprofile:I

.field private mClockMyprofile:Landroid/preference/PreferenceScreen;

.field private mClockSize:Landroid/preference/ListPreference;

.field private mDateAndYear:Landroid/preference/CheckBoxPreference;

.field private mDualclock:Landroid/preference/SwitchPreferenceScreen;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEditClock:Landroid/preference/PreferenceScreen;

.field private mHelpText:Landroid/preference/CheckBoxPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMyprofile:Landroid/preference/PreferenceScreen;

.field private mOwnerInfo:Landroid/preference/PreferenceScreen;

.field private mSayCommand:Landroid/preference/CheckBoxPreference;

.field private mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

.field private mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 123
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 126
    :cond_0
    const v1, 0x7f07004e

    invoke-virtual {p0, v1}, Lcom/android/settings/LockScreenSettings;->addPreferencesFromResource(I)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 129
    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 135
    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private updateClockSizeSummary()V
    .locals 5

    .prologue
    .line 373
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 374
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_clock_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 375
    .local v0, "State":I
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 376
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 377
    return-void
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 258
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_0

    .line 259
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "dualclock_menu_settings"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "lock_screen_clock_size"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 263
    .local v0, "mClockSizeValue":I
    const-string v1, "LockScreenSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mClockSizeValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 266
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 267
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateClockSizeSummary()V

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v1, :cond_3

    .line 271
    iget v1, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-ne v1, v2, :cond_3

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 275
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_2

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 277
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    :cond_3
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    .line 282
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "unlock_text"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 284
    :cond_4
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 285
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "wake_up_lock_screen"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 287
    :cond_5
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_6

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "kg_enable_camera_widget_type"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_c

    .line 289
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09103f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_7

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "my_profile_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_d

    .line 297
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d37

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 303
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_8

    .line 304
    iget v1, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-ne v1, v2, :cond_e

    .line 305
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f09104a

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 311
    :cond_8
    :goto_5
    return-void

    .end local v0    # "mClockSizeValue":I
    :cond_9
    move v1, v3

    .line 259
    goto/16 :goto_0

    .restart local v0    # "mClockSizeValue":I
    :cond_a
    move v1, v3

    .line 282
    goto :goto_1

    :cond_b
    move v1, v3

    .line 285
    goto :goto_2

    .line 292
    :cond_c
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09103e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 300
    :cond_d
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a83

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 307
    :cond_e
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f091049

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto :goto_5
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockScreenSettings;->resolver:Landroid/content/ContentResolver;

    .line 113
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 119
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 345
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "key":Ljava/lang/String;
    const-string v3, "dualclock_settings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 347
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 348
    .local v1, "value":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dualclock_menu_settings"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 369
    .end local v1    # "value":I
    :cond_1
    :goto_0
    return v2

    .line 350
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    const-string v3, "lock_screen_profile"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 351
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 352
    .restart local v1    # "value":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "my_profile_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 354
    .end local v1    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    const-string v3, "lock_screen_short_or_camera_widget"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 356
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    :cond_5
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    .line 360
    .restart local v1    # "value":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kg_enable_camera_widget"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 365
    .end local v1    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_7
    iget-object v3, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_clock_size"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateClockSizeSummary()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 315
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "unlock_text"

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 341
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_1
    move v2, v3

    .line 316
    goto :goto_0

    .line 317
    :cond_2
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wake_up_lock_screen"

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    .line 319
    :cond_4
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 320
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 321
    .local v0, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings.ShortCameraMenu"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 323
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 324
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 325
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.ClockMyprofileMenuTablet"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 328
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.ClockMyprofileMenu"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 331
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mEditClock:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 335
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_date_and_year"

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_8

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_8
    move v2, v3

    goto :goto_3

    .line 337
    :cond_9
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    const v2, 0x7f090174

    invoke-static {v2}, Lcom/android/settings/OwnerInfoSettings;->newInstance(I)Lcom/android/settings/OwnerInfoSettings;

    move-result-object v1

    .line 339
    .local v1, "newFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 143
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 144
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 147
    const-string v4, "lock_screen_short_or_camera_widget"

    invoke-virtual {p0, v4}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    .line 148
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 150
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 152
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 153
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 163
    :goto_0
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "u0lte"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 168
    :goto_1
    const-string v4, "lock_screen_clock_or_myprofile"

    invoke-virtual {p0, v4}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    .line 169
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/MiscPolicy;->getCurrentLockScreenString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 173
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 181
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->resolver:Landroid/content/ContentResolver;

    const-string v7, "my_profile_enabled"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    .line 183
    const-string v4, "lock_screen_widget_options_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    .line 184
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_1

    .line 185
    iget v4, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-ne v4, v5, :cond_13

    .line 186
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v7, 0x7f09104a

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 192
    :cond_1
    :goto_3
    const-string v4, "lock_screen_profile"

    invoke-virtual {p0, v4}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    .line 193
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_2

    .line 194
    iget v4, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-nez v4, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    :cond_2
    const-string v4, "clock_size"

    invoke-virtual {p0, v4}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    .line 201
    const-string v4, "lock_screen_date_and_year"

    invoke-virtual {p0, v4}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    .line 202
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_3

    .line 203
    iget-object v7, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "lock_screen_date_and_year"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_14

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 205
    :cond_3
    const-string v4, "owner_info_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    .line 208
    const-string v4, "dualclock_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    .line 209
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 211
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 213
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    const-string v4, "LockScreenSettings"

    const-string v7, " remove Dualclock menu"

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_5
    const-string v4, "help_text"

    invoke-virtual {p0, v4}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    .line 218
    const-string v4, "say_your_wakeup"

    invoke-virtual {p0, v4}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    .line 220
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_6

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 224
    :cond_6
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_7

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 229
    :cond_7
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f091069

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 233
    const-string v4, "set_wakeup_command"

    invoke-virtual {p0, v4}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 234
    .local v2, "setWakeupCommand":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_8

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v4, "feature_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 241
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateState()V

    .line 244
    const/4 v3, 0x1

    .line 246
    .local v3, "svoice_state":Z
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 247
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v4

    if-eqz v4, :cond_15

    move v3, v5

    .line 249
    :cond_9
    :goto_5
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_a

    .line 250
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 251
    :cond_a
    if-eqz v2, :cond_b

    .line 252
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 254
    :cond_b
    return-void

    .line 156
    .end local v2    # "setWakeupCommand":Landroid/preference/PreferenceScreen;
    .end local v3    # "svoice_state":Z
    :cond_c
    iget-object v7, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->resolver:Landroid/content/ContentResolver;

    const-string v8, "kg_enable_camera_widget"

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_d

    move v4, v5

    :goto_6
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "kg_multiple_lockscreen"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_e

    move v0, v5

    .line 158
    .local v0, "isMultiple":Z
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "is_secured_lock"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_f

    move v1, v5

    .line 159
    .local v1, "isSecured":Z
    :goto_8
    iget-object v7, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_10

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_10

    move v4, v5

    :goto_9
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .end local v0    # "isMultiple":Z
    .end local v1    # "isSecured":Z
    :cond_d
    move v4, v6

    .line 156
    goto :goto_6

    :cond_e
    move v0, v6

    .line 157
    goto :goto_7

    .restart local v0    # "isMultiple":Z
    :cond_f
    move v1, v6

    .line 158
    goto :goto_8

    .restart local v1    # "isSecured":Z
    :cond_10
    move v4, v6

    .line 159
    goto :goto_9

    .line 165
    .end local v0    # "isMultiple":Z
    .end local v1    # "isSecured":Z
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 176
    :cond_12
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_2

    .line 188
    :cond_13
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v7, 0x7f091049

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto/16 :goto_3

    :cond_14
    move v4, v6

    .line 203
    goto/16 :goto_4

    .restart local v2    # "setWakeupCommand":Landroid/preference/PreferenceScreen;
    .restart local v3    # "svoice_state":Z
    :cond_15
    move v3, v6

    .line 247
    goto :goto_5
.end method
