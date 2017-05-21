.class Lcom/android/settings/smartscreen/SmartScreenSettings$1;
.super Landroid/os/Handler;
.source "SmartScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/smartscreen/SmartScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$1;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 247
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 252
    :goto_0
    return-void

    .line 249
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$1;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    # invokes: Lcom/android/settings/smartscreen/SmartScreenSettings;->updateAnimation()V
    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$000(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
