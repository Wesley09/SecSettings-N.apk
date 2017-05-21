.class Lcom/android/settings/fingerprint/FingerprintSettings$1;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$000(Lcom/android/settings/fingerprint/FingerprintSettings;Z)V

    .line 126
    return-void
.end method
