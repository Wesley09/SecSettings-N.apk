.class Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pDevicePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;
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
    .line 210
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 213
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "action":Ljava/lang/String;
    const-string v7, "WifiP2pDevicePicker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v7, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 218
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 219
    const-string v7, "wifi_p2p_state"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 222
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v8, 0x1

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z
    invoke-static {v7, v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$102(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z

    .line 224
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 225
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 226
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings/ProgressCategory;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 227
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings/ProgressCategory;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 228
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->addThisDevicePreference()V
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    .line 230
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$500()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 231
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v8, 0x1

    const/4 v9, 0x0

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v7, v8, v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    .line 233
    :cond_0
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$500()Z

    move-result v7

    if-nez v7, :cond_1

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$800()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 234
    :cond_1
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$900(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 240
    :cond_2
    :goto_0
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1100()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsRegisteredMotionListener:Z
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 242
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1100()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/hardware/motion/MRListener;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 243
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v8, 0x1

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsRegisteredMotionListener:Z
    invoke-static {v7, v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1202(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z

    .line 376
    :cond_3
    :goto_1
    return-void

    .line 236
    :cond_4
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v8, 0x2

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V
    invoke-static {v7, v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V

    .line 237
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$900(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    .line 245
    :cond_5
    const-string v7, "wifi_p2p_state"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 248
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v8, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v7, v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1402(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 249
    const/4 v7, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectionComplete:Z
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1502(Z)Z

    .line 250
    const/4 v7, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$502(Z)Z

    .line 251
    const/4 v7, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$802(Z)Z

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->isInitialStickyBroadcast()Z

    move-result v7

    if-nez v7, :cond_7

    .line 254
    const-string v7, "WifiP2pDevicePicker"

    const-string v8, "WIFI_P2P_STATE_DISABLED by certain reason"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v8, 0x0

    const/4 v9, 0x0

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v7, v8, v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    .line 256
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1600()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 257
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1600()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 258
    :cond_6
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    .line 260
    :cond_7
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 261
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 262
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v8, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1702(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 265
    :cond_8
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1100()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsRegisteredMotionListener:Z
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 267
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1100()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/hardware/motion/MRListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 268
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v8, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsRegisteredMotionListener:Z
    invoke-static {v7, v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1202(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z

    goto/16 :goto_1

    .line 272
    :cond_9
    const-string v7, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 273
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 274
    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const-string v7, "wifiP2pGroupInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pGroup;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v8, v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1402(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 275
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$900(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_1

    .line 277
    :cond_a
    const-string v7, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 278
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 279
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$900(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    new-instance v9, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1$1;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;)V

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 284
    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const-string v7, "wifiP2pInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pInfo;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v8, v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1802(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 287
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 288
    .local v5, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_10

    .line 289
    const-string v7, "WifiP2pDevicePicker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "connected : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1900(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 292
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 293
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v8, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1702(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 296
    :cond_b
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1900(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_f

    .line 300
    const-string v7, "WifiP2pDevicePicker"

    const-string v8, "AUTO GO is created for multiple connect"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v4, Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-direct {v4}, Landroid/net/wifi/p2p/WifiP2pConfigList;-><init>()V

    .line 303
    .local v4, "mSelectedConfig":Landroid/net/wifi/p2p/WifiP2pConfigList;
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 304
    .local v6, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v7, v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/net/wifi/p2p/WifiP2pConfigList;->update(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto :goto_2

    .line 306
    .end local v6    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_c
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 307
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$900(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    new-instance v9, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1$2;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;)V

    invoke-virtual {v7, v8, v4, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfigList;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 318
    :cond_d
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v8, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z
    invoke-static {v7, v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1902(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z

    .line 320
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 321
    .local v3, "in":Landroid/content/Intent;
    const-string v7, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 322
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    const/4 v8, -0x1

    invoke-virtual {v7, v8, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 324
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/content/SharedPreferences;

    move-result-object v7

    if-nez v7, :cond_e

    .line 325
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "SAMSUNG_P2P"

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v7, v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2202(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 326
    :cond_e
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 327
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v7, "IS_MULTICONNECT"

    const/4 v8, 0x1

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 328
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 330
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    goto/16 :goto_1

    .line 332
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "in":Landroid/content/Intent;
    .end local v4    # "mSelectedConfig":Landroid/net/wifi/p2p/WifiP2pConfigList;
    :cond_f
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$900(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_1

    .line 336
    :cond_10
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 337
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 338
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v8, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2302(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 341
    :cond_11
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 342
    const-string v7, "WifiP2pDevicePicker"

    const-string v8, "disconnected"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v8, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v7, v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1402(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 344
    const/4 v7, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectionComplete:Z
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1502(Z)Z

    .line 345
    const/4 v7, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$802(Z)Z

    .line 347
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 348
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v8, 0x3

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V
    invoke-static {v7, v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V

    .line 349
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v8, 0x4

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V
    invoke-static {v7, v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V

    .line 352
    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->isInitialStickyBroadcast()Z

    move-result v7

    if-nez v7, :cond_13

    .line 353
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 354
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v8, 0x1

    const/4 v9, 0x0

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v7, v8, v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    .line 357
    :cond_13
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 358
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 359
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings/ProgressCategory;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 360
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings/ProgressCategory;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 361
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->addThisDevicePreference()V
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    .line 363
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v8, 0x1

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z
    invoke-static {v7, v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$102(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z

    .line 365
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 366
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v8, 0x1

    const/4 v9, 0x0

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v7, v8, v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    goto/16 :goto_1

    .line 370
    .end local v5    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_14
    const-string v7, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 371
    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const-string v7, "wifiP2pDevice"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pDevice;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v8, v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2602(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    goto/16 :goto_1
.end method
