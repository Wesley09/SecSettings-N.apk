.class public Lcom/android/settings/FingerAirViewSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerAirViewSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isGoIntoMoreDepth:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mFingerAirViewObserver:Landroid/database/ContentObserver;

.field private mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

.field private mMagnifier:Landroid/preference/SwitchPreferenceScreen;

.field private mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/FingerAirViewSettings;->isGoIntoMoreDepth:Z

    .line 67
    new-instance v0, Lcom/android/settings/FingerAirViewSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/FingerAirViewSettings$1;-><init>(Lcom/android/settings/FingerAirViewSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FingerAirViewSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewSettings;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewSettings;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewSettings;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewSettings;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewSettings;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewSettings;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/FingerAirViewSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/FingerAirViewSettings;->broadcastFingerAirViewChanged(Z)V

    return-void
.end method

.method private broadcastFingerAirViewChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v0, "finger_air_view_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 387
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 4

    .prologue
    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090d28

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090d29

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09077a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090bb3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/FingerAirViewSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/FingerAirViewSettings$4;-><init>(Lcom/android/settings/FingerAirViewSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/FingerAirViewSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/FingerAirViewSettings$3;-><init>(Lcom/android/settings/FingerAirViewSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/FingerAirViewSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/FingerAirViewSettings$2;-><init>(Lcom/android/settings/FingerAirViewSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 365
    return-void
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    .line 371
    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_magnifier"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 372
    .local v2, "magnifier":I
    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_show_up_indicator"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 373
    .local v5, "showUpIndicator":I
    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_information_preview"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 374
    .local v1, "informationPreview":I
    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_full_text"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 376
    .local v0, "fullText":I
    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_pointer"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 377
    .local v3, "pointer":I
    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_pregress_bar_preview"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 378
    .local v4, "progressBarPreview":I
    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_speed_dial_tip"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 380
    .local v6, "speedDialTip":I
    or-int v9, v2, v5

    or-int/2addr v9, v1

    or-int/2addr v9, v0

    or-int/2addr v9, v3

    or-int/2addr v9, v4

    or-int/2addr v9, v6

    if-ge v9, v7, :cond_0

    :goto_0
    return v7

    :cond_0
    move v7, v8

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 222
    if-eqz p2, :cond_2

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/FingerAirViewSettings;->makeTalkBackDisablePopup()V

    .line 259
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_highlight"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    invoke-direct {p0, p2}, Lcom/android/settings/FingerAirViewSettings;->broadcastFingerAirViewChanged(Z)V

    .line 230
    const-string v0, "FingerAirViewSettings"

    const-string v1, "switch is on"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_highlight"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    invoke-direct {p0, p2}, Lcom/android/settings/FingerAirViewSettings;->broadcastFingerAirViewChanged(Z)V

    .line 247
    const-string v0, "FingerAirViewSettings"

    const-string v1, "switch is off"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v2, 0x7f07003f

    invoke-virtual {p0, v2}, Lcom/android/settings/FingerAirViewSettings;->addPreferencesFromResource(I)V

    .line 90
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/FingerAirViewSettings;->setHasOptionsMenu(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    .line 93
    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 94
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    .line 95
    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 96
    .local v1, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 99
    .local v0, "padding":I
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v0, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 100
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 102
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 106
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    .line 110
    .end local v0    # "padding":I
    .end local v1    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    .line 115
    const-string v2, "magnifier"

    invoke-virtual {p0, v2}, Lcom/android/settings/FingerAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    .line 117
    const-string v2, "information_preview"

    invoke-virtual {p0, v2}, Lcom/android/settings/FingerAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    .line 119
    const-string v2, "sound_and_haptic_feedback"

    invoke-virtual {p0, v2}, Lcom/android/settings/FingerAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 121
    const-string v2, "progress_bar_preview"

    invoke-virtual {p0, v2}, Lcom/android/settings/FingerAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    .line 122
    const-string v2, "speed_dial_tip"

    invoke-virtual {p0, v2}, Lcom/android/settings/FingerAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    .line 125
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x1

    const v1, 0x7f090d11

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201aa

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 205
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 209
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 216
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 211
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "air_view"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 214
    const/4 v1, 0x1

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 177
    iget-boolean v0, p0, Lcom/android/settings/FingerAirViewSettings;->isGoIntoMoreDepth:Z

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090cfc

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_highlight"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    invoke-direct {p0, v2}, Lcom/android/settings/FingerAirViewSettings;->broadcastFingerAirViewChanged(Z)V

    .line 186
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 261
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 264
    .local v0, "value":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_3

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_magnifier"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->isAllOptionDisabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 290
    :cond_1
    return v1

    .end local v0    # "value":I
    :cond_2
    move v0, v2

    .line 261
    goto :goto_0

    .line 269
    .restart local v0    # "value":I
    :cond_3
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_4

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_information_preview"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_full_text"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 278
    :cond_4
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_5

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_pregress_bar_preview"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 280
    :cond_5
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_speed_dial_tip"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 295
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_sound_and_haptic_feedback"

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    :goto_1
    return v1

    .line 296
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 299
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/FingerAirViewSettings;->isGoIntoMoreDepth:Z

    .line 302
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 137
    const-string v3, "FingerAirViewSettings"

    const-string v4, "onResume()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iput-boolean v2, p0, Lcom/android/settings/FingerAirViewSettings;->isGoIntoMoreDepth:Z

    .line 141
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    .line 146
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "finger_air_view"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 147
    .local v0, "fingerAirViewState":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 150
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 152
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 154
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 156
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 157
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 160
    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_magnifier"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 162
    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_information_preview"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 164
    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 166
    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_pregress_bar_preview"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    :goto_4
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 167
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_speed_dial_tip"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 169
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "finger_air_view"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettings;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 171
    return-void

    .end local v0    # "fingerAirViewState":Z
    :cond_2
    move v0, v2

    .line 146
    goto :goto_0

    .restart local v0    # "fingerAirViewState":Z
    :cond_3
    move v3, v2

    .line 160
    goto :goto_1

    :cond_4
    move v3, v2

    .line 162
    goto :goto_2

    :cond_5
    move v3, v2

    .line 164
    goto :goto_3

    :cond_6
    move v3, v2

    .line 166
    goto :goto_4
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 191
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettings;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 194
    return-void
.end method
