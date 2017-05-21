.class Lcom/android/settings/SimListPreference$1;
.super Landroid/os/Handler;
.source "SimListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SimListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SimListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/SimListPreference;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/SimListPreference$1;->this$0:Lcom/android/settings/SimListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 97
    iget-object v0, p0, Lcom/android/settings/SimListPreference$1;->this$0:Lcom/android/settings/SimListPreference;

    # invokes: Lcom/android/settings/SimListPreference;->dismissDialog()V
    invoke-static {v0}, Lcom/android/settings/SimListPreference;->access$100(Lcom/android/settings/SimListPreference;)V

    .line 100
    :goto_0
    :pswitch_0
    return-void

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/SimListPreference$1;->this$0:Lcom/android/settings/SimListPreference;

    # invokes: Lcom/android/settings/SimListPreference;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/settings/SimListPreference;->access$000(Lcom/android/settings/SimListPreference;Landroid/os/Message;)V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
