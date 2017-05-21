.class Lcom/android/settings/nfc/NfcSettings$1;
.super Ljava/lang/Object;
.source "NfcSettings.java"

# interfaces
.implements Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcSettings;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public show(Z)V
    .locals 2
    .param p1, "bOn"    # Z

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 124
    const-string v0, "NfcSettings"

    const-string v1, "NfcAdapter.STATE_ON, createHelpStep2Dialog() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # invokes: Lcom/android/settings/nfc/NfcSettings;->createHelpStep2Dialog()V
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$000(Lcom/android/settings/nfc/NfcSettings;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # invokes: Lcom/android/settings/nfc/NfcSettings;->createHelpStep1Dialog()V
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$100(Lcom/android/settings/nfc/NfcSettings;)V

    goto :goto_0
.end method
