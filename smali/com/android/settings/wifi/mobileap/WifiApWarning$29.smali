.class Lcom/android/settings/wifi/mobileap/WifiApWarning$29;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$29;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 615
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$29;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$29;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1602(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 617
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$29;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$29;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1600(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 620
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$29;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->saveIsShowPassword()V

    .line 622
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$29;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApWarning;->disableWifiDialog()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1700(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 623
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$29;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 624
    const-string v0, "WifiApWarning"

    const-string v1, "mDialogConfigure.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$29;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->dismiss()V

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$29;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 630
    const-string v0, "WifiApWarning"

    const-string v1, "mDialogConfigure.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$29;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->dismiss()V

    .line 633
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$29;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$800(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 634
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$29;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0
.end method
