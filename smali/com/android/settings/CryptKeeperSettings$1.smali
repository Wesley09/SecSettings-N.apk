.class Lcom/android/settings/CryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperSettings;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "action":Ljava/lang/String;
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 81
    const-string v9, "level"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 82
    .local v3, "level":I
    const-string v9, "plugged"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 83
    .local v5, "plugged":I
    const-string v9, "invalid_charger"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 86
    .local v2, "invalidCharger":I
    const/16 v9, 0x50

    if-lt v3, v9, :cond_2

    const/4 v4, 0x1

    .line 87
    .local v4, "levelOk":Z
    :goto_0
    and-int/lit8 v9, v5, 0x7

    if-eqz v9, :cond_3

    if-nez v2, :cond_3

    const/4 v6, 0x1

    .line 91
    .local v6, "pluggedOk":Z
    :goto_1
    iget-object v9, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v9}, Lcom/android/settings/CryptKeeperSettings;->access$000(Lcom/android/settings/CryptKeeperSettings;)Landroid/dirEncryption/DirEncryptionManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentStatus()I

    move-result v8

    .line 93
    .local v8, "status":I
    const/4 v9, 0x1

    if-gt v9, v8, :cond_0

    const/4 v9, 0x3

    if-ge v9, v8, :cond_4

    :cond_0
    const/4 v7, 0x1

    .line 96
    .local v7, "sdCardOK":Z
    :goto_2
    iget-object v9, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/settings/CryptKeeperSettings;->access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v10

    if-eqz v4, :cond_5

    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v10, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 97
    iget-object v9, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;
    invoke-static {v9}, Lcom/android/settings/CryptKeeperSettings;->access$200(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v10

    if-eqz v6, :cond_6

    const/16 v9, 0x8

    :goto_4
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v9, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mBatteryWarning:Landroid/view/View;
    invoke-static {v9}, Lcom/android/settings/CryptKeeperSettings;->access$300(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v10

    if-eqz v4, :cond_7

    const/16 v9, 0x8

    :goto_5
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v9, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mSDcardOngoingWarning:Landroid/view/View;
    invoke-static {v9}, Lcom/android/settings/CryptKeeperSettings;->access$400(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v10

    if-eqz v7, :cond_8

    const/16 v9, 0x8

    :goto_6
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v9, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/settings/CryptKeeperSettings;->access$500(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v9, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-virtual {v9}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 105
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_1

    .line 106
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/app/admin/DevicePolicyManager;->satisfyFIPSPassword(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 107
    iget-object v9, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/settings/CryptKeeperSettings;->access$500(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v2    # "invalidCharger":I
    .end local v3    # "level":I
    .end local v4    # "levelOk":Z
    .end local v5    # "plugged":I
    .end local v6    # "pluggedOk":Z
    .end local v7    # "sdCardOK":Z
    .end local v8    # "status":I
    :cond_1
    :goto_7
    return-void

    .line 86
    .restart local v2    # "invalidCharger":I
    .restart local v3    # "level":I
    .restart local v5    # "plugged":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 87
    .restart local v4    # "levelOk":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 93
    .restart local v6    # "pluggedOk":Z
    .restart local v8    # "status":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 96
    .restart local v7    # "sdCardOK":Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 97
    :cond_6
    const/4 v9, 0x0

    goto :goto_4

    .line 98
    :cond_7
    const/4 v9, 0x0

    goto :goto_5

    .line 99
    :cond_8
    const/4 v9, 0x0

    goto :goto_6

    .line 109
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_9
    iget-object v9, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/settings/CryptKeeperSettings;->access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v9

    const v10, 0x7f090ab5

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    .line 110
    iget-object v9, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/settings/CryptKeeperSettings;->access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_7
.end method
