.class Lcom/android/settings/wifi/mobileap/WifiApSettings$10;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 721
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 722
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1500(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1402(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 723
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 724
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 729
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->saveIsShowPassword()V

    .line 731
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    .line 732
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 733
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1900(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1500(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z
    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2000(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 734
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 736
    const-wide/16 v2, 0x258

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :goto_0
    sput-boolean v7, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 745
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 759
    :cond_0
    :goto_1
    return-void

    .line 737
    :catch_0
    move-exception v1

    .line 738
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 746
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1500(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApDialog;->getTimeoutValueChangedFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 747
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 748
    .local v0, "alarm_intent":Landroid/content/Intent;
    const-string v2, "wifiap_power_mode_alarm_option"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 749
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2100(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 750
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1500(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/settings/wifi/WifiApDialog;->setTimeoutValueChangedFlag(Z)V

    goto :goto_1

    .line 753
    .end local v0    # "alarm_intent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V
    invoke-static {v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2200(Lcom/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 756
    :cond_3
    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    goto :goto_1
.end method
