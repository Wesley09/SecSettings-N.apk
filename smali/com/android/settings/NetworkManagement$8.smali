.class Lcom/android/settings/NetworkManagement$8;
.super Ljava/lang/Object;
.source "NetworkManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NetworkManagement;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NetworkManagement;

.field final synthetic val$linear:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/settings/NetworkManagement;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/settings/NetworkManagement$8;->this$0:Lcom/android/settings/NetworkManagement;

    iput-object p2, p0, Lcom/android/settings/NetworkManagement$8;->val$linear:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 630
    iget-object v3, p0, Lcom/android/settings/NetworkManagement$8;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/NetworkManagement;->access$200(Lcom/android/settings/NetworkManagement;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-nez v3, :cond_0

    .line 632
    iget-object v3, p0, Lcom/android/settings/NetworkManagement$8;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-virtual {v3}, Lcom/android/settings/NetworkManagement;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/NetworkManagement$8;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-virtual {v6}, Lcom/android/settings/NetworkManagement;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f07005d

    invoke-virtual {v3, v6, v7, v8}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 633
    .local v2, "root":Landroid/preference/PreferenceScreen;
    iget-object v6, p0, Lcom/android/settings/NetworkManagement$8;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    # setter for: Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;
    invoke-static {v6, v3}, Lcom/android/settings/NetworkManagement;->access$202(Lcom/android/settings/NetworkManagement;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;

    .line 636
    .end local v2    # "root":Landroid/preference/PreferenceScreen;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/NetworkManagement$8;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/NetworkManagement;->access$200(Lcom/android/settings/NetworkManagement;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 637
    iget-object v3, p0, Lcom/android/settings/NetworkManagement$8;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-virtual {v3}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "paging_mode"

    iget-object v3, p0, Lcom/android/settings/NetworkManagement$8;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/NetworkManagement;->access$200(Lcom/android/settings/NetworkManagement;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 641
    iget-object v3, p0, Lcom/android/settings/NetworkManagement$8;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/NetworkManagement;->access$200(Lcom/android/settings/NetworkManagement;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v4

    .line 642
    .local v1, "pagingMode":I
    :goto_1
    const-string v3, "persist.sys.bpmsetting.enable"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v3, "NetworkManagement"

    const-string v4, "Receive BPM_Enable CheckEvent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v3, p0, Lcom/android/settings/NetworkManagement$8;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/settings/NetworkManagement;->access$400(Lcom/android/settings/NetworkManagement;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    # getter for: Lcom/android/settings/NetworkManagement;->RAW_HOOK_OEM_CMD_BPM_ENABLE:[B
    invoke-static {}, Lcom/android/settings/NetworkManagement;->access$300()[B

    move-result-object v4

    invoke-interface {v3, v4, v8}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 651
    iget-object v3, p0, Lcom/android/settings/NetworkManagement$8;->val$linear:Landroid/widget/LinearLayout;

    const v4, 0x7f0b004b

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 652
    .local v0, "doNotShow":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/android/settings/NetworkManagement$8;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    # invokes: Lcom/android/settings/NetworkManagement;->setInitDialogBPM(Z)V
    invoke-static {v3, v4}, Lcom/android/settings/NetworkManagement;->access$500(Lcom/android/settings/NetworkManagement;Z)V

    .line 654
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 656
    return-void

    .end local v0    # "doNotShow":Landroid/widget/CheckBox;
    .end local v1    # "pagingMode":I
    :cond_1
    move v3, v5

    .line 637
    goto :goto_0

    :cond_2
    move v1, v5

    .line 641
    goto :goto_1
.end method
