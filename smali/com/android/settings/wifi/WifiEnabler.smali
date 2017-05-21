.class public Lcom/android/settings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;
    }
.end annotation


# static fields
.field private static mGateTraceTag:Ljava/lang/String;


# instance fields
.field private bCWWaitForTurnOff:Z

.field mApDisableDialog:Landroid/app/AlertDialog;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mEnablerListener:Lcom/android/settings/guide/OnInternalSwitcherListener;

.field private mHandler:Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;

.field mVerizonDialog:Landroid/app/AlertDialog;

.field mWiFiDirectDiableDialog:Landroid/app/AlertDialog;

.field mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

.field nCWStoppingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-string v0, "GATE"

    sput-object v0, Lcom/android/settings/wifi/WifiEnabler;->mGateTraceTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    iput-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    .line 105
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiEnabler;->bCWWaitForTurnOff:Z

    .line 106
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/wifi/WifiEnabler;->nCWStoppingType:I

    .line 109
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiEnabler$1;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 298
    iput-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mEnablerListener:Lcom/android/settings/guide/OnInternalSwitcherListener;

    .line 142
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    .line 152
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 154
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    .line 157
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 158
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 160
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.settings.wifi.WIFI_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mHandler:Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiEnabler;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiEnabler;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiEnabler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiEnabler;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->checkWifiTetheringAndDisable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiEnabler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiEnabler;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->checkWifiDirectAndDisable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiEnabler;)Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiEnabler;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mHandler:Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->setWifiEnable(Z)V

    return-void
.end method

.method private checkWifiDirectAndDisable()Z
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method private checkWifiTetheringAndDisable()Z
    .locals 2

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 342
    .local v0, "wifiApState":I
    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 349
    :cond_0
    const/4 v1, 0x1

    .line 355
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dismissDialog(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 594
    packed-switch p1, :pswitch_data_0

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 596
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 598
    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 602
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 604
    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 608
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 610
    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 614
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWiFiDirectDiableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWiFiDirectDiableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWiFiDirectDiableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 616
    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWiFiDirectDiableDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 594
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 476
    return-void
.end method

.method private handleWifiApStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 434
    packed-switch p1, :pswitch_data_0

    .line 443
    :goto_0
    :pswitch_0
    return-void

    .line 440
    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    goto :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleWifiStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 382
    packed-switch p1, :pswitch_data_0

    .line 419
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 420
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 430
    :goto_0
    return-void

    .line 384
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 385
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 396
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    .line 397
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    .line 399
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 400
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 403
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 404
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 415
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 416
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onSwitchChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 311
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mEnablerListener:Lcom/android/settings/guide/OnInternalSwitcherListener;

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mEnablerListener:Lcom/android/settings/guide/OnInternalSwitcherListener;

    invoke-interface {v1, p1, p2}, Lcom/android/settings/guide/OnInternalSwitcherListener;->onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z

    move-result v0

    .line 315
    :cond_0
    return v0
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 448
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 451
    :cond_0
    return-void
.end method

.method private setWifiEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 338
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mHandler:Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public isWiFiChecked()Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiEnabler;->onSwitchChanged(Landroid/widget/CompoundButton;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 260
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 279
    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f09029a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 282
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mHandler:Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 287
    :cond_3
    if-eqz p2, :cond_5

    .line 288
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->checkWifiTetheringAndDisable()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->checkWifiDirectAndDisable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 289
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mHandler:Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    .line 294
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiEnabler;->setWifiEnable(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 189
    const-string v0, "WifiEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 218
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 214
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    .line 215
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    .line 216
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 171
    const-string v0, "WifiEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 185
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public setOnEnablerSwitchListener(Lcom/android/settings/guide/OnInternalSwitcherListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/guide/OnInternalSwitcherListener;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mEnablerListener:Lcom/android/settings/guide/OnInternalSwitcherListener;

    .line 320
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 7
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 221
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v5, p1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 223
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    .line 224
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 226
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 227
    .local v2, "wifiState":I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    move v1, v4

    .line 228
    .local v1, "isEnabled":Z
    :goto_1
    if-eq v2, v4, :cond_1

    const/4 v5, 0x4

    if-ne v2, v5, :cond_3

    :cond_1
    move v0, v4

    .line 230
    .local v0, "isDisabled":Z
    :goto_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 233
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-direct {p0, v5, v1}, Lcom/android/settings/wifi/WifiEnabler;->onSwitchChanged(Landroid/widget/CompoundButton;Z)Z

    .line 237
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v5}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 238
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .end local v0    # "isDisabled":Z
    .end local v1    # "isEnabled":Z
    :cond_2
    move v1, v3

    .line 227
    goto :goto_1

    .restart local v1    # "isEnabled":Z
    :cond_3
    move v0, v3

    .line 228
    goto :goto_2

    .line 250
    .restart local v0    # "isDisabled":Z
    :cond_4
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    move v3, v4

    :cond_6
    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method
