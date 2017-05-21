.class public Lcom/android/settings/AirViewSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AirViewSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAirViewModeListPref:Landroid/preference/ListPreference;

.field private mFingerAirViewPrefScreen:Landroid/preference/PreferenceScreen;

.field private mPenAirViewPrefScreeen:Landroid/preference/PreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateAirViewModeSummary()V
    .locals 6

    .prologue
    .line 98
    iget-object v3, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "Settings.System.AIR_VIEW_MODE"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 99
    .local v1, "airViewIndex":I
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 100
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f0a000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "AirViewModeStrings":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method private updateMenuEnableState()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "Settings.System.AIR_VIEW_MASTER_ONOFF"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 107
    .local v0, "airViewState":Z
    :cond_0
    const-string v1, "AirViewSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI_AIR_VIEW_MASTER_STATE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 109
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mPenAirViewPrefScreeen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mFingerAirViewPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 111
    return-void
.end method

.method private updateState()V
    .locals 4

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "Settings.System.AIR_VIEW_MODE"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 91
    .local v0, "airViewIndex":I
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 92
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateAirViewModeSummary()V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateMenuEnableState()V

    .line 94
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 131
    iget-object v3, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "Settings.System.AIR_VIEW_MASTER_ONOFF"

    if-ne p2, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    const-string v0, "AirViewSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URI_AIR_VIEW_MASTER_STATE was changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-ne p2, v1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mPenAirViewPrefScreeen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mFingerAirViewPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 142
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 131
    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mPenAirViewPrefScreeen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mFingerAirViewPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v2, 0x7f07000e

    invoke-virtual {p0, v2}, Lcom/android/settings/AirViewSettings;->addPreferencesFromResource(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    .line 51
    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 53
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    .line 54
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 56
    .local v1, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_1

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 58
    .local v0, "padding":I
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v0, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 59
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 60
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 64
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/AirViewSettings;->mActionBarLayout:Landroid/view/View;

    .line 67
    .end local v0    # "padding":I
    .end local v1    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    .line 71
    const-string v2, "air_view_mode"

    invoke-virtual {p0, v2}, Lcom/android/settings/AirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    .line 72
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 74
    const-string v2, "pen_air_view_option"

    invoke-virtual {p0, v2}, Lcom/android/settings/AirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/AirViewSettings;->mPenAirViewPrefScreeen:Landroid/preference/PreferenceScreen;

    .line 76
    const-string v2, "finger_air_view_option"

    invoke-virtual {p0, v2}, Lcom/android/settings/AirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/AirViewSettings;->mFingerAirViewPrefScreen:Landroid/preference/PreferenceScreen;

    .line 78
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "key":Ljava/lang/String;
    const-string v2, "air_view_mode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 119
    .local v1, "value":I
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "Settings.System.AIR_VIEW_MODE"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    const-string v2, "AirViewSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URI_AIR_VIEW_MODE was changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 122
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateAirViewModeSummary()V

    .line 125
    .end local v1    # "value":I
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 84
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "Settings.System.AIR_VIEW_MASTER_ONOFF"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 85
    .local v0, "airViewState":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 86
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateState()V

    .line 87
    return-void
.end method
