.class Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;)V
    .locals 0

    .prologue
    .line 2783
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2786
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    # getter for: Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->access$3700(Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;)Z

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 2787
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2788
    return-void
.end method
