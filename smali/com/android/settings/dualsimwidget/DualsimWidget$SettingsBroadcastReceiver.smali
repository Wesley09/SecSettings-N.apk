.class public Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DualsimWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dualsimwidget/DualsimWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsBroadcastReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 499
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 500
    iput-object p1, p0, Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 501
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 519
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/settings/dualsimwidget/DualsimWidget;->phoneNumberEnabler:Z
    invoke-static {}, Lcom/android/settings/dualsimwidget/DualsimWidget;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    const-string v1, "phone_Number1"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/dualsimwidget/DualsimWidget;->phoneNum_1:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/dualsimwidget/DualsimWidget;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 522
    const-string v1, "phone_Number2"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/dualsimwidget/DualsimWidget;->phoneNum_2:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/dualsimwidget/DualsimWidget;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 523
    iget-object v1, p0, Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/dualsimwidget/DualsimWidget;->updateWidget(Landroid/content/Context;)V

    .line 524
    const/4 v1, 0x0

    # setter for: Lcom/android/settings/dualsimwidget/DualsimWidget;->phoneNumberEnabler:Z
    invoke-static {v1}, Lcom/android/settings/dualsimwidget/DualsimWidget;->access$002(Z)Z

    .line 526
    :cond_0
    const-string v1, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.settings.SIMCARD_MGT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 527
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/dualsimwidget/DualsimWidget;->updateWidget(Landroid/content/Context;)V

    .line 529
    :cond_2
    return-void
.end method

.method registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 504
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 505
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    const-string v2, "android.settings.SIMCARD_MGT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.settings.dualsimwidget"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 508
    .local v1, "filter2":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 509
    iget-object v2, p0, Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 511
    return-void
.end method

.method unregisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/settings/dualsimwidget/DualsimWidget$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 515
    return-void
.end method
