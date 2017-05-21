.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$10;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 789
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$10;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigListAvailable(Landroid/net/wifi/p2p/WifiP2pConfigList;)V
    .locals 1
    .param p1, "configList"    # Landroid/net/wifi/p2p/WifiP2pConfigList;

    .prologue
    .line 791
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$4100()Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pConfigList;->clear()Z

    .line 792
    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$4102(Landroid/net/wifi/p2p/WifiP2pConfigList;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    .line 793
    return-void
.end method

.method public onConfigListUnavailable()V
    .locals 1

    .prologue
    .line 795
    const/4 v0, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1502(Z)Z

    .line 796
    return-void
.end method
