.class Lcom/android/settings/rhud6661/fragments/DensityChanger$2;
.super Ljava/lang/Object;
.source "DensityChanger.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/rhud6661/fragments/DensityChanger;->onCreate(Landroid/os/Bundle;)V
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
    .line 93
    iput-object p1, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$2;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$2;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    invoke-virtual {v0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->finish()V

    .line 96
    return-void
.end method
