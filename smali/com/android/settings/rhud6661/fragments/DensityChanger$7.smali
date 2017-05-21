.class Lcom/android/settings/rhud6661/fragments/DensityChanger$7;
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
    .line 199
    iput-object p1, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$7;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 203
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 204
    iget-object v0, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$7;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    iget-object v1, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$7;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    iget v1, v1, Lcom/android/settings/rhud6661/fragments/DensityChanger;->newDensityValue:I

    # invokes: Lcom/android/settings/rhud6661/fragments/DensityChanger;->setLcdDensity(I)Z
    invoke-static {v0, v1}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->access$200(Lcom/android/settings/rhud6661/fragments/DensityChanger;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$7;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    iget-object v0, v0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mCustomDensity:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$7;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    iget v2, v2, Lcom/android/settings/rhud6661/fragments/DensityChanger;->newDensityValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 207
    :cond_0
    return-void
.end method
