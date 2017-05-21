.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

.field final synthetic val$mOkButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->val$mOkButton:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 1210
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1212
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTempSsid:Ljava/lang/String;

    .line 1214
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/16 v3, 0x17

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1216
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1217
    .local v0, "temp":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1218
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->val$mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1219
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z
    invoke-static {v1, v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$4202(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 1243
    :goto_0
    return-void

    .line 1220
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v3, :cond_5

    .line 1221
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTempSsid:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTempSsid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-gt v1, v3, :cond_4

    .line 1222
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTempSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1227
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTempSsid:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTempSsid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1228
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->val$mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1229
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z
    invoke-static {v1, v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$4202(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 1231
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$4400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$4400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$4400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1232
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09041f

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$4402(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1233
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$4400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1235
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 1224
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1236
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 1237
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->val$mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1238
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z
    invoke-static {v1, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$4202(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    goto/16 :goto_0

    .line 1240
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->val$mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1241
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z
    invoke-static {v1, v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$4202(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    goto/16 :goto_0
.end method
