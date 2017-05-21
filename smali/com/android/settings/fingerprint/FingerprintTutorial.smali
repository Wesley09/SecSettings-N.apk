.class public Lcom/android/settings/fingerprint/FingerprintTutorial;
.super Landroid/app/Activity;
.source "FingerprintTutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field mPreviousStage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const-string v0, "FingerprintSettings"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintTutorial;->mPreviousStage:Ljava/lang/String;

    return-void
.end method

.method private isenrolledFingerprint()Z
    .locals 4

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "enrolledFingerprint":Z
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintTutorial;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    .line 95
    .local v1, "fingerstatus":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xa

    if-gt v2, v3, :cond_1

    .line 96
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    .line 97
    const/4 v0, 0x1

    .line 95
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_1
    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintTutorial;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 29
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3ea

    if-ne p1, v1, :cond_0

    .line 30
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintTutorial;->updatedHandTutorial()V

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintTutorial;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 75
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.fingerprint.SelectFinger"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "previousStage"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintTutorial;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintTutorial;->startActivity(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintTutorial;->finish()V

    goto :goto_0

    .line 83
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintTutorial;->setResult(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintTutorial;->finish()V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x7f0b01d5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintTutorial;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintTutorial;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 46
    const-string v0, "previousStage"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintTutorial;->mPreviousStage:Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintTutorial;->isenrolledFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-class v0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 52
    const/16 v0, 0x3ea

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/FingerprintTutorial;->startActivityForResult(Landroid/content/Intent;I)V

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintTutorial;->updatedHandTutorial()V

    goto :goto_0
.end method

.method updatedHandTutorial()V
    .locals 3

    .prologue
    .line 60
    const v2, 0x7f04008b

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintTutorial;->setContentView(I)V

    .line 62
    const v2, 0x7f0b01d5

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 63
    .local v0, "cancelBtn":Landroid/widget/Button;
    const v2, 0x7f0b01d6

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 65
    .local v1, "continueBtn":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method
