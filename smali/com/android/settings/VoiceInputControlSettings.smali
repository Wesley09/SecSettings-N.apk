.class public Lcom/android/settings/VoiceInputControlSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VoiceInputControlSettings.java"


# instance fields
.field private final KEY_EASY_MODE_SWITCH:Ljava/lang/String;

.field private final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAlarm:Landroid/preference/CheckBoxPreference;

.field private mCamera:Landroid/preference/CheckBoxPreference;

.field private mChatonV:Landroid/preference/CheckBoxPreference;

.field private mIncommingCalls:Landroid/preference/CheckBoxPreference;

.field private mMusic:Landroid/preference/CheckBoxPreference;

.field private mRadio:Landroid/preference/CheckBoxPreference;

.field private mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

.field private mVoiceInputControlObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 30
    const-string v0, "voice_input_control"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

    .line 31
    const-string v0, "easy_mode_switch"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->KEY_EASY_MODE_SWITCH:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/android/settings/VoiceInputControlSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/VoiceInputControlSettings$1;-><init>(Lcom/android/settings/VoiceInputControlSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputControlObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/VoiceInputControlSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/VoiceInputControlSettings;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->updateUIVoiceInputControl()V

    return-void
.end method

.method public static getSalesCodeProperty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isChatONVPhone()Z
    .locals 3

    .prologue
    .line 282
    const/4 v0, 0x1

    .line 283
    .local v0, "isChatONV":Z
    invoke-static {}, Lcom/android/settings/VoiceInputControlSettings;->getSalesCodeProperty()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 285
    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KTT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LGT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    :cond_0
    const/4 v0, 0x0

    .line 293
    :cond_1
    return v0
.end method

.method private isChatOnVInstalled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 105
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.coolots.chaton"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return v1

    .line 108
    :catch_0
    move-exception v2

    .line 116
    :try_start_1
    const-string v2, "com.coolots.chatonforcanada"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 119
    :catch_1
    move-exception v1

    .line 125
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEasyModeOn()I
    .locals 3

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setPreferenceStatusBasedOnEasyMode(Landroid/preference/CheckBoxPreference;)V
    .locals 1
    .param p1, "mPref"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->isEasyModeOn()I

    move-result v0

    if-nez v0, :cond_1

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateUIVoiceInputControl()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 198
    .local v0, "voiceInputControState":I
    if-ne v0, v4, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 200
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 201
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 203
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/VoiceInputControlSettings;->setPreferenceStatusBasedOnEasyMode(Landroid/preference/CheckBoxPreference;)V

    .line 204
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 205
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 214
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 208
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 209
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 210
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 211
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 212
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getVoicetalkLocale()Ljava/util/Locale;
    .locals 6

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 302
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 304
    .local v1, "previousLocale":Ljava/util/Locale;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voicetalk_language"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "voiceLocale":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 307
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 317
    :cond_0
    :goto_0
    const-string v4, "en-gb_GB"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 318
    const-string v2, "en_GB"

    .line 320
    :cond_1
    new-instance v3, Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .local v3, "voicetalkLocale":Ljava/util/Locale;
    return-object v3

    .line 308
    .end local v3    # "voicetalkLocale":Ljava/util/Locale;
    :cond_2
    const-string v4, "v-es-LA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 309
    const-string v2, "es"

    goto :goto_0
.end method

.method public isAllOptionDisabled()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voice_input_control_incomming_calls"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 268
    .local v1, "call":I
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voice_input_control_alarm"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 269
    .local v0, "alarm":I
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voice_input_control_camera"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 270
    .local v2, "camera":I
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voice_input_control_music"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 271
    .local v4, "music":I
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voice_input_control_radio"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 272
    .local v5, "radio":I
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voice_input_control_chatonv"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 274
    .local v3, "chatonv":I
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-nez v3, :cond_0

    .line 275
    const/4 v6, 0x1

    .line 277
    :cond_0
    return v6
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v3, 0x7f0700a2

    invoke-virtual {p0, v3}, Lcom/android/settings/VoiceInputControlSettings;->addPreferencesFromResource(I)V

    .line 63
    invoke-static {}, Lcom/android/settings/VoiceInputControlSettings;->isChatONVPhone()Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v4

    .line 65
    .local v1, "chatONVHide1":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 66
    .local v0, "activity":Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 68
    new-instance v3, Lcom/android/settings/VoiceInputControlEnabler;

    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v6}, Lcom/android/settings/VoiceInputControlEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    .line 70
    const-string v3, "voice_input_control_incomming_calls"

    invoke-virtual {p0, v3}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    .line 71
    const-string v3, "voice_input_control_chatonv"

    invoke-virtual {p0, v3}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    .line 72
    const-string v3, "voice_input_control_alarm"

    invoke-virtual {p0, v3}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    .line 73
    const-string v3, "voice_input_control_camera"

    invoke-virtual {p0, v3}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    .line 74
    const-string v3, "voice_input_control_music"

    invoke-virtual {p0, v3}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    .line 75
    const-string v3, "voice_input_control_radio"

    invoke-virtual {p0, v3}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->setBargeInSummary()V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "voice_input_control_incomming_calls"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    :cond_1
    if-eq v1, v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->isChatOnVInstalled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 85
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_input_control_chatonv"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.fm"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_1
    return-void

    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "chatONVHide1":Z
    :cond_4
    move v1, v5

    .line 63
    goto/16 :goto_0

    .line 92
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "chatONVHide1":Z
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_input_control_radio"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 220
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler;->pause()V

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 223
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 228
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_incomming_calls"

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 249
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 255
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.VOICECONTROL_SWITCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 262
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    move v1, v3

    .line 229
    goto :goto_0

    .line 232
    :cond_3
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_chatonv"

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_3

    .line 235
    :cond_5
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_alarm"

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_4
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_6
    move v1, v3

    goto :goto_4

    .line 238
    :cond_7
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_camera"

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_5
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_8
    move v1, v3

    goto :goto_5

    .line 241
    :cond_9
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_music"

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_6
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_a
    move v1, v3

    goto :goto_6

    .line 244
    :cond_b
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_radio"

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v2

    :goto_7
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_c
    move v1, v3

    goto :goto_7

    .line 257
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "voice_input_control"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 137
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->updateUIVoiceInputControl()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler;->resume()V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "voice_input_control"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 147
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "voice_input_control_incomming_calls"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 153
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "voice_input_control_chatonv"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 158
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "voice_input_control_alarm"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 163
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "voice_input_control_camera"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 168
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "voice_input_control_music"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 173
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_input_control_radio"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_b

    :goto_5
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 176
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 147
    goto :goto_0

    :cond_7
    move v0, v2

    .line 153
    goto :goto_1

    :cond_8
    move v0, v2

    .line 158
    goto :goto_2

    :cond_9
    move v0, v2

    .line 163
    goto :goto_3

    :cond_a
    move v0, v2

    .line 168
    goto :goto_4

    :cond_b
    move v1, v2

    .line 173
    goto :goto_5
.end method

.method public setBargeInSummary()V
    .locals 18

    .prologue
    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 345
    .local v5, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->setVoicetalkLocale()Ljava/util/Locale;

    move-result-object v10

    .line 347
    .local v10, "previousLocale":Ljava/util/Locale;
    const-string v15, "voice_input_control_incomming_calls"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    .line 348
    const-string v15, "voice_input_control_chatonv"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    .line 349
    const-string v15, "voice_input_control_alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    .line 350
    const-string v15, "voice_input_control_camera"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    .line 351
    const-string v15, "voice_input_control_music"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    .line 352
    const-string v15, "voice_input_control_radio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    .line 354
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0008

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, "bargeInCallCommands":[Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0009

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "bargeInAlarmCommands":[Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a000a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, "bargeInCameraCommands":[Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a000b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, "bargeInMusicCommands":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/VoiceInputControlSettings;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    .line 364
    const v15, 0x7f090f54

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 365
    .local v12, "tempForCall":Ljava/lang/String;
    const v15, 0x7f090f56

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 366
    .local v11, "tempForAlarm":Ljava/lang/String;
    const v15, 0x7f090f58

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 367
    .local v13, "tempForCamera":Ljava/lang/String;
    const v15, 0x7f090f5a

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 370
    .local v14, "tempForMusic":Ljava/lang/String;
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    invoke-static {v12, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 371
    .local v7, "guideCallString":Ljava/lang/String;
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v1, v17

    aput-object v17, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 372
    .local v6, "guideAlarmString":Ljava/lang/String;
    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v3, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v3, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x2

    aget-object v17, v3, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x3

    aget-object v17, v3, v17

    aput-object v17, v15, v16

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 373
    .local v8, "guideCameraString":Ljava/lang/String;
    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v4, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v4, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x2

    aget-object v17, v4, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x3

    aget-object v17, v4, v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const/16 v17, 0x4

    aget-object v17, v4, v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    const/16 v17, 0x5

    aget-object v17, v4, v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 375
    .local v9, "guideMusicString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v15, v7}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v15, v6}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v15, v8}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v15, v9}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 380
    return-void
.end method

.method public setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 332
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 334
    .local v1, "previousLocale":Ljava/util/Locale;
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 335
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 336
    .local v0, "configuration":Landroid/content/res/Configuration;
    iput-object p1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 337
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 339
    return-object v1
.end method

.method public setVoicetalkLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getVoicetalkLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/VoiceInputControlSettings;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method
