.class Lcom/android/settings/TimDialog$1;
.super Ljava/lang/Object;
.source "TimDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TimDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TimDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/TimDialog;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/settings/TimDialog$1;->this$0:Lcom/android/settings/TimDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/TimDialog$1;->this$0:Lcom/android/settings/TimDialog;

    invoke-virtual {v0}, Lcom/android/settings/TimDialog;->finish()V

    .line 30
    return-void
.end method
