.class Lcom/android/settings/NetworkManagement$6;
.super Ljava/lang/Object;
.source "NetworkManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NetworkManagement;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NetworkManagement;

.field final synthetic val$linear:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/NetworkManagement;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/settings/NetworkManagement$6;->this$0:Lcom/android/settings/NetworkManagement;

    iput-object p2, p0, Lcom/android/settings/NetworkManagement$6;->val$linear:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v4, 0x0

    .line 546
    iget-object v2, p0, Lcom/android/settings/NetworkManagement$6;->val$linear:Landroid/view/View;

    const v3, 0x7f0b004b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 547
    .local v0, "doNotShow":Landroid/widget/CheckBox;
    iget-object v2, p0, Lcom/android/settings/NetworkManagement$6;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    # invokes: Lcom/android/settings/NetworkManagement;->setInitDialog(Z)V
    invoke-static {v2, v3}, Lcom/android/settings/NetworkManagement;->access$100(Lcom/android/settings/NetworkManagement;Z)V

    .line 548
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 550
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 551
    .local v1, "myIntent":Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.DsaMainParser"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 553
    iget-object v2, p0, Lcom/android/settings/NetworkManagement$6;->this$0:Lcom/android/settings/NetworkManagement;

    iget-boolean v2, v2, Lcom/android/settings/NetworkManagement;->mIsReseted:Z

    if-eqz v2, :cond_0

    .line 555
    iget-object v2, p0, Lcom/android/settings/NetworkManagement$6;->this$0:Lcom/android/settings/NetworkManagement;

    iput-boolean v4, v2, Lcom/android/settings/NetworkManagement;->mIsChangedImsi:Z

    .line 556
    iget-object v2, p0, Lcom/android/settings/NetworkManagement$6;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-virtual {v2}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dsa_reset"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 557
    const-string v2, "extra_changed_imsi"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 559
    :cond_0
    iget-object v2, p0, Lcom/android/settings/NetworkManagement$6;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-virtual {v2, v1}, Lcom/android/settings/NetworkManagement;->startActivity(Landroid/content/Intent;)V

    .line 560
    return-void
.end method
