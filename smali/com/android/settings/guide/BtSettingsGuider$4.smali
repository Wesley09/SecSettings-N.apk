.class Lcom/android/settings/guide/BtSettingsGuider$4;
.super Ljava/lang/Object;
.source "BtSettingsGuider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/guide/BtSettingsGuider;->showCompleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/guide/BtSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/settings/guide/BtSettingsGuider;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/settings/guide/BtSettingsGuider$4;->this$0:Lcom/android/settings/guide/BtSettingsGuider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider$4;->this$0:Lcom/android/settings/guide/BtSettingsGuider;

    invoke-virtual {v0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 561
    const/4 v0, 0x0

    # setter for: Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z
    invoke-static {v0}, Lcom/android/settings/guide/BtSettingsGuider;->access$102(Z)Z

    .line 562
    const-string v0, "BtSettingsGuider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCompleteDialog onClick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z
    invoke-static {}, Lcom/android/settings/guide/BtSettingsGuider;->access$100()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider$4;->this$0:Lcom/android/settings/guide/BtSettingsGuider;

    invoke-virtual {v0}, Lcom/android/settings/guide/BtSettingsGuider;->onDestroy()V

    .line 564
    return-void
.end method
