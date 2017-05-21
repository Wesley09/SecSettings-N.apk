.class Lcom/android/settings/fingerprint/SelectFingerDialog$2;
.super Ljava/lang/Object;
.source "SelectFingerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/SelectFingerDialog;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/SelectFingerDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/SelectFingerDialog;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/settings/fingerprint/SelectFingerDialog$2;->this$0:Lcom/android/settings/fingerprint/SelectFingerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFingerDialog$2;->this$0:Lcom/android/settings/fingerprint/SelectFingerDialog;

    # getter for: Lcom/android/settings/fingerprint/SelectFingerDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings/fingerprint/SelectFingerDialog;->access$100(Lcom/android/settings/fingerprint/SelectFingerDialog;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/SelectFingerDialog$2;->this$0:Lcom/android/settings/fingerprint/SelectFingerDialog;

    # getter for: Lcom/android/settings/fingerprint/SelectFingerDialog;->selectedFingerIndex:I
    invoke-static {v2}, Lcom/android/settings/fingerprint/SelectFingerDialog;->access$000(Lcom/android/settings/fingerprint/SelectFingerDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->removeEnrolledFinger(I)Z

    move-result v0

    .line 143
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFingerDialog$2;->this$0:Lcom/android/settings/fingerprint/SelectFingerDialog;

    iget-object v2, p0, Lcom/android/settings/fingerprint/SelectFingerDialog$2;->this$0:Lcom/android/settings/fingerprint/SelectFingerDialog;

    # getter for: Lcom/android/settings/fingerprint/SelectFingerDialog;->selectedFingerIndex:I
    invoke-static {v2}, Lcom/android/settings/fingerprint/SelectFingerDialog;->access$000(Lcom/android/settings/fingerprint/SelectFingerDialog;)I

    move-result v2

    # invokes: Lcom/android/settings/fingerprint/SelectFingerDialog;->removeFingerprintShortcut(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/SelectFingerDialog;->access$300(Lcom/android/settings/fingerprint/SelectFingerDialog;I)V

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFingerDialog$2;->this$0:Lcom/android/settings/fingerprint/SelectFingerDialog;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/SelectFingerDialog;->finish()V

    .line 148
    return-void
.end method
