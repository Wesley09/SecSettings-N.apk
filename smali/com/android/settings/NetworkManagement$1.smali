.class Lcom/android/settings/NetworkManagement$1;
.super Landroid/database/ContentObserver;
.source "NetworkManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NetworkManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NetworkManagement;


# direct methods
.method constructor <init>(Lcom/android/settings/NetworkManagement;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings/NetworkManagement$1;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/NetworkManagement$1;->this$0:Lcom/android/settings/NetworkManagement;

    # invokes: Lcom/android/settings/NetworkManagement;->updateState()V
    invoke-static {v0}, Lcom/android/settings/NetworkManagement;->access$000(Lcom/android/settings/NetworkManagement;)V

    .line 149
    return-void
.end method
