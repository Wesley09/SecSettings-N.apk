.class public Lcom/android/settings/cloud/CloudMusicsSyncFragment;
.super Lcom/android/settings/cloud/SyncFragment;
.source "CloudMusicsSyncFragment.java"


# static fields
.field private static isMusicSyncAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/cloud/CloudMusicsSyncFragment;->isMusicSyncAvailable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings/cloud/SyncFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected broadcastStatus(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 80
    if-nez p1, :cond_1

    .line 81
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "musicSync"

    iget-object v3, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudMusicsSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 89
    const-string v2, "CloudSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloudMusicsSyncFragment changed -->  sending intent with Cloud Status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "wifiOnlyType"

    const-string v3, "music"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v2, "wifiOnlyValue"

    iget-object v3, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v2, "wifiOnly"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudMusicsSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    const-string v2, "CloudSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloudPhotosSyncFragment Wifi Only option changed -->  sending intent with Cloud Status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getPreferencesReference()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    .line 37
    const-string v0, "pref_wifi_only"

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudMusicsSyncFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 43
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/android/settings/cloud/SyncFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudMusicsSyncFragment;->addPreferencesFromResource(I)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudMusicsSyncFragment;->getPreferencesReference()V

    .line 32
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/settings/cloud/SyncFragment;->onResume()V

    .line 51
    iget-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/cloud/CloudSettings;->isMusicSync()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudMusicsSyncFragment;->updatePreferences()V

    .line 59
    return-void
.end method

.method protected toggleCheckbox(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 121
    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/cloud/CloudSettings;->setWifiOnly(IZ)V

    .line 122
    return-void
.end method

.method protected togglePreferences(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 110
    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/cloud/CloudSettings;->setMusicSync(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudMusicsSyncFragment;->updatePreferences()V

    .line 114
    return-void
.end method

.method protected updatePreferences()V
    .locals 4

    .prologue
    .line 62
    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/cloud/CloudSettings;->isMusicSync()Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/cloud/CloudMusicsSyncFragment;->isMusicSyncAvailable:Z

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudMusicsSyncFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 66
    .local v0, "mPreferenceScreen":Landroid/preference/PreferenceScreen;
    sget-boolean v1, Lcom/android/settings/cloud/CloudMusicsSyncFragment;->isMusicSyncAvailable:Z

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 68
    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/settings/cloud/CloudSettings;->isWifiOnly(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
