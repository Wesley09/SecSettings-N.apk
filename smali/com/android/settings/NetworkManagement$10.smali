.class Lcom/android/settings/NetworkManagement$10;
.super Landroid/content/BroadcastReceiver;
.source "NetworkManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NetworkManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NetworkManagement;


# direct methods
.method constructor <init>(Lcom/android/settings/NetworkManagement;)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 718
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.settings.dsasimpowerchange"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 719
    const-string v5, "NetworkManagement"

    const-string v6, "onReceive DSA_SIM_POWER_CHANGE_INTENT"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v1, 0x0

    .line 723
    .local v1, "enable":I
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-virtual {v5}, Lcom/android/settings/NetworkManagement;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 728
    :goto_0
    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    # invokes: Lcom/android/settings/NetworkManagement;->checkDualSimMode(Landroid/content/Context;)Z
    invoke-static {v5, p1}, Lcom/android/settings/NetworkManagement;->access$600(Lcom/android/settings/NetworkManagement;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_1

    .line 729
    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    iget-object v5, v5, Lcom/android/settings/NetworkManagement;->mButtonDSA:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 794
    :cond_0
    :goto_1
    return-void

    .line 724
    :catch_0
    move-exception v3

    .line 725
    .local v3, "se":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v3}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 732
    .end local v3    # "se":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    iget-object v5, v5, Lcom/android/settings/NetworkManagement;->mButtonDSA:Landroid/preference/Preference;

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 737
    .end local v1    # "enable":I
    :cond_2
    const/4 v1, 0x0

    .line 738
    .restart local v1    # "enable":I
    const-string v5, "NetworkManagement"

    const-string v6, "onReceive"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.PHONE_STATE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 740
    const-string v5, "state"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "state"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 741
    .local v2, "newPhoneState":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    iget-object v6, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    # invokes: Lcom/android/settings/NetworkManagement;->convertCallState(Ljava/lang/String;)I
    invoke-static {v6, v2}, Lcom/android/settings/NetworkManagement;->access$800(Lcom/android/settings/NetworkManagement;Ljava/lang/String;)I

    move-result v6

    # setter for: Lcom/android/settings/NetworkManagement;->currentPhoneState1:I
    invoke-static {v5, v6}, Lcom/android/settings/NetworkManagement;->access$702(Lcom/android/settings/NetworkManagement;I)I

    .line 743
    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    iget-object v6, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    # invokes: Lcom/android/settings/NetworkManagement;->convertCallState(Ljava/lang/String;)I
    invoke-static {v6, v2}, Lcom/android/settings/NetworkManagement;->access$800(Lcom/android/settings/NetworkManagement;Ljava/lang/String;)I

    move-result v6

    # setter for: Lcom/android/settings/NetworkManagement;->currentPhoneState2:I
    invoke-static {v5, v6}, Lcom/android/settings/NetworkManagement;->access$902(Lcom/android/settings/NetworkManagement;I)I

    .line 744
    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive currentPhoneState1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->currentPhoneState1:I
    invoke-static {v7}, Lcom/android/settings/NetworkManagement;->access$700(Lcom/android/settings/NetworkManagement;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", currentPhoneState2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->currentPhoneState2:I
    invoke-static {v7}, Lcom/android/settings/NetworkManagement;->access$900(Lcom/android/settings/NetworkManagement;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    .end local v2    # "newPhoneState":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 754
    :goto_3
    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->dataNetworkState:Z
    invoke-static {v5}, Lcom/android/settings/NetworkManagement;->access$1000(Lcom/android/settings/NetworkManagement;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->pagingState:Z
    invoke-static {v5}, Lcom/android/settings/NetworkManagement;->access$1100(Lcom/android/settings/NetworkManagement;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 756
    :cond_4
    if-eq v1, v8, :cond_5

    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->currentPhoneState1:I
    invoke-static {v5}, Lcom/android/settings/NetworkManagement;->access$700(Lcom/android/settings/NetworkManagement;)I

    move-result v5

    if-eq v5, v8, :cond_5

    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->currentPhoneState1:I
    invoke-static {v5}, Lcom/android/settings/NetworkManagement;->access$700(Lcom/android/settings/NetworkManagement;)I

    move-result v5

    if-eq v5, v10, :cond_5

    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->currentPhoneState2:I
    invoke-static {v5}, Lcom/android/settings/NetworkManagement;->access$900(Lcom/android/settings/NetworkManagement;)I

    move-result v5

    if-eq v5, v8, :cond_5

    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->currentPhoneState2:I
    invoke-static {v5}, Lcom/android/settings/NetworkManagement;->access$900(Lcom/android/settings/NetworkManagement;)I

    move-result v5

    if-ne v5, v10, :cond_b

    .line 758
    :cond_5
    const/4 v0, 0x0

    .line 762
    .local v0, "bool":Z
    :goto_4
    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Flight Mode or CallState is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mSimStatePreference:Lcom/android/settings/SimStatePreference;
    invoke-static {v5}, Lcom/android/settings/NetworkManagement;->access$1200(Lcom/android/settings/NetworkManagement;)Lcom/android/settings/SimStatePreference;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 765
    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mSimStatePreference:Lcom/android/settings/SimStatePreference;
    invoke-static {v5}, Lcom/android/settings/NetworkManagement;->access$1200(Lcom/android/settings/NetworkManagement;)Lcom/android/settings/SimStatePreference;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/settings/SimStatePreference;->stateEnable(Z)V

    .line 768
    :cond_6
    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;
    invoke-static {v5}, Lcom/android/settings/NetworkManagement;->access$1300(Lcom/android/settings/NetworkManagement;)Landroid/preference/ListPreference;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 769
    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;
    invoke-static {v5}, Lcom/android/settings/NetworkManagement;->access$1300(Lcom/android/settings/NetworkManagement;)Landroid/preference/ListPreference;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 771
    :cond_7
    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    # invokes: Lcom/android/settings/NetworkManagement;->setPreferenceEnableState(Z)V
    invoke-static {v5, v0}, Lcom/android/settings/NetworkManagement;->access$1400(Lcom/android/settings/NetworkManagement;Z)V

    .line 774
    .end local v0    # "bool":Z
    :cond_8
    if-ne v1, v8, :cond_9

    .line 775
    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;
    invoke-static {v5}, Lcom/android/settings/NetworkManagement;->access$1300(Lcom/android/settings/NetworkManagement;)Landroid/preference/ListPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 776
    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    iget-object v5, v5, Lcom/android/settings/NetworkManagement;->mButtonDSA:Landroid/preference/Preference;

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 778
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.conn.DATA_CONNECTION_CHANGE_FAIL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 780
    const-string v5, "NetworkManagement"

    const-string v6, "ACTION_DATA_CONNECTION_CHANGE_FAIL"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;
    invoke-static {v5}, Lcom/android/settings/NetworkManagement;->access$1300(Lcom/android/settings/NetworkManagement;)Landroid/preference/ListPreference;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 783
    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;
    invoke-static {v5}, Lcom/android/settings/NetworkManagement;->access$1300(Lcom/android/settings/NetworkManagement;)Landroid/preference/ListPreference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/SimListPreference;

    invoke-virtual {v5}, Lcom/android/settings/SimListPreference;->restoredDataPrefered()V

    goto/16 :goto_1

    .line 740
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 751
    :catch_1
    move-exception v3

    .line 752
    .restart local v3    # "se":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v3}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 760
    .end local v3    # "se":Landroid/provider/Settings$SettingNotFoundException;
    :cond_b
    const/4 v0, 0x1

    .restart local v0    # "bool":Z
    goto/16 :goto_4

    .line 785
    .end local v0    # "bool":Z
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.conn.DATA_CONNECTION_CHANGE_SUCCESS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 787
    const-string v5, "NetworkManagement"

    const-string v6, "ACTION_DATA_CONNECTION_CHANGE_SUCCESS"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-string v5, "simSlot"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 791
    .local v4, "simId":I
    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;
    invoke-static {v5}, Lcom/android/settings/NetworkManagement;->access$1300(Lcom/android/settings/NetworkManagement;)Landroid/preference/ListPreference;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 792
    iget-object v5, p0, Lcom/android/settings/NetworkManagement$10;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;
    invoke-static {v5}, Lcom/android/settings/NetworkManagement;->access$1300(Lcom/android/settings/NetworkManagement;)Landroid/preference/ListPreference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/SimListPreference;

    invoke-virtual {v5, v4}, Lcom/android/settings/SimListPreference;->dismissDialog(I)V

    goto/16 :goto_1
.end method
