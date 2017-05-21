.class public Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "GestureAnywhereSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mEnabledPref:Landroid/preference/SwitchPreference;

.field private mPositionPref:Landroid/preference/ListPreference;

.field private mPreviousTitle:Ljava/lang/CharSequence;

.field private mTriggerBottomPref:Lcom/android/settings/crdroid/SeekBarPreferenceChOS;

.field private mTriggerTopPref:Lcom/android/settings/crdroid/SeekBarPreferenceChOS;

.field private mTriggerWidthPref:Lcom/android/settings/crdroid/SeekBarPreferenceChOS;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updatePositionSummary(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mPositionPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mPositionPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mPositionPref:Landroid/preference/ListPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gesture_anywhere_position"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v3, 0x7f050069

    invoke-virtual {p0, v3}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->addPreferencesFromResource(I)V

    .line 58
    const-string v3, "gesture_anywhere_enabled"

    invoke-virtual {p0, v3}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mEnabledPref:Landroid/preference/SwitchPreference;

    .line 59
    iget-object v6, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mEnabledPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "gesture_anywhere_enabled"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 61
    iget-object v3, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mEnabledPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 64
    .local v2, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v3, "gesture_anywhere_position"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mPositionPref:Landroid/preference/ListPreference;

    .line 65
    iget-object v3, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mPositionPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gesture_anywhere_position"

    const/4 v6, 0x3

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 68
    .local v0, "position":I
    iget-object v3, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mPositionPref:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->updatePositionSummary(I)V

    .line 71
    const-string v3, "gesture_anywhere_trigger_width"

    invoke-virtual {p0, v3}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/crdroid/SeekBarPreferenceChOS;

    iput-object v3, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mTriggerWidthPref:Lcom/android/settings/crdroid/SeekBarPreferenceChOS;

    .line 72
    iget-object v3, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mTriggerWidthPref:Lcom/android/settings/crdroid/SeekBarPreferenceChOS;

    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "gesture_anywhere_trigger_width"

    const/16 v7, 0xa

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/crdroid/SeekBarPreferenceChOS;->setValue(I)V

    .line 74
    iget-object v3, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mTriggerWidthPref:Lcom/android/settings/crdroid/SeekBarPreferenceChOS;

    invoke-virtual {v3, p0}, Lcom/android/settings/crdroid/SeekBarPreferenceChOS;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    const-string v3, "gesture_anywhere_trigger_top"

    invoke-virtual {p0, v3}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/crdroid/SeekBarPreferenceChOS;

    iput-object v3, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mTriggerTopPref:Lcom/android/settings/crdroid/SeekBarPreferenceChOS;

    .line 77
    iget-object v3, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mTriggerTopPref:Lcom/android/settings/crdroid/SeekBarPreferenceChOS;

    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "gesture_anywhere_trigger_top"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/crdroid/SeekBarPreferenceChOS;->setValue(I)V

    .line 79
    iget-object v3, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mTriggerTopPref:Lcom/android/settings/crdroid/SeekBarPreferenceChOS;

    invoke-virtual {v3, p0}, Lcom/android/settings/crdroid/SeekBarPreferenceChOS;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    const-string v3, "gesture_anywhere_trigger_bottom"

    invoke-virtual {p0, v3}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/crdroid/SeekBarPreferenceChOS;

    iput-object v3, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mTriggerBottomPref:Lcom/android/settings/crdroid/SeekBarPreferenceChOS;

    .line 82
    iget-object v3, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mTriggerBottomPref:Lcom/android/settings/crdroid/SeekBarPreferenceChOS;

    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gesture_anywhere_trigger_height"

    const/16 v6, 0x64

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/crdroid/SeekBarPreferenceChOS;->setValue(I)V

    .line 84
    iget-object v3, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mTriggerBottomPref:Lcom/android/settings/crdroid/SeekBarPreferenceChOS;

    invoke-virtual {v3, p0}, Lcom/android/settings/crdroid/SeekBarPreferenceChOS;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 86
    const-string v3, "gesture_anywhere_gestures"

    invoke-virtual {p0, v3}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 87
    .local v1, "pref":Landroid/preference/Preference;
    new-instance v3, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings$1;-><init>(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 94
    return-void

    .end local v0    # "position":I
    .end local v1    # "pref":Landroid/preference/Preference;
    .end local v2    # "prefSet":Landroid/preference/PreferenceScreen;
    :cond_0
    move v3, v5

    .line 59
    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gesture_anywhere_show_trigger"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 111
    iget-object v6, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mPositionPref:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_0

    .line 112
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 113
    .local v1, "position":I
    invoke-direct {p0, v1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->updatePositionSummary(I)V

    .line 136
    .end local v1    # "position":I
    :goto_0
    return v5

    .line 115
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mEnabledPref:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gesture_anywhere_enabled"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    move v4, v5

    :cond_1
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 120
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mTriggerWidthPref:Lcom/android/settings/crdroid/SeekBarPreferenceChOS;

    if-ne p1, v6, :cond_3

    .line 121
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 122
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "gesture_anywhere_trigger_width"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 125
    .end local v3    # "width":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mTriggerTopPref:Lcom/android/settings/crdroid/SeekBarPreferenceChOS;

    if-ne p1, v6, :cond_4

    .line 126
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 127
    .local v2, "top":I
    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "gesture_anywhere_trigger_top"

    invoke-static {v4, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 130
    .end local v2    # "top":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    iget-object v6, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mTriggerBottomPref:Lcom/android/settings/crdroid/SeekBarPreferenceChOS;

    if-ne p1, v6, :cond_5

    .line 131
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 132
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "gesture_anywhere_trigger_height"

    invoke-static {v4, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .end local v0    # "bottom":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    move v5, v4

    .line 136
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gesture_anywhere_show_trigger"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 100
    .local v0, "bar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mPreviousTitle:Ljava/lang/CharSequence;

    .line 101
    const v1, 0x7f0709c7

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 102
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->mPreviousTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method
