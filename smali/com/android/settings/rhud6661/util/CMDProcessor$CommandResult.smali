.class public Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;
.super Ljava/lang/Object;
.source "CMDProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/rhud6661/util/CMDProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommandResult"
.end annotation


# instance fields
.field public final exit_value:Ljava/lang/Integer;

.field public final stderr:Ljava/lang/String;

.field public final stdout:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/rhud6661/util/CMDProcessor;


# direct methods
.method constructor <init>(Lcom/android/settings/rhud6661/util/CMDProcessor;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "exit_value_in"    # Ljava/lang/Integer;
    .param p3, "stdout_in"    # Ljava/lang/String;
    .param p4, "stderr_in"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;->this$0:Lcom/android/settings/rhud6661/util/CMDProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;->exit_value:Ljava/lang/Integer;

    .line 42
    iput-object p3, p0, Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;->stdout:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;->stderr:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public success()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;->exit_value:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;->exit_value:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
