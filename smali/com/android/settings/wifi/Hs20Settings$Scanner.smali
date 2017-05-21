.class Lcom/android/settings/wifi/Hs20Settings$Scanner;
.super Landroid/os/Handler;
.source "Hs20Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/Hs20Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private isAnqpFetchStarted:Z

.field private isSelfStartedScan:Z

.field private retryCount:I

.field final synthetic this$0:Lcom/android/settings/wifi/Hs20Settings;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/Hs20Settings;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/Hs20Settings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/Hs20Settings;Lcom/android/settings/wifi/Hs20Settings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/wifi/Hs20Settings;
    .param p2, "x1"    # Lcom/android/settings/wifi/Hs20Settings$1;

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/Hs20Settings$Scanner;-><init>(Lcom/android/settings/wifi/Hs20Settings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 403
    const-string v1, "Hs20Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sanner Msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 443
    :goto_0
    return-void

    .line 406
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/Hs20Settings;

    # getter for: Lcom/android/settings/wifi/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/Hs20Settings;->access$200(Lcom/android/settings/wifi/Hs20Settings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    iput-boolean v5, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->isSelfStartedScan:Z

    .line 408
    iput v4, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->retryCount:I

    .line 409
    iget-object v1, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/Hs20Settings;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/android/settings/wifi/Hs20Settings;->setRefreshAction(Ljava/lang/Boolean;)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/Hs20Settings;->access$300(Lcom/android/settings/wifi/Hs20Settings;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 410
    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->retryCount:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 411
    iput v4, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->retryCount:I

    .line 412
    iget-object v1, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/Hs20Settings;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/android/settings/wifi/Hs20Settings;->setRefreshAction(Ljava/lang/Boolean;)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/Hs20Settings;->access$300(Lcom/android/settings/wifi/Hs20Settings;Ljava/lang/Boolean;)V

    .line 413
    iget-object v1, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/Hs20Settings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/Hs20Settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09029b

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/Hs20Settings;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/android/settings/wifi/Hs20Settings;->setRefreshAction(Ljava/lang/Boolean;)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/Hs20Settings;->access$300(Lcom/android/settings/wifi/Hs20Settings;Ljava/lang/Boolean;)V

    .line 418
    const/16 v1, 0x1389

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/wifi/Hs20Settings$Scanner;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 422
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->isSelfStartedScan:Z

    if-eqz v1, :cond_2

    .line 423
    iput-boolean v4, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->isSelfStartedScan:Z

    .line 424
    const/16 v1, 0x138b

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/Hs20Settings$Scanner;->sendEmptyMessage(I)Z

    .line 426
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/Hs20Settings;

    iget-object v2, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/Hs20Settings;

    # getter for: Lcom/android/settings/wifi/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/Hs20Settings;->access$200(Lcom/android/settings/wifi/Hs20Settings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/android/settings/wifi/Hs20Settings;->mLastScanResult:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/android/settings/wifi/Hs20Settings;->access$402(Lcom/android/settings/wifi/Hs20Settings;Ljava/util/List;)Ljava/util/List;

    .line 427
    iget-object v1, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/Hs20Settings;

    # invokes: Lcom/android/settings/wifi/Hs20Settings;->updateConnectableApList()V
    invoke-static {v1}, Lcom/android/settings/wifi/Hs20Settings;->access$500(Lcom/android/settings/wifi/Hs20Settings;)V

    goto :goto_0

    .line 430
    :pswitch_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 431
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x2e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 432
    iget-object v1, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/Hs20Settings;

    # getter for: Lcom/android/settings/wifi/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/Hs20Settings;->access$200(Lcom/android/settings/wifi/Hs20Settings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 433
    const-string v1, "Hs20Settings"

    const-string v2, "Scanner->SEC_COMMAND_ID_HS20_FETCH_ANQP"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_3
    iput-boolean v5, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->isAnqpFetchStarted:Z

    goto/16 :goto_0

    .line 437
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_3
    iput-boolean v4, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->isAnqpFetchStarted:Z

    .line 438
    iget-object v1, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/Hs20Settings;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/android/settings/wifi/Hs20Settings;->setRefreshAction(Ljava/lang/Boolean;)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/Hs20Settings;->access$300(Lcom/android/settings/wifi/Hs20Settings;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method startScan()V
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->isSelfStartedScan:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->isAnqpFetchStarted:Z

    if-nez v0, :cond_0

    .line 387
    const/16 v0, 0x1389

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/Hs20Settings$Scanner;->sendEmptyMessage(I)Z

    .line 389
    :cond_0
    return-void
.end method

.method stopScan()V
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/Hs20Settings$Scanner;->retryCount:I

    .line 398
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/Hs20Settings$Scanner;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 399
    return-void
.end method
