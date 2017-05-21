.class Lcom/android/settings/SimListPreference$2;
.super Ljava/lang/Object;
.source "SimListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SimListPreference;->showChangeToNetworkModeAlramPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SimListPreference;

.field final synthetic val$simSlot:I


# direct methods
.method constructor <init>(Lcom/android/settings/SimListPreference;I)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/settings/SimListPreference$2;->this$0:Lcom/android/settings/SimListPreference;

    iput p2, p0, Lcom/android/settings/SimListPreference$2;->val$simSlot:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 155
    iget v0, p0, Lcom/android/settings/SimListPreference$2;->val$simSlot:I

    invoke-static {v0}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/SimListPreference$2;->this$0:Lcom/android/settings/SimListPreference;

    # getter for: Lcom/android/settings/SimListPreference;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/SimListPreference;->access$200(Lcom/android/settings/SimListPreference;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/SimListPreference$2;->this$0:Lcom/android/settings/SimListPreference;

    iget-object v0, v0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "action.ButtonEnable"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    const-string v0, "ril.SetEnabledFlag"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/SimListPreference$2;->this$0:Lcom/android/settings/SimListPreference;

    iget v1, p0, Lcom/android/settings/SimListPreference$2;->val$simSlot:I

    # invokes: Lcom/android/settings/SimListPreference;->showSuccessToast(I)V
    invoke-static {v0, v1}, Lcom/android/settings/SimListPreference;->access$300(Lcom/android/settings/SimListPreference;I)V

    .line 160
    return-void
.end method
