.class Lcom/android/settings/DataUsageSummary$17;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 3100
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$17;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3103
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.settings.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3104
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$17;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v2, 0x0

    # invokes: Lcom/android/settings/DataUsageSummary;->setDataRoaming(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->access$3600(Lcom/android/settings/DataUsageSummary;Z)V

    .line 3106
    :cond_0
    return-void
.end method
