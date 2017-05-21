.class public Lcom/android/settings/SimEnabler;
.super Ljava/lang/Object;
.source "SimEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static isLogOn:Z

.field static isSim1Selected:Z


# instance fields
.field private final SLOT1:I

.field private final SLOT2:I

.field private checkBoxLayout:Landroid/widget/FrameLayout;

.field isRegistReceiver:Z

.field private mCheckBox:Landroid/widget/CheckBox;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mSimState_1:Ljava/lang/String;

.field private mSimState_2:Ljava/lang/String;

.field private mSlot:I

.field private mSwitch:Landroid/widget/Switch;

.field phone:[Lcom/android/internal/telephony/Phone;

.field private pref:Landroid/content/SharedPreferences;

.field sim_1_active:Z

.field sim_2_active:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    sput-boolean v0, Lcom/android/settings/SimEnabler;->isLogOn:Z

    .line 62
    sput-boolean v0, Lcom/android/settings/SimEnabler;->isSim1Selected:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # Landroid/widget/FrameLayout;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    aput-object v1, v0, v3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/SimEnabler;->phone:[Lcom/android/internal/telephony/Phone;

    .line 63
    iput-boolean v3, p0, Lcom/android/settings/SimEnabler;->sim_1_active:Z

    .line 64
    iput-boolean v3, p0, Lcom/android/settings/SimEnabler;->sim_2_active:Z

    .line 65
    iput-boolean v3, p0, Lcom/android/settings/SimEnabler;->isRegistReceiver:Z

    .line 68
    new-instance v0, Lcom/android/settings/SimEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SimEnabler$1;-><init>(Lcom/android/settings/SimEnabler;)V

    iput-object v0, p0, Lcom/android/settings/SimEnabler;->mHandler:Landroid/os/Handler;

    .line 103
    iput-object v1, p0, Lcom/android/settings/SimEnabler;->mSwitch:Landroid/widget/Switch;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/SimEnabler;->mSlot:I

    .line 105
    iput v3, p0, Lcom/android/settings/SimEnabler;->SLOT1:I

    .line 106
    iput v2, p0, Lcom/android/settings/SimEnabler;->SLOT2:I

    .line 81
    iput-object p1, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    .line 82
    if-eqz p2, :cond_0

    .line 83
    iput-object p2, p0, Lcom/android/settings/SimEnabler;->checkBoxLayout:Landroid/widget/FrameLayout;

    .line 84
    const v0, 0x7f0b0403

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/SimEnabler;->mCheckBox:Landroid/widget/CheckBox;

    .line 87
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/SimEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SimEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 88
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 90
    const-string v0, "sim_pref"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SimEnabler;->pref:Landroid/content/SharedPreferences;

    .line 92
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SimEnabler;->mSimState_1:Ljava/lang/String;

    .line 93
    const-string v0, "ril.ICC_TYPE_1"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SimEnabler;->mSimState_2:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->updateVariable()V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;
    .param p3, "slot"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/SimEnabler;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 113
    iput-object p2, p0, Lcom/android/settings/SimEnabler;->mSwitch:Landroid/widget/Switch;

    .line 114
    iput p3, p0, Lcom/android/settings/SimEnabler;->mSlot:I

    .line 116
    const-string v0, "SimCardMGT SimEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSlot ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/SimEnabler;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SimEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SimEnabler;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SimEnabler;->onSimModeChanged()V

    return-void
.end method

.method static getTelephonyService(I)Lcom/android/internal/telephony/ITelephony;
    .locals 3
    .param p0, "simCardId"    # I

    .prologue
    .line 268
    const-string v1, "phone"

    invoke-static {v1, p0}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 270
    .local v0, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 271
    const-string v1, "SimCardMGT SimEnabler"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    return-object v0
.end method

.method private onSimModeChanged()V
    .locals 2

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->updateVariable()V

    .line 484
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->isSimOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 489
    :cond_0
    return-void
.end method

.method private simDeactivate(Z)V
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 428
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.settings.dsasimpowerchange"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->updateVariable()V

    .line 432
    iget-object v5, p0, Lcom/android/settings/SimEnabler;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 434
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v5, Lcom/android/settings/SimEnabler;->isSim1Selected:Z

    if-eqz v5, :cond_1

    .line 435
    iget-object v5, p0, Lcom/android/settings/SimEnabler;->phone:[Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    aput-object v6, v5, v8

    .line 436
    iget-object v5, p0, Lcom/android/settings/SimEnabler;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v5, v5, v8

    invoke-interface {v5, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 438
    const-string v5, "sim_1_active_change"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 440
    const-string v5, "SimCardMGT SimEnabler"

    const-string v6, "simDeactivate : setSharedPref SIM 1 change true"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 453
    if-nez p1, :cond_0

    .line 455
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 458
    .local v4, "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    sget-boolean v5, Lcom/android/settings/SimEnabler;->isSim1Selected:Z

    if-eqz v5, :cond_2

    .line 460
    const/4 v3, 0x1

    .line 466
    .local v3, "mNewSimCardId":I
    :goto_1
    if-eqz v4, :cond_0

    .line 468
    :try_start_0
    invoke-interface {v4, v3}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCalls(I)V

    .line 469
    const-string v5, "SimCardMGT SimEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simDeactivate : mnewSimCardId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .end local v3    # "mNewSimCardId":I
    .end local v4    # "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_2
    return-void

    .line 443
    :cond_1
    iget-object v5, p0, Lcom/android/settings/SimEnabler;->phone:[Lcom/android/internal/telephony/Phone;

    invoke-static {v7}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    aput-object v6, v5, v7

    .line 444
    iget-object v5, p0, Lcom/android/settings/SimEnabler;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v5, v5, v7

    invoke-interface {v5, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 446
    const-string v5, "sim_2_active_change"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 448
    const-string v5, "SimCardMGT SimEnabler"

    const-string v6, "simDeactivate : setSharedPref SIM 2 change true"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 464
    .restart local v4    # "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "mNewSimCardId":I
    goto :goto_1

    .line 471
    :catch_0
    move-exception v1

    .line 472
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v5, "SimCardMGT SimEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simDeactivate exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateColumn(I)V
    .locals 1
    .param p1, "active"    # I

    .prologue
    .line 278
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 295
    .local v0, "editedValues":Landroid/content/ContentValues;
    return-void
.end method


# virtual methods
.method public ChangeSimStateSendIntent(ZZ)V
    .locals 7
    .param p1, "isMasterSIM"    # Z
    .param p2, "Activate"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 374
    const-string v2, "SimCardMGT SimEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMasterSIM = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Activate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 376
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string v5, "simcard_sim_id"

    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    const-string v2, "simcard_sim_activate"

    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    const-string v2, "SimCardMGT SimEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display for Broadcating Intent ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_2
    return-void

    :cond_0
    move v2, v4

    .line 377
    goto :goto_0

    :cond_1
    move v4, v3

    .line 380
    goto :goto_1

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SimCardMGT SimEnabler"

    const-string v3, "not found ACTION_SIM_MGT_CHANGED"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public doClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 499
    invoke-static {v5}, Lcom/android/settings/SimEnabler;->getTelephonyService(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 500
    .local v2, "phoneServ":Lcom/android/internal/telephony/ITelephony;
    const/4 v3, 0x0

    .line 502
    .local v3, "phoneServ1":Lcom/android/internal/telephony/ITelephony;
    invoke-static {v4}, Lcom/android/settings/SimEnabler;->getTelephonyService(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 507
    :try_start_0
    const-string v6, "ril.rat_change_sim1"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "on"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "ril.rat_change_sim2"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "on"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 511
    :cond_0
    const-string v6, "SimCardMGT SimEnabler"

    const-string v7, "RAT Changing do not deactive sim"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_1
    :goto_0
    return-void

    .line 517
    :cond_2
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v6

    if-nez v6, :cond_5

    .line 519
    :cond_3
    const-string v6, "SimCardMGT SimEnabler"

    const-string v7, "SIM 1 Now is Calling donot deactive sim"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    :catch_0
    move-exception v1

    .line 532
    .local v1, "e1":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 535
    .end local v1    # "e1":Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0b0400

    if-ne v6, v7, :cond_1

    .line 536
    iget-object v6, p0, Lcom/android/settings/SimEnabler;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-nez v6, :cond_7

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/settings/SimEnabler;->setSimOn(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 538
    :catch_1
    move-exception v0

    .line 540
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 523
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    :try_start_2
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v6

    if-nez v6, :cond_4

    .line 525
    :cond_6
    const-string v6, "SimCardMGT SimEnabler"

    const-string v7, "SIM 2 Now is Calling donot deactive sim"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_7
    move v4, v5

    .line 536
    goto :goto_1
.end method

.method public doPause()V
    .locals 3

    .prologue
    .line 250
    const-string v0, "SIM Enabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do Pause isRegistReceiver ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->isRegistReceiver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-boolean v0, p0, Lcom/android/settings/SimEnabler;->isRegistReceiver:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SimEnabler;->isRegistReceiver:Z

    .line 256
    :cond_0
    return-void
.end method

.method public doResume()V
    .locals 3

    .prologue
    .line 223
    const-string v0, "SIM Enabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do Resume  isRegistReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->isRegistReceiver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->updateVariable()V

    .line 225
    iget-boolean v0, p0, Lcom/android/settings/SimEnabler;->isRegistReceiver:Z

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SimEnabler;->isRegistReceiver:Z

    .line 234
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const-string v0, "SIM Enabler"

    const-string v1, "Switch Disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    return-void

    .line 241
    :cond_1
    const-string v0, "SIM Enabler"

    const-string v1, "Switch Enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->isSimOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public isAllSimOff(Z)Z
    .locals 3
    .param p1, "enabling"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->updateVariable()V

    .line 547
    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->sim_1_active:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->sim_2_active:Z

    if-nez v2, :cond_1

    .line 548
    iget-object v2, p0, Lcom/android/settings/SimEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 549
    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->resume()V

    .line 550
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 553
    :goto_0
    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public isOneSimOff()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 557
    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->sim_1_active:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->sim_2_active:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/SimEnabler;->mSimState_1:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/SimEnabler;->mSimState_2:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 558
    const-string v1, "SimCardMGT SimEnabler"

    const-string v2, "for data service network isOneSimOff() = All SIM is Active"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_0
    :goto_0
    return v0

    .line 561
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->sim_1_active:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->sim_2_active:Z

    if-nez v2, :cond_2

    .line 563
    const-string v0, "SimCardMGT SimEnabler"

    const-string v2, "for data service network isOneSimOff() = one SIM[SIM 2] is Off"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 564
    goto :goto_0

    .line 566
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->sim_1_active:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->sim_2_active:Z

    if-eqz v2, :cond_0

    .line 568
    const-string v0, "SimCardMGT SimEnabler"

    const-string v2, "for data service network isOneSimOff() = one SIM[SIM 1] is Off"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 569
    goto :goto_0
.end method

.method isSimOn()Z
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->updateVariable()V

    .line 421
    sget-boolean v0, Lcom/android/settings/SimEnabler;->isSim1Selected:Z

    if-eqz v0, :cond_0

    .line 422
    iget-boolean v0, p0, Lcom/android/settings/SimEnabler;->sim_1_active:Z

    .line 424
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SimEnabler;->sim_2_active:Z

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->updateVariable()V

    .line 163
    sget-boolean v1, Lcom/android/settings/SimEnabler;->isSim1Selected:Z

    if-eqz v1, :cond_1

    .line 165
    iget-boolean v1, p0, Lcom/android/settings/SimEnabler;->sim_1_active:Z

    if-ne v1, p2, :cond_2

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/SimEnabler;->sim_2_active:Z

    if-eq v1, p2, :cond_0

    .line 172
    :cond_2
    if-nez p2, :cond_3

    .line 175
    :try_start_0
    const-string v1, "SimCardMGT SimEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "desiredState false = SIM Off mSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SimEnabler;->mSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/SimEnabler;->setSimOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 187
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    const-string v1, "SimCardMGT SimEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "desiredState false = SIM On mSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SimEnabler;->mSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/SimEnabler;->setSimOn(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 190
    :catch_1
    move-exception v0

    .line 192
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->doPause()V

    .line 130
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->doResume()V

    .line 125
    return-void
.end method

.method public setSimOn(Z)V
    .locals 5
    .param p1, "enabling"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 322
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->checkBoxLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->checkBoxLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 327
    :cond_0
    sget-boolean v0, Lcom/android/settings/SimEnabler;->isSim1Selected:Z

    if-eqz v0, :cond_6

    .line 330
    const-string v0, "SimCardMGT SimEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM 1 change the set turned on or off = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone1_on"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/SimEnabler;->updateColumn(I)V

    .line 337
    invoke-virtual {p0, p1}, Lcom/android/settings/SimEnabler;->isAllSimOff(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 339
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone1_on"

    if-nez p1, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 342
    if-nez p1, :cond_4

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/settings/SimEnabler;->updateColumn(I)V

    .line 370
    :goto_4
    return-void

    :cond_1
    move v0, v2

    .line 331
    goto :goto_0

    :cond_2
    move v0, v2

    .line 335
    goto :goto_1

    :cond_3
    move v0, v2

    .line 339
    goto :goto_2

    :cond_4
    move v1, v2

    .line 342
    goto :goto_3

    .line 345
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/settings/SimEnabler;->simDeactivate(Z)V

    .line 367
    :goto_5
    sget-boolean v0, Lcom/android/settings/SimEnabler;->isSim1Selected:Z

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/SimEnabler;->ChangeSimStateSendIntent(ZZ)V

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->updateVariable()V

    goto :goto_4

    .line 349
    :cond_6
    const-string v0, "SimCardMGT SimEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM 2 change the set turned on or off = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    if-eqz p1, :cond_7

    move v0, v1

    :goto_6
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    if-eqz p1, :cond_8

    move v0, v1

    :goto_7
    invoke-direct {p0, v0}, Lcom/android/settings/SimEnabler;->updateColumn(I)V

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/settings/SimEnabler;->isAllSimOff(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 358
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    if-nez p1, :cond_9

    move v0, v1

    :goto_8
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 361
    if-nez p1, :cond_a

    :goto_9
    invoke-direct {p0, v1}, Lcom/android/settings/SimEnabler;->updateColumn(I)V

    goto :goto_4

    :cond_7
    move v0, v2

    .line 350
    goto :goto_6

    :cond_8
    move v0, v2

    .line 354
    goto :goto_7

    :cond_9
    move v0, v2

    .line 358
    goto :goto_8

    :cond_a
    move v1, v2

    .line 361
    goto :goto_9

    .line 365
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/settings/SimEnabler;->simDeactivate(Z)V

    goto :goto_5
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    iget-object v1, p0, Lcom/android/settings/SimEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SimEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    iput-object p1, p0, Lcom/android/settings/SimEnabler;->mSwitch:Landroid/widget/Switch;

    .line 137
    iget-object v1, p0, Lcom/android/settings/SimEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    const/4 v0, -0x1

    .line 141
    .local v0, "phoneState":I
    iget v1, p0, Lcom/android/settings/SimEnabler;->mSlot:I

    if-nez v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone1_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 147
    :cond_1
    :goto_1
    if-ne v0, v4, :cond_3

    .line 148
    iget-object v1, p0, Lcom/android/settings/SimEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 143
    :cond_2
    iget v1, p0, Lcom/android/settings/SimEnabler;->mSlot:I

    if-ne v1, v4, :cond_1

    .line 144
    iget-object v1, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone2_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 150
    :cond_3
    iget-object v1, p0, Lcom/android/settings/SimEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public updateVariable()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    iget v0, p0, Lcom/android/settings/SimEnabler;->mSlot:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/SimEnabler;->isSim1Selected:Z

    .line 208
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "phone1_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/SimEnabler;->sim_1_active:Z

    .line 210
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "phone2_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/SimEnabler;->sim_2_active:Z

    .line 213
    sget-boolean v0, Lcom/android/settings/SimEnabler;->isLogOn:Z

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "SIM Enabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sim 1 Active = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->sim_1_active:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v0, "SIM Enabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sim 2 Active = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->sim_2_active:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v0, "SIM Enabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSim1Selected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/SimEnabler;->isSim1Selected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 206
    goto :goto_0

    :cond_2
    move v0, v2

    .line 208
    goto :goto_1

    :cond_3
    move v1, v2

    .line 210
    goto :goto_2
.end method
