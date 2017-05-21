.class public Lcom/android/settings/LockscreenMenuSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private bRegisterReceiver:Z

.field private isDeviceLockTime:Z

.field private mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceLockDialog:Landroid/app/AlertDialog;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private mDualclock:Landroid/preference/SwitchPreferenceScreen;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mFingerPrint:Landroid/preference/PreferenceScreen;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHelpText:Landroid/preference/CheckBoxPreference;

.field private mInkEffect:Landroid/preference/PreferenceScreen;

.field mInkEffectSummary:[I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

.field private mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

.field private mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mQuicknote:Landroid/preference/CheckBoxPreference;

.field private mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

.field private mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

.field private mSafetyZoneLocktype:Ljava/lang/String;

.field private mSafetyZoneObserver:Landroid/database/ContentObserver;

.field private mSayCommand:Landroid/preference/CheckBoxPreference;

.field private mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

.field private mSignatureVerificationLevel:Landroid/preference/ListPreference;

.field private mTactileFeedback:Landroid/preference/CheckBoxPreference;

.field private mUnlockEffect:Landroid/preference/ListPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mVisibleSignature:Landroid/preference/CheckBoxPreference;

.field private setWakeupCommand:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 145
    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 156
    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    .line 157
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    .line 158
    iput-boolean v2, p0, Lcom/android/settings/LockscreenMenuSettings;->bRegisterReceiver:Z

    .line 166
    iput v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    .line 167
    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    .line 170
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffectSummary:[I

    .line 181
    new-instance v0, Lcom/android/settings/LockscreenMenuSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/LockscreenMenuSettings$1;-><init>(Lcom/android/settings/LockscreenMenuSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneObserver:Landroid/database/ContentObserver;

    .line 188
    new-instance v0, Lcom/android/settings/LockscreenMenuSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/LockscreenMenuSettings$2;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 170
    :array_0
    .array-data 4
        0x7f091000
        0x7f091001
        0x7f091002
        0x7f091003
        0x7f091004
        0x7f091005
        0x7f091006
        0x7f091007
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/LockscreenMenuSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/LockscreenMenuSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/LockscreenMenuSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/LockscreenMenuSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->showSafetyZoneEnableDialog()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 13

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 234
    .local v7, "root":Landroid/preference/PreferenceScreen;
    if-eqz v7, :cond_0

    .line 235
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 237
    :cond_0
    const v9, 0x7f070076

    invoke-virtual {p0, v9}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 241
    const/4 v6, 0x0

    .line 242
    .local v6, "resid":I
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v9

    if-nez v9, :cond_19

    .line 243
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 244
    const v6, 0x7f07007e

    .line 283
    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 285
    const-string v9, "lock_screen_options_category"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 287
    .local v0, "ca":Landroid/preference/PreferenceCategory;
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v9

    if-nez v9, :cond_1

    .line 288
    new-instance v9, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    .line 289
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    const-string v10, "multiple_lock_screen"

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 290
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f091034

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 291
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f091035

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 292
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 293
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 294
    if-eqz v0, :cond_1

    .line 295
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 300
    :cond_1
    const-string v9, "lock_after_timeout"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 301
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    if-eqz v9, :cond_3

    .line 303
    iget-boolean v9, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v9, :cond_2

    .line 304
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f090026

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 305
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f090026

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 306
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f0a0016

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 307
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f0a0017

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 310
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->setupLockAfterPreference()V

    .line 311
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->updateLockAfterPreferenceSummary()V

    .line 315
    :cond_3
    const-string v9, "biometric_weak_liveliness"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    .line 319
    const-string v9, "visiblepattern"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 321
    const-string v9, "power_button_instantly_locks"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 325
    const v9, 0x7f070077

    if-eq v6, v9, :cond_4

    const v9, 0x7f070086

    if-ne v6, v9, :cond_5

    :cond_4
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v9

    const/high16 v10, 0x10000

    if-eq v9, v10, :cond_5

    .line 328
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_5

    .line 329
    const-string v9, "visiblepattern"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 334
    :cond_5
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_6

    .line 335
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 336
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 342
    :cond_6
    const-string v9, "owner_info_settings"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    .line 343
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_7

    .line 344
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 347
    :cond_7
    const-string v9, "lock_screen_widget_options"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    .line 349
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1c

    const-string v9, "ro.product.name"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "u0lte"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1c

    .line 355
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_8

    .line 356
    iget-object v10, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "easy_mode_switch"

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_1d

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 361
    :cond_8
    :goto_2
    const-string v9, "quick_note"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    .line 362
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_9

    const v9, 0x7f07007e

    if-eq v6, v9, :cond_9

    .line 364
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 367
    :cond_9
    const-string v9, "visiblesignature"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    .line 368
    const-string v9, "signature_verification_level"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    .line 369
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v9, :cond_a

    .line 370
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/settings/LockscreenMenuSettings;->setupSignatureVerificationLevelPreference(Z)V

    .line 374
    :cond_a
    const-string v9, "unlock_tactile_feedback"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    .line 375
    const-string v9, "vibrator"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    invoke-virtual {v9}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v9

    if-nez v9, :cond_b

    .line 376
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_b

    .line 377
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 382
    :cond_b
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v9

    if-nez v9, :cond_1f

    .line 383
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v9

    if-nez v9, :cond_1e

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_motion_tilt_to_unlock"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_c

    .line 385
    const-string v9, "unlock_set_or_change"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 386
    .local v1, "configureLockScreenPreference":Landroid/preference/PreferenceScreen;
    const v9, 0x7f090c05

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 387
    const v9, 0x7f090c05

    invoke-virtual {p0, v9}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    .line 412
    .end local v1    # "configureLockScreenPreference":Landroid/preference/PreferenceScreen;
    :cond_c
    :goto_3
    iget-boolean v9, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_d

    .line 413
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 416
    :cond_d
    const-string v9, "LockScreenMenu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mLockPatternUtils.isSecure(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "is_secured_lock"

    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v9

    if-eqz v9, :cond_21

    const/4 v9, 0x1

    :goto_4
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 421
    const-string v9, "dualclock_settings"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    .line 422
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_e

    .line 423
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v9

    if-eqz v9, :cond_23

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_23

    .line 424
    iget-object v10, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "dualclock_menu_settings"

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_22

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 425
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 431
    :cond_e
    :goto_6
    const-string v9, "safetyzone_settings"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    .line 432
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_f

    .line 433
    iget-object v10, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "easy_mode_switch"

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_24

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 435
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 446
    :cond_f
    const-string v9, "lock_screen_shortcut_menu"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    .line 448
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_11

    .line 449
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 450
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v9

    if-nez v9, :cond_10

    const-string v9, "Germany"

    const-string v10, "ro.csc.country_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    const-string v9, "Australia"

    const-string v10, "ro.csc.country_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 453
    :cond_10
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_11

    .line 454
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 458
    :cond_11
    const-string v9, "unlock_effect"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lockscreen_ripple_effect"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 460
    .local v4, "mDefaultUnlock":I
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v9, :cond_12

    .line 484
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v9, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 485
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 486
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->updateRippleEffectPreferenceSummary()V

    .line 489
    :cond_12
    const-string v9, "ink_effect"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    .line 490
    const-string v9, "lock_screen_finger_print"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/PreferenceScreen;

    .line 491
    const-string v9, "help_text"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    .line 492
    const-string v9, "say_your_wakeup"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    .line 494
    const v9, 0x7f070079

    if-ne v6, v9, :cond_17

    .line 495
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_13

    .line 497
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f091069

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 501
    :cond_13
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v9, :cond_14

    .line 506
    :cond_14
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_15

    .line 508
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 513
    :cond_15
    const-string v9, "set_wakeup_command"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    .line 514
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_17

    .line 515
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 516
    .local v8, "set_wakeup_commant_intent":Landroid/content/Intent;
    if-eqz v8, :cond_17

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 518
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 519
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_17

    .line 520
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_16

    .line 521
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 522
    :cond_16
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_17

    .line 523
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 529
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "set_wakeup_commant_intent":Landroid/content/Intent;
    :cond_17
    return-object v7

    .line 246
    .end local v0    # "ca":Landroid/preference/PreferenceCategory;
    .end local v4    # "mDefaultUnlock":I
    :cond_18
    const v6, 0x7f070079

    .line 247
    const v9, 0x7f09019d

    invoke-virtual {p0, v9}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto/16 :goto_0

    .line 249
    :cond_19
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 251
    const v6, 0x7f070077

    .line 252
    const v9, 0x7f0901d2

    invoke-virtual {p0, v9}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto/16 :goto_0

    .line 253
    :cond_1a
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v9

    if-eqz v9, :cond_1b

    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 255
    const v6, 0x7f070086

    .line 256
    const v9, 0x7f0901d3

    invoke-virtual {p0, v9}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto/16 :goto_0

    .line 258
    :cond_1b
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 281
    :goto_8
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_motion_tilt_to_unlock"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 260
    :sswitch_0
    const v6, 0x7f070082

    .line 261
    const v9, 0x7f0901a4

    invoke-virtual {p0, v9}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_8

    .line 264
    :sswitch_1
    const v6, 0x7f07007d

    .line 265
    const v9, 0x7f09133b

    invoke-virtual {p0, v9}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_8

    .line 268
    :sswitch_2
    const v6, 0x7f070084

    .line 269
    const v9, 0x7f0901cb

    invoke-virtual {p0, v9}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_8

    .line 274
    :sswitch_3
    const v6, 0x7f070081

    .line 275
    const v9, 0x7f0901cd

    invoke-virtual {p0, v9}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_8

    .line 278
    :sswitch_4
    const v6, 0x7f070078

    goto :goto_8

    .line 351
    .restart local v0    # "ca":Landroid/preference/PreferenceCategory;
    :cond_1c
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_8

    .line 352
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    const v10, 0x7f09103d

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_2

    .line 356
    :cond_1d
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 390
    :cond_1e
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_motion_tilt_to_unlock"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 396
    :cond_1f
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_motion_tilt_to_unlock"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    .line 401
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_face_with_voice"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 403
    .local v2, "isfacevalue":I
    const/4 v9, 0x1

    if-ne v2, v9, :cond_20

    .line 404
    const-string v9, "unlock_set_or_change"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 405
    .restart local v1    # "configureLockScreenPreference":Landroid/preference/PreferenceScreen;
    const v9, 0x7f0901a1

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 406
    const v9, 0x7f0901a1

    invoke-virtual {p0, v9}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    .line 408
    .end local v1    # "configureLockScreenPreference":Landroid/preference/PreferenceScreen;
    :cond_20
    const-string v9, "LockScreenMenu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mLockPatternUtils.usingBiometricWeak(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 417
    .end local v2    # "isfacevalue":I
    :cond_21
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 424
    :cond_22
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 427
    :cond_23
    iget-object v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 433
    :cond_24
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 258
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_2
        0x40000 -> :sswitch_3
        0x50000 -> :sswitch_3
        0x60000 -> :sswitch_3
        0x70000 -> :sswitch_4
        0x80000 -> :sswitch_1
    .end sparse-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 17
    .param p1, "maxTimeout"    # J

    .prologue
    .line 611
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 612
    .local v3, "entries":[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v12

    .line 613
    .local v12, "values":[Ljava/lang/CharSequence;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v7, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v8, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "screen_off_timeout"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-long v1, v13

    .line 619
    .local v1, "displayTimeout":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v13, v12

    if-ge v4, v13, :cond_1

    .line 620
    aget-object v13, v12, v4

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 621
    .local v9, "timeout":J
    cmp-long v13, v9, p1

    if-gtz v13, :cond_0

    .line 622
    aget-object v13, v3, v4

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    aget-object v13, v12, v4

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 628
    .end local v9    # "timeout":J
    :cond_1
    const-string v13, "LockScreenMenu"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "revisedValues.size() : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long v5, p1, v13

    .line 630
    .local v5, "last_timeout":J
    const-string v13, "LockScreenMenu"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "last_timeout : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-wide/16 v13, 0x0

    cmp-long v13, v5, v13

    if-lez v13, :cond_2

    array-length v13, v12

    add-int/lit8 v13, v13, -0x1

    aget-object v13, v12, v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v13, p1, v13

    if-gez v13, :cond_2

    .line 632
    const v13, 0x7f090e8a

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/LockscreenMenuSettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/CharSequence;

    invoke-virtual {v14, v13}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/CharSequence;

    invoke-virtual {v14, v13}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 642
    .local v11, "userPreference":I
    int-to-long v13, v11

    cmp-long v13, v13, p1

    if-gtz v13, :cond_3

    .line 643
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 652
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_4

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v14, v13}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 654
    return-void

    .line 645
    :cond_3
    const-string v13, "LockScreenMenu"

    const-string v14, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 652
    :cond_4
    const/4 v13, 0x0

    goto :goto_2
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 698
    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 11

    .prologue
    const-wide/16 v4, 0x3c

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    .line 1200
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 1201
    div-long v2, v0, v4

    .line 1202
    rem-long v4, v0, v4

    .line 1204
    const-string v0, ""

    .line 1205
    cmp-long v1, v2, v7

    if-lez v1, :cond_0

    .line 1206
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110007

    long-to-int v6, v2

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    long-to-int v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1208
    :cond_0
    cmp-long v1, v2, v7

    if-lez v1, :cond_1

    cmp-long v1, v4, v7

    if-lez v1, :cond_1

    .line 1209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1211
    :cond_1
    cmp-long v1, v4, v7

    if-lez v1, :cond_2

    .line 1212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110008

    long-to-int v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1215
    :cond_2
    const-string v1, "LockScreenMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimeoutNewEntry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    return-object v0
.end method

.method private isEffect()Z
    .locals 5

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 687
    .local v0, "effect":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 688
    const/4 v1, 0x1

    .line 692
    .local v1, "state":Z
    :goto_0
    return v1

    .line 690
    .end local v1    # "state":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "state":Z
    goto :goto_0
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1245
    .line 1246
    iget-boolean v0, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_1

    .line 1247
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1253
    :goto_0
    if-nez v2, :cond_2

    .line 1259
    :cond_0
    :goto_1
    return v1

    .line 1249
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1255
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1256
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    .line 1255
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 967
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private registerBroadcastReceiver()V
    .locals 4

    .prologue
    .line 1271
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/LockscreenMenuSettings;->bRegisterReceiver:Z

    if-nez v0, :cond_0

    .line 1272
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.settings.fingerprint.ok"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/LockscreenMenuSettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1278
    :cond_0
    :goto_0
    return-void

    .line 1275
    :catch_0
    move-exception v0

    .line 1276
    const-string v1, "LockScreenMenu"

    const-string v2, "registerBroadcastReceiver Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 540
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 542
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 543
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 544
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 545
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 547
    .local v4, "displayTimeout":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 553
    iget-boolean v8, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v8, :cond_2

    .end local v0    # "adminTimeout":J
    :goto_1
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings/LockscreenMenuSettings;->disableUnusableTimeouts(J)V

    .line 556
    :cond_0
    return-void

    .end local v4    # "displayTimeout":J
    :cond_1
    move-wide v0, v6

    .line 544
    goto :goto_0

    .line 553
    .restart local v0    # "adminTimeout":J
    .restart local v4    # "displayTimeout":J
    :cond_2
    sub-long/2addr v0, v4

    goto :goto_1
.end method

.method private setupSignatureVerificationLevelPreference(Z)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 657
    if-nez p1, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    const v2, 0x7f040133

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 659
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 662
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_signature_verification_level"

    invoke-static {v0, v2, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 665
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 668
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    move v0, v1

    move v2, v1

    .line 671
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_2

    .line 672
    aget-object v6, v5, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 673
    int-to-long v8, v3

    cmp-long v6, v8, v6

    if-nez v6, :cond_1

    move v2, v0

    .line 671
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 678
    :cond_2
    aget-object v0, v4, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    const-string v2, "SecuritySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get signature verification level: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    const v3, 0x7f090eb9

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 682
    return-void
.end method

.method private showSafetyZoneEnableDialog()V
    .locals 3

    .prologue
    .line 1127
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090b20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/LockscreenMenuSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/LockscreenMenuSettings$6;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/LockscreenMenuSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/LockscreenMenuSettings$5;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1150
    return-void
.end method

.method private showSafetyZoneInfoDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1154
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1156
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1158
    iput-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    .line 1161
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1162
    const v2, 0x7f040060

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1163
    const v0, 0x7f0b004f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1165
    const v3, 0x7f090b1f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1166
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1167
    const v0, 0x7f090b19

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1168
    const v0, 0x7f0906b3

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1169
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    .line 1170
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1171
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/LockscreenMenuSettings$7;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/LockscreenMenuSettings$7;-><init>(Lcom/android/settings/LockscreenMenuSettings;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1190
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 3

    .prologue
    .line 1282
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/LockscreenMenuSettings;->bRegisterReceiver:Z

    if-eqz v0, :cond_0

    .line 1283
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/LockscreenMenuSettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    :cond_0
    :goto_0
    return-void

    .line 1286
    :catch_0
    move-exception v0

    .line 1287
    const-string v1, "LockScreenMenu"

    const-string v2, "unregisterBroadcastReceiver Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 22

    .prologue
    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "lock_screen_lock_after_timeout"

    const-wide/16 v20, 0x1388

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    .line 562
    .local v5, "currentTimeout":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 563
    .local v9, "entries":[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v17

    .line 564
    .local v17, "values":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 565
    .local v4, "best":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_1

    .line 566
    aget-object v18, v17, v10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 567
    .local v15, "timeout":J
    cmp-long v18, v5, v15

    if-ltz v18, :cond_0

    .line 568
    move v4, v10

    .line 565
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 573
    .end local v15    # "timeout":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 574
    .local v2, "adminTimeout":J
    :goto_1
    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "screen_off_timeout"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    int-to-long v7, v0

    .line 576
    .local v7, "displayTimeout":J
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .end local v2    # "adminTimeout":J
    :goto_2
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 580
    .local v12, "maxTimeout":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    const v14, 0x7f090027

    .line 581
    .local v14, "summaryResID":I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    const v11, 0x7f090028

    .line 584
    .local v11, "immeResID":I
    :goto_4
    aget-object v18, v17, v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v18, v18, v12

    if-gez v18, :cond_7

    cmp-long v18, v12, v5

    if-gez v18, :cond_7

    .line 585
    const-string v18, "LockScreenMenu"

    const-string v19, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    cmp-long v18, v12, v7

    if-gez v18, :cond_6

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v9, v4

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 608
    :goto_5
    return-void

    .line 573
    .end local v7    # "displayTimeout":J
    .end local v11    # "immeResID":I
    .end local v12    # "maxTimeout":J
    .end local v14    # "summaryResID":I
    :cond_2
    const-wide/16 v2, 0x0

    goto/16 :goto_1

    .line 576
    .restart local v2    # "adminTimeout":J
    .restart local v7    # "displayTimeout":J
    :cond_3
    sub-long/2addr v2, v7

    goto :goto_2

    .line 580
    .end local v2    # "adminTimeout":J
    .restart local v12    # "maxTimeout":J
    :cond_4
    const v14, 0x7f090172

    goto :goto_3

    .line 581
    .restart local v14    # "summaryResID":I
    :cond_5
    const v11, 0x7f090e89

    goto :goto_4

    .line 590
    .restart local v11    # "immeResID":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings/LockscreenMenuSettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 595
    :cond_7
    if-nez v4, :cond_8

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v9, v4

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 598
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/settings/LockscreenMenuSettings;->isInDefaultTimeoutList(J)Z

    move-result v18

    if-eqz v18, :cond_a

    cmp-long v18, v5, v12

    if-ltz v18, :cond_9

    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-nez v18, :cond_a

    .line 599
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v9, v4

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 601
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings/LockscreenMenuSettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method private updateRippleEffectPreferenceSummary()V
    .locals 7

    .prologue
    .line 1113
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1114
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1116
    .local v3, "values":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_ripple_effect"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1117
    .local v0, "State":I
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1119
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 1120
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 1121
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1119
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1124
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 975
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 976
    const/16 v1, 0x7c

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 978
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->startBiometricWeakImprove()V

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_2

    if-ne p2, v2, :cond_2

    .line 982
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 983
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 984
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 985
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 999
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1267
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 210
    const-string v1, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    .line 213
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 215
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 217
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 219
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->registerBroadcastReceiver()V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 223
    .local v0, "activity":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    .line 224
    const-string v1, "LockScreenMenu"

    const-string v2, " LockScreen : onCreateCalled"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    .line 227
    const-string v1, "LockScreenMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDirect LockScreen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 534
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 535
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->unregisterBroadcastReceiver()V

    .line 536
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 850
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 851
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 852
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 854
    const-string v0, "LockScreenMenu"

    const-string v1, "onPause(), dismiss mUnlockEffect dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1003
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_3

    .line 1004
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1006
    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/LockscreenMenuSettings;->isInDefaultTimeoutList(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1007
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_after_timeout_rollback"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v0

    .line 1013
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_screen_lock_after_timeout"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_off_timeout"

    const-wide/16 v4, 0x7530

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 1021
    iget-boolean v0, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    int-to-long v5, v2

    cmp-long v0, v5, v3

    if-gez v0, :cond_0

    .line 1022
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->showDeviceLockDialog()V

    .line 1025
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->updateLockAfterPreferenceSummary()V

    .line 1109
    :cond_1
    :goto_2
    return v1

    .line 1009
    :cond_2
    const v0, 0x1b7741

    move v2, v0

    goto :goto_0

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    const-string v3, "SecuritySettings"

    const-string v4, "could not persist lockAfter timeout setting"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1026
    :cond_3
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_4

    .line 1027
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1029
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_signature_verification_level"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1035
    :goto_3
    invoke-direct {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->setupSignatureVerificationLevelPreference(Z)V

    goto :goto_2

    .line 1031
    :catch_1
    move-exception v0

    .line 1032
    const-string v2, "SecuritySettings"

    const-string v3, "could not persist signature verification level setting"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1036
    :cond_4
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1037
    const-string v0, "oversea"

    const-string v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1038
    if-nez v0, :cond_5

    const-string v0, "SKT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1039
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1040
    const v3, 0x7f090d33

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1041
    const v3, 0x7f0912d6

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1042
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/LockscreenMenuSettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings/LockscreenMenuSettings$4;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1048
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1049
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    .line 1051
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dualclock_menu_settings"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_6
    move v0, v2

    goto :goto_4

    .line 1053
    :cond_7
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1054
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1056
    if-eqz v0, :cond_a

    .line 1057
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "safetyzone_settings"

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1058
    if-eqz v0, :cond_1

    .line 1060
    const-string v3, "DoNotShowDialogOn"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1061
    if-nez v0, :cond_8

    .line 1062
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->showSafetyZoneInfoDialog()V

    goto/16 :goto_2

    .line 1064
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "safety_zone_list"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1065
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1066
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->showSafetyZoneEnableDialog()V

    goto/16 :goto_2

    .line 1068
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "safety_zone_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1072
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "safety_zone_enable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_c

    .line 1073
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f090b22

    invoke-virtual {p0, v4}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1074
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "safety_zone_enable"

    if-eqz v0, :cond_b

    move v2, v1

    :cond_b
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1076
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "safety_zone_enable"

    if-eqz v0, :cond_d

    move v2, v1

    :cond_d
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1079
    :cond_e
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_f

    .line 1080
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1081
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->updateRippleEffectPreferenceSummary()V

    .line 1082
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->isEffect()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1083
    const-string v0, "LockScreenMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " LockScreen : lockscreen_ripple_effect :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1084
    :cond_f
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v0, :cond_12

    .line 1086
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_10
    move-object v0, p2

    .line 1089
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    move v2, v1

    .line 1090
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_screen_shortcut"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1091
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.LOCK_SCREEN_SHORTCUT_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1092
    const-string v2, "isEnable"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1093
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1097
    :cond_12
    const-string v0, "multiple_lock_screen"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1099
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1102
    :cond_13
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    move v2, v1

    .line 1103
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "kg_multiple_lockscreen"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1104
    const-string v0, "LockScreenMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple lock screen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kg_multiple_lockscreen"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 860
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 862
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_wallpaper"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 863
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_motion_tilt_to_unlock"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 864
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_ink_effect"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 866
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 867
    const-string v4, "unlock_set_or_change"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 868
    const-string v0, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v1, 0x7b

    invoke-virtual {p0, p0, v0, v1, v5}, Lcom/android/settings/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 958
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    :goto_1
    return v1

    .line 870
    :cond_2
    const-string v4, "biometric_weak_improve_matching"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 871
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 873
    const/16 v1, 0x7c

    invoke-virtual {v0, v1, v5, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 879
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->startBiometricWeakImprove()V

    goto :goto_0

    .line 881
    :cond_3
    const-string v4, "biometric_weak_liveliness"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 882
    invoke-direct {p0, p2}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 883
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 888
    :cond_4
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 889
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 891
    const/16 v1, 0x7d

    invoke-virtual {v0, v1, v5, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 897
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 898
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 901
    :cond_5
    const-string v4, "lockenabled"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 902
    invoke-direct {p0, p2}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 903
    :cond_6
    const-string v4, "visiblepattern"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 904
    invoke-direct {p0, p2}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_0

    .line 905
    :cond_7
    const-string v4, "quick_note"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 906
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_quick_note"

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_2

    .line 907
    :cond_9
    const-string v4, "visiblesignature"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 908
    invoke-direct {p0, p2}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisibleSignatureEnabled(Z)V

    goto/16 :goto_0

    .line 909
    :cond_a
    const-string v4, "unlock_tactile_feedback"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 911
    const-string v4, "power_button_instantly_locks"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 912
    invoke-direct {p0, p2}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto/16 :goto_0

    .line 913
    :cond_b
    const-string v0, "owner_info_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_c

    .line 914
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->showDialog()V

    goto/16 :goto_0

    .line 915
    :cond_c
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 916
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->isEffect()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 917
    :cond_d
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 918
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 920
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 921
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    const-string v3, "system"

    invoke-virtual {v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 922
    if-eqz v6, :cond_f

    move v3, v2

    move v4, v2

    .line 923
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_10

    .line 924
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v0, v2

    const-string v7, ""

    aput-object v7, v0, v1

    .line 925
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 926
    aget-object v0, v0, v2

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    move v4, v1

    .line 923
    :cond_e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_f
    move v4, v2

    .line 931
    :cond_10
    if-ne v4, v1, :cond_11

    .line 932
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.FingerShortcutSel"

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 936
    :goto_4
    invoke-virtual {p0, v5}, Lcom/android/settings/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 934
    :cond_11
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.FingerShortcut"

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 937
    :cond_12
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 938
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "unlock_text"

    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_13

    :goto_5
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_13
    move v1, v2

    goto :goto_5

    .line 939
    :cond_14
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 940
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wake_up_lock_screen"

    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_15

    :goto_6
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_15
    move v1, v2

    goto :goto_6

    .line 941
    :cond_16
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    const-string v0, "oversea"

    const-string v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 943
    if-nez v0, :cond_1

    const-string v0, "SKT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 944
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 945
    const v3, 0x7f090d33

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 946
    const v3, 0x7f0912d6

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 947
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/LockscreenMenuSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/LockscreenMenuSettings$3;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 952
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 953
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 706
    .line 707
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 709
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 710
    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 713
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 717
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 719
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    .line 720
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 721
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 724
    :cond_0
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 725
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 727
    :cond_1
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 728
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "lock_screen_quick_note"

    invoke-static {v2, v6, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_14

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 730
    :cond_2
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 731
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleSignatureEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 733
    :cond_3
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    .line 734
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 736
    :cond_4
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    .line 737
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 738
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 739
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f09115e

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 743
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "lockscreen_wallpaper"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_15

    move v2, v1

    .line 744
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_motion_tilt_to_unlock"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 745
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "pen_hovering_ink_effect"

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 748
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v4

    if-nez v4, :cond_16

    .line 750
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_6

    .line 751
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 752
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 768
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v4

    if-nez v4, :cond_19

    .line 770
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v4, :cond_7

    .line 771
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 772
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 784
    :cond_7
    :goto_4
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v4, :cond_9

    .line 785
    if-nez v2, :cond_8

    if-lez v5, :cond_1c

    .line 786
    :cond_8
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 789
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->updateRippleEffectPreferenceSummary()V

    .line 791
    :cond_9
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_c

    .line 792
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->isEffect()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 793
    if-nez v2, :cond_a

    if-lez v5, :cond_b

    .line 794
    :cond_a
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 796
    :cond_b
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffectSummary:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 798
    :cond_c
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_d

    .line 799
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "unlock_text"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1d

    move v2, v3

    :goto_6
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 802
    :cond_d
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_e

    .line 803
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wake_up_lock_screen"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1e

    move v2, v3

    :goto_7
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 804
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "easy_mode_switch"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1f

    move v2, v3

    :goto_8
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 807
    :cond_e
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_f

    .line 808
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "easy_mode_switch"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_20

    move v2, v3

    :goto_9
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 812
    :cond_f
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 813
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_21

    move v2, v3

    .line 815
    :goto_a
    if-nez v2, :cond_11

    .line 816
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_10

    .line 817
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 818
    :cond_10
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_11

    .line 819
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 825
    :cond_11
    iget v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_22

    .line 826
    const-string v1, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v2, 0x7b

    const/4 v4, 0x0

    invoke-virtual {p0, p0, v1, v2, v4}, Lcom/android/settings/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 828
    iput v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    .line 838
    :cond_12
    :goto_b
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "safety_zone_enable"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 840
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 842
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 843
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 846
    :cond_13
    return-void

    :cond_14
    move v2, v1

    .line 728
    goto/16 :goto_1

    :cond_15
    move v2, v3

    .line 743
    goto/16 :goto_2

    .line 756
    :cond_16
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "kg_multiple_lockscreen"

    invoke-static {v4, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_17

    move v4, v3

    .line 758
    :goto_c
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_6

    .line 759
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 760
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "easy_mode_switch"

    invoke-static {v4, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_18

    move v4, v3

    :goto_d
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_17
    move v4, v1

    .line 756
    goto :goto_c

    :cond_18
    move v4, v1

    .line 760
    goto :goto_d

    .line 776
    :cond_19
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v4, :cond_7

    .line 777
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "lock_screen_shortcut"

    invoke-static {v4, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1a

    move v4, v3

    :goto_e
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 778
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "easy_mode_switch"

    invoke-static {v4, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1b

    move v4, v3

    :goto_f
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_1a
    move v4, v1

    .line 777
    goto :goto_e

    :cond_1b
    move v4, v1

    .line 778
    goto :goto_f

    .line 788
    :cond_1c
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_1d
    move v2, v1

    .line 799
    goto/16 :goto_6

    :cond_1e
    move v2, v1

    .line 803
    goto/16 :goto_7

    :cond_1f
    move v2, v1

    .line 804
    goto/16 :goto_8

    :cond_20
    move v2, v1

    .line 808
    goto/16 :goto_9

    :cond_21
    move v2, v1

    .line 813
    goto/16 :goto_a

    .line 829
    :cond_22
    iget v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    if-ne v1, v9, :cond_12

    .line 834
    const-string v1, "LockScreenMenu"

    const-string v2, "LockScreenMenuSettings : onResumeCalled -> finish()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->finish()V

    goto/16 :goto_b

    :cond_23
    move v2, v3

    goto/16 :goto_a

    :cond_24
    move v0, v1

    goto/16 :goto_0
.end method

.method public showDeviceLockDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1222
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1224
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1226
    iput-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 1229
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1230
    const v2, 0x7f0400f8

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1231
    const v0, 0x7f0b030c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1232
    const v3, 0x7f090029

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1234
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1235
    const v0, 0x7f0904e8

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1236
    const v0, 0x104000a

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1238
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 1239
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1240
    return-void
.end method

.method showDialog()V
    .locals 3

    .prologue
    .line 962
    const v0, 0x7f090174

    invoke-static {v0}, Lcom/android/settings/OwnerInfoSettings;->newInstance(I)Lcom/android/settings/OwnerInfoSettings;

    move-result-object v0

    .line 963
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 964
    return-void
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 1193
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1194
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1195
    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    .line 1196
    return-void
.end method
