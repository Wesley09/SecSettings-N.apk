.class Lcom/android/settings/rhud6661/fragments/DensityChanger$6;
.super Ljava/lang/Object;
.source "DensityChanger.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/rhud6661/fragments/DensityChanger;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;


# direct methods
.method constructor <init>(Lcom/android/settings/rhud6661/fragments/DensityChanger;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$6;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$6;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    iget-object v2, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$6;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    iget v2, v2, Lcom/android/settings/rhud6661/fragments/DensityChanger;->newDensityValue:I

    # invokes: Lcom/android/settings/rhud6661/fragments/DensityChanger;->setLcdDensity(I)Z
    invoke-static {v1, v2}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->access$200(Lcom/android/settings/rhud6661/fragments/DensityChanger;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$6;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    invoke-virtual {v1}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 216
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "Resetting density"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 218
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method
