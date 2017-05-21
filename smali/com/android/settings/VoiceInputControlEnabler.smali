.class public final Lcom/android/settings/VoiceInputControlEnabler;
.super Ljava/lang/Object;
.source "VoiceInputControlEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "voice_input_control"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    .line 50
    new-instance v0, Lcom/android/settings/VoiceInputControlEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/VoiceInputControlEnabler$1;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    .line 64
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/VoiceInputControlEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/VoiceInputControlEnabler;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/VoiceInputControlEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/VoiceInputControlEnabler;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 11
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 133
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voiceinputcontrol_showNeverAgain"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 134
    .local v4, "showNeverAgain":I
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voice_input_control"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 136
    .local v5, "voiceState":I
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voice_input_control"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v6, v9}, Landroid/sec/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v6, v9}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 141
    :cond_0
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 142
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v9}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 143
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voice_input_control"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    :cond_1
    :goto_0
    return-void

    .line 146
    :cond_2
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v10}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 150
    if-eqz p2, :cond_3

    if-nez v5, :cond_3

    if-nez v4, :cond_3

    .line 151
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 152
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040049

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 153
    .local v2, "layout":Landroid/view/View;
    const v6, 0x7f0b00b7

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 154
    .local v0, "check":Landroid/widget/CheckBox;
    new-instance v6, Lcom/android/settings/VoiceInputControlEnabler$2;

    invoke-direct {v6, p0}, Lcom/android/settings/VoiceInputControlEnabler$2;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f090f4c

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f090f4e

    new-instance v8, Lcom/android/settings/VoiceInputControlEnabler$4;

    invoke-direct {v8, p0, v0}, Lcom/android/settings/VoiceInputControlEnabler$4;-><init>(Lcom/android/settings/VoiceInputControlEnabler;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f090f4f

    new-instance v8, Lcom/android/settings/VoiceInputControlEnabler$3;

    invoke-direct {v8, p0}, Lcom/android/settings/VoiceInputControlEnabler$3;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 177
    .local v3, "mAutoHapticDialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 178
    new-instance v6, Lcom/android/settings/VoiceInputControlEnabler$5;

    invoke-direct {v6, p0}, Lcom/android/settings/VoiceInputControlEnabler$5;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 183
    new-instance v6, Lcom/android/settings/VoiceInputControlEnabler$6;

    invoke-direct {v6, p0}, Lcom/android/settings/VoiceInputControlEnabler$6;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 197
    .end local v0    # "check":Landroid/widget/CheckBox;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "layout":Landroid/view/View;
    .end local v3    # "mAutoHapticDialog":Landroid/app/AlertDialog;
    :cond_3
    if-eqz p2, :cond_4

    if-nez v5, :cond_4

    .line 198
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 199
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voice_input_control"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 200
    :cond_4
    if-nez p2, :cond_1

    if-ne v5, v10, :cond_1

    .line 201
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 202
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voice_input_control"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v1}, Landroid/sec/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v1}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 99
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control"

    iget-object v4, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 99
    goto :goto_1
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/sec/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 84
    :goto_1
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.settings.VOICECONTROL_SWITCH_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    .line 113
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 117
    .local v0, "voiceTalkState":I
    if-ne v0, v4, :cond_3

    .line 118
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 124
    :goto_1
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 127
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public updateSwitch()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 208
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 210
    .local v1, "voiceInputControState":I
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 212
    .local v0, "isChecked":Z
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    if-ne v1, v5, :cond_1

    .line 214
    if-nez v0, :cond_0

    .line 215
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    if-eqz v0, :cond_0

    .line 219
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
