.class Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$13;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v5, 0x0

    .line 531
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$400(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 532
    .local v2, "wifiState":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 534
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$400(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 535
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$500(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 536
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "wifi_saved_state"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 538
    const-wide/16 v3, 0x258

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V
    invoke-static {v3, v5}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$600(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    .line 544
    return-void

    .line 539
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 540
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
