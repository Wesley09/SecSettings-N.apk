.class public Lcom/android/settings/fingerprint/FingerprintSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerprintSettings.java"


# instance fields
.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHelp:Landroid/preference/Preference;

.field private mRegisterFingerPrint:Landroid/preference/PreferenceScreen;

.field private mSecretBox:Landroid/preference/CheckBoxPreference;

.field private mWeb:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    return-void
.end method

.method private enrolledFingerprintNum()I
    .locals 4

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "enrolledFingerprintNum":I
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    .line 142
    .local v1, "fingerstatus":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xa

    if-gt v2, v3, :cond_1

    .line 143
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    .line 144
    add-int/lit8 v0, v0, 0x1

    .line 142
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    :cond_1
    return v0
.end method

.method private getFingerprintVerification()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_webpass"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 159
    goto :goto_0
.end method

.method private getStatusRememberPassword()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    .line 154
    .local v0, "result":Z
    return v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    const-string v0, "fingerprint_help"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHelp:Landroid/preference/Preference;

    .line 85
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHelp:Landroid/preference/Preference;

    const v3, 0x7f040084

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHelp:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 88
    const-string v0, "register"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterFingerPrint:Landroid/preference/PreferenceScreen;

    .line 89
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum()I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterFingerPrint:Landroid/preference/PreferenceScreen;

    const v3, 0x7f09133e

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 94
    :goto_0
    const-string v0, "support_secret_box"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSecretBox:Landroid/preference/CheckBoxPreference;

    .line 95
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSecretBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "fingerprint_secret_box"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 97
    const-string v0, "support_webpass"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWeb:Landroid/preference/CheckBoxPreference;

    .line 98
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWeb:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintVerification()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 100
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum()I

    move-result v0

    if-nez v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSecretBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWeb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 108
    :goto_2
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterFingerPrint:Landroid/preference/PreferenceScreen;

    const v3, 0x7f09133f

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 95
    goto :goto_1

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSecretBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWeb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private setFingerprintVerification(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_webpass"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 166
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->addPreferencesFromResource(I)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 44
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->init()V

    .line 45
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "FingerprintSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 73
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 113
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSecretBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSecretBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 115
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "fingerprint_secret_box"

    if-eqz v1, :cond_1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    .end local v1    # "value":Z
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 115
    .restart local v1    # "value":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 116
    .end local v1    # "value":Z
    :cond_2
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWeb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWeb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 118
    .restart local v1    # "value":Z
    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getStatusRememberPassword()Z

    move-result v2

    if-nez v2, :cond_3

    .line 119
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f091342

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f091361

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 130
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 132
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    const-string v0, "FingerprintSettings"

    const-string v3, "onResume() "

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 52
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum()I

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterFingerPrint:Landroid/preference/PreferenceScreen;

    const v3, 0x7f09133e

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 57
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSecretBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "fingerprint_secret_box"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWeb:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintVerification()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum()I

    move-result v0

    if-nez v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSecretBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWeb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 67
    :goto_2
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterFingerPrint:Landroid/preference/PreferenceScreen;

    const v3, 0x7f09133f

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 57
    goto :goto_1

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSecretBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWeb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 78
    const-string v0, "FingerprintSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method
