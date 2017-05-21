.class Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;
.super Ljava/lang/Object;
.source "WifiHiddenApAddDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiHiddenApAddDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->access$100(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    # invokes: Lcom/android/settings/wifi/WifiHiddenApAddDialog;->validate()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->access$200(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)V

    .line 76
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mTempSsid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->access$002(Lcom/android/settings/wifi/WifiHiddenApAddDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 65
    return-void
.end method
