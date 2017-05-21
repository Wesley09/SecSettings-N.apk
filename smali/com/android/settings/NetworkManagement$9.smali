.class Lcom/android/settings/NetworkManagement$9;
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


# direct methods
.method constructor <init>(Lcom/android/settings/NetworkManagement;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 673
    iget-object v1, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-virtual {v1}, Lcom/android/settings/NetworkManagement;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 674
    .local v0, "lv":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 675
    return-void
.end method
