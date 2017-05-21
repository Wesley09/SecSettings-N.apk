.class Lcom/android/settings/rhud6661/fragments/DensityChanger$5;
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
    .line 221
    iput-object p1, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$5;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 224
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 225
    return-void
.end method
