.class Lcom/android/settings/rhud6661/fragments/DensityChanger$ClearUserDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "DensityChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/rhud6661/fragments/DensityChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearUserDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$ClearUserDataObserver;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    # getter for: Lcom/android/settings/rhud6661/fragments/DensityChanger;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->access$300(Lcom/android/settings/rhud6661/fragments/DensityChanger;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 270
    return-void
.end method
