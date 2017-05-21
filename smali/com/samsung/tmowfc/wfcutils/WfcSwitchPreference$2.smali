.class Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$2;
.super Landroid/database/ContentObserver;
.source "WfcSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;


# direct methods
.method constructor <init>(Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$2;->this$0:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 129
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 130
    # getter for: Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;->CONTENT_STATE_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 134
    .local v0, "updateStatus":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$2;->this$0:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    # getter for: Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->access$300(Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 135
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 136
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 138
    .end local v0    # "updateStatus":Landroid/os/Message;
    :cond_0
    return-void
.end method
