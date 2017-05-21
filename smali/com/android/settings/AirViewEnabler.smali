.class public final Lcom/android/settings/AirViewEnabler;
.super Ljava/lang/Object;
.source "AirViewEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAirViewObserver:Landroid/database/ContentObserver;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mIsTablet:Z

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v2, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 46
    iput-boolean v0, p0, Lcom/android/settings/AirViewEnabler;->mIsTablet:Z

    .line 47
    iput-object v2, p0, Lcom/android/settings/AirViewEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 48
    iput v0, p0, Lcom/android/settings/AirViewEnabler;->mPosition:I

    .line 49
    iput-object v2, p0, Lcom/android/settings/AirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 50
    iput-object v2, p0, Lcom/android/settings/AirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 51
    new-instance v0, Lcom/android/settings/AirViewEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirViewEnabler$1;-><init>(Lcom/android/settings/AirViewEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirViewEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    .line 61
    iput-object p1, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 63
    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/AirViewEnabler;->mIsTablet:Z

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirViewEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirViewEnabler;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AirViewEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirViewEnabler;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/AirViewEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AirViewEnabler;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/AirViewEnabler;->showAllOptionDisabledDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/AirViewEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AirViewEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/AirViewEnabler;->broadcastAirViewChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/AirViewEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirViewEnabler;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/AirViewEnabler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirViewEnabler;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/AirViewEnabler;->mPosition:I

    return v0
.end method

.method private broadcastAirViewChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "air_view_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    iget-object v1, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 125
    iput-object v1, p0, Lcom/android/settings/AirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 130
    iput-object v1, p0, Lcom/android/settings/AirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 133
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f090bb4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f090bb3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/AirViewEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewEnabler$3;-><init>(Lcom/android/settings/AirViewEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/AirViewEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewEnabler$2;-><init>(Lcom/android/settings/AirViewEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 157
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 158
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/AirViewEnabler$4;

    invoke-direct {v1, p0}, Lcom/android/settings/AirViewEnabler$4;-><init>(Lcom/android/settings/AirViewEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 165
    return-void
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 170
    iput-object v1, p0, Lcom/android/settings/AirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 175
    iput-object v1, p0, Lcom/android/settings/AirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 178
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090cfc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090cfb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/AirViewEnabler$5;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewEnabler$5;-><init>(Lcom/android/settings/AirViewEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 202
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 204
    return-void
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 207
    iget-object v4, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 209
    .local v0, "fingerAirView":I
    iget-object v4, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 211
    .local v1, "penAirView":I
    or-int v4, v0, v1

    if-ge v4, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 98
    if-eqz p2, :cond_2

    .line 99
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/AirViewEnabler;->makeTalkBackDisablePopup()V

    .line 114
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AirViewEnabler;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-direct {p0}, Lcom/android/settings/AirViewEnabler;->showAllOptionDisabledDialog()V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Settings.System.AIR_VIEW_MASTER_ONOFF"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    invoke-direct {p0, p2}, Lcom/android/settings/AirViewEnabler;->broadcastAirViewChanged(Z)V

    .line 106
    const-string v0, "AirViewEnabler"

    const-string v1, "Air view switch is on"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Settings.System.AIR_VIEW_MASTER_ONOFF"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    invoke-direct {p0, p2}, Lcom/android/settings/AirViewEnabler;->broadcastAirViewChanged(Z)V

    .line 112
    const-string v0, "AirViewEnabler"

    const-string v1, "Air view switch is off"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirViewEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings/AirViewEnabler;->updateSwitch()V

    .line 73
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Settings.System.AIR_VIEW_MASTER_ONOFF"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/AirViewEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 76
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    iput-object p1, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/AirViewEnabler;->updateSwitch()V

    .line 93
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public updateSwitch()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    iget-object v3, p0, Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "Settings.System.AIR_VIEW_MASTER_ONOFF"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 119
    .local v0, "state":I
    iget-object v3, p0, Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 120
    return-void

    :cond_0
    move v1, v2

    .line 119
    goto :goto_0
.end method
