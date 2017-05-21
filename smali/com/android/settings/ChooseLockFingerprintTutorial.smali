.class public Lcom/android/settings/ChooseLockFingerprintTutorial;
.super Landroid/app/Activity;
.source "ChooseLockFingerprintTutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 53
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/ChooseLockFingerprintTutorial;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v2

    if-nez v2, :cond_0

    .line 55
    const-string v1, "ChooseLockFingerprintTutorial"

    .line 56
    .local v1, "mPreviousStage":Ljava/lang/String;
    const-string v2, "previousStage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.FingerprintTutorial"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    .end local v1    # "mPreviousStage":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockFingerprintTutorial;->startActivity(Landroid/content/Intent;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFingerprintTutorial;->finish()V

    goto :goto_0

    .line 59
    :cond_0
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ChooseLockFingerprint"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 66
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockFingerprintTutorial;->setResult(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFingerprintTutorial;->finish()V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x7f0b01a4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ChooseLockFingerprintTutorial;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 28
    const v2, 0x7f040082

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockFingerprintTutorial;->setContentView(I)V

    .line 30
    const v2, 0x7f0b01a3

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockFingerprintTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/ChooseLockFingerprintTutorial;->mMessage:Landroid/widget/TextView;

    .line 32
    const v2, 0x7f0b01a4

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockFingerprintTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 33
    .local v0, "cancelBtn":Landroid/widget/Button;
    const v2, 0x7f0b01a5

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockFingerprintTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 35
    .local v1, "continueBtn":Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/settings/ChooseLockFingerprintTutorial;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ChooseLockFingerprintTutorial;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v2, :cond_0

    .line 36
    iget-object v2, p0, Lcom/android/settings/ChooseLockFingerprintTutorial;->mMessage:Landroid/widget/TextView;

    const v3, 0x7f09135a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 37
    const v2, 0x7f09133d

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 43
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/android/settings/ChooseLockFingerprintTutorial;->mMessage:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    const v2, 0x7f0901e2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
