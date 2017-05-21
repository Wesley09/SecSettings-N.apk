.class Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$10;
.super Ljava/lang/Object;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V
    .locals 0

    .prologue
    .line 671
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$10;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigListAvailable(Landroid/net/wifi/p2p/WifiP2pConfigList;)V
    .locals 1
    .param p1, "configList"    # Landroid/net/wifi/p2p/WifiP2pConfigList;

    .prologue
    .line 673
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$3500()Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pConfigList;->clear()Z

    .line 674
    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$3502(Landroid/net/wifi/p2p/WifiP2pConfigList;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    .line 675
    return-void
.end method

.method public onConfigListUnavailable()V
    .locals 1

    .prologue
    .line 677
    const/4 v0, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$802(Z)Z

    .line 678
    return-void
.end method
