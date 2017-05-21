.class public final Lcom/android/settings/premiumwatch/PremiumWatchEnabler;
.super Landroid/preference/PreferenceActivity;
.source "PremiumWatchEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsInMainMenu:Z

.field private mPosition:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mIsInMainMenu:Z

    .line 34
    iput-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 35
    iput v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mPosition:I

    .line 37
    iput-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 38
    new-instance v0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/premiumwatch/PremiumWatchEnabler$1;-><init>(Lcom/android/settings/premiumwatch/PremiumWatchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iput-object p1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 54
    iput v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->state:I

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.PREMIUM_WATCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 57
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 146
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "premium_watch_switch_onoff"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 148
    .local v1, "state":I
    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    .line 149
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 150
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "premium_watch_switch_onoff"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    const-string v2, "PremiumWatchEnabler"

    const-string v3, "switch is on"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.PREMIUM_WATCH_SWITCH_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 163
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    if-nez p2, :cond_0

    if-ne v1, v5, :cond_0

    .line 156
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 157
    const/4 v1, 0x0

    .line 158
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "premium_watch_switch_onoff"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    const-string v2, "PremiumWatchEnabler"

    const-string v3, "switch is off"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.PREMIUM_WATCH_SWITCH_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 127
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    iput-object p1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 132
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 134
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "premium_watch_switch_onoff"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 136
    .local v0, "state":I
    if-ne v0, v3, :cond_1

    .line 137
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 138
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 142
    :goto_1
    const-string v1, "PremiumWatchEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSwitch PREMIUM_WATCH_ONOFF ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public setSwitchOnOff()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->toggle()V

    .line 166
    return-void
.end method

.method public updateSwitch()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "premium_watch_switch_onoff"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 73
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 75
    .local v0, "isChecked":Z
    const-string v2, "PremiumWatchEnabler"

    const-string v3, "updateSwitch"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    if-ne v1, v5, :cond_1

    .line 79
    if-nez v0, :cond_0

    .line 80
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    if-eqz v0, :cond_0

    .line 84
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
