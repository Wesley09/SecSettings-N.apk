.class public Lcom/android/settings/oplosandev/DSBSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DSBSettings.java"


# instance fields
.field private mDynamicStatusBar:Landroid/preference/CheckBoxPreference;

.field private mDynamicStatusBarFilter:Landroid/preference/CheckBoxPreference;

.field private mDynamicStatusBarGradient:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateDynamicStatusBarCheckboxes()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/oplosandev/DSBSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 72
    .local v7, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/oplosandev/DSBSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 74
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string v11, "dynamic_status_bar_state"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_2

    move v5, v9

    .line 77
    .local v5, "isStatusBarDynamic":Z
    :goto_0
    iget-object v11, p0, Lcom/android/settings/oplosandev/DSBSettings;->mDynamicStatusBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v11, "dynamic_status_bar_gradient_state"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_3

    move v0, v9

    .line 93
    .local v0, "isStatusBarGradient":Z
    :goto_1
    if-eqz v5, :cond_4

    const-string v11, "dynamic_status_bar_filter_state"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_4

    move v6, v9

    .line 96
    .local v6, "isStatusBarFilter":Z
    :goto_2
    iget-object v12, p0, Lcom/android/settings/oplosandev/DSBSettings;->mDynamicStatusBarGradient:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_5

    if-nez v0, :cond_0

    if-nez v6, :cond_5

    :cond_0
    move v11, v9

    :goto_3
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 98
    iget-object v11, p0, Lcom/android/settings/oplosandev/DSBSettings;->mDynamicStatusBarGradient:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 100
    iget-object v11, p0, Lcom/android/settings/oplosandev/DSBSettings;->mDynamicStatusBarFilter:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_6

    if-nez v6, :cond_1

    if-nez v0, :cond_6

    :cond_1
    :goto_4
    invoke-virtual {v11, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 102
    iget-object v9, p0, Lcom/android/settings/oplosandev/DSBSettings;->mDynamicStatusBarFilter:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 103
    return-void

    .end local v0    # "isStatusBarGradient":Z
    .end local v5    # "isStatusBarDynamic":Z
    .end local v6    # "isStatusBarFilter":Z
    :cond_2
    move v5, v10

    .line 74
    goto :goto_0

    .restart local v5    # "isStatusBarDynamic":Z
    :cond_3
    move v0, v10

    .line 91
    goto :goto_1

    .restart local v0    # "isStatusBarGradient":Z
    :cond_4
    move v6, v10

    .line 93
    goto :goto_2

    .restart local v6    # "isStatusBarFilter":Z
    :cond_5
    move v11, v10

    .line 96
    goto :goto_3

    :cond_6
    move v9, v10

    .line 100
    goto :goto_4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f0700bc

    invoke-virtual {p0, v0}, Lcom/android/settings/oplosandev/DSBSettings;->addPreferencesFromResource(I)V

    .line 48
    const-string v0, "dynamic_status_bar_color"

    invoke-virtual {p0, v0}, Lcom/android/settings/oplosandev/DSBSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/oplosandev/DSBSettings;->mDynamicStatusBar:Landroid/preference/CheckBoxPreference;

    .line 49
    iget-object v0, p0, Lcom/android/settings/oplosandev/DSBSettings;->mDynamicStatusBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 54
    const-string v0, "dynamic_status_bar_gradient"

    invoke-virtual {p0, v0}, Lcom/android/settings/oplosandev/DSBSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/oplosandev/DSBSettings;->mDynamicStatusBarGradient:Landroid/preference/CheckBoxPreference;

    .line 56
    iget-object v0, p0, Lcom/android/settings/oplosandev/DSBSettings;->mDynamicStatusBarGradient:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 58
    const-string v0, "dynamic_status_bar_filter"

    invoke-virtual {p0, v0}, Lcom/android/settings/oplosandev/DSBSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/oplosandev/DSBSettings;->mDynamicStatusBarFilter:Landroid/preference/CheckBoxPreference;

    .line 60
    iget-object v0, p0, Lcom/android/settings/oplosandev/DSBSettings;->mDynamicStatusBarFilter:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 61
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/oplosandev/DSBSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 108
    .local v3, "resolver":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/settings/oplosandev/DSBSettings;->mDynamicStatusBar:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_2

    .line 109
    const-string v6, "dynamic_status_bar_state"

    iget-object v7, p0, Lcom/android/settings/oplosandev/DSBSettings;->mDynamicStatusBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_0
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    invoke-direct {p0}, Lcom/android/settings/oplosandev/DSBSettings;->updateDynamicStatusBarCheckboxes()V

    .line 143
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4

    :cond_1
    move v4, v5

    .line 109
    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/settings/oplosandev/DSBSettings;->mDynamicStatusBarGradient:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_5

    .line 122
    iget-object v6, p0, Lcom/android/settings/oplosandev/DSBSettings;->mDynamicStatusBarGradient:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 123
    .local v1, "enableGradient":Z
    const-string v6, "dynamic_status_bar_gradient_state"

    if-eqz v1, :cond_4

    :goto_2
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    if-eqz v1, :cond_3

    .line 127
    const-string v4, "dynamic_status_bar_filter_state"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/oplosandev/DSBSettings;->updateDynamicStatusBarCheckboxes()V

    goto :goto_1

    :cond_4
    move v4, v5

    .line 123
    goto :goto_2

    .line 131
    .end local v1    # "enableGradient":Z
    :cond_5
    iget-object v6, p0, Lcom/android/settings/oplosandev/DSBSettings;->mDynamicStatusBarFilter:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_0

    .line 132
    iget-object v6, p0, Lcom/android/settings/oplosandev/DSBSettings;->mDynamicStatusBarFilter:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 133
    .local v0, "enableFilter":Z
    const-string v6, "dynamic_status_bar_filter_state"

    if-eqz v0, :cond_7

    :goto_3
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    if-eqz v0, :cond_6

    .line 137
    const-string v4, "dynamic_status_bar_gradient_state"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/oplosandev/DSBSettings;->updateDynamicStatusBarCheckboxes()V

    goto :goto_1

    :cond_7
    move v4, v5

    .line 133
    goto :goto_3
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 67
    invoke-direct {p0}, Lcom/android/settings/oplosandev/DSBSettings;->updateDynamicStatusBarCheckboxes()V

    .line 68
    return-void
.end method
