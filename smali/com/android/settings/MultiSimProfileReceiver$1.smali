.class Lcom/android/settings/MultiSimProfileReceiver$1;
.super Landroid/os/Handler;
.source "MultiSimProfileReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MultiSimProfileReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MultiSimProfileReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiSimProfileReceiver;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings/MultiSimProfileReceiver$1;->this$0:Lcom/android/settings/MultiSimProfileReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/MultiSimProfileReceiver$1;->this$0:Lcom/android/settings/MultiSimProfileReceiver;

    invoke-virtual {v0}, Lcom/android/settings/MultiSimProfileReceiver;->startSimManagement()V

    .line 69
    return-void
.end method
