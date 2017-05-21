.class public Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;
.super Landroid/app/Fragment;
.source "FingerprintPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mFingerprintPreviousStage:Ljava/lang/String;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mRequestedQuality:I

.field private mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 89
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    .line 90
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    .line 91
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    .line 92
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    .line 93
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    .line 94
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    .line 95
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    .line 96
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    .line 98
    const/high16 v0, 0x40000

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    .line 100
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    .line 114
    const-string v0, "FingerprintSettings"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFingerprintPreviousStage:Ljava/lang/String;

    .line 116
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$1;-><init>(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private handleNext()V
    .locals 7

    .prologue
    .line 391
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "pin":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    const/4 v0, 0x0

    .line 396
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v5, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v4, v5, :cond_3

    .line 397
    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    if-nez v0, :cond_2

    .line 399
    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 400
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    sget-object v4, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    .line 424
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 425
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-direct {p0, v0, v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    goto :goto_0

    .line 403
    :cond_3
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v5, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v4, v5, :cond_2

    .line 404
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 405
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerpringPassword(Ljava/lang/String;)V

    .line 406
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.settings.fingerprint.ok"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "previousStage"

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFingerprintPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isenrolledFingerprint()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 409
    const-string v4, "isenrolled"

    const-string v5, "true"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 411
    :cond_4
    const-string v4, "isenrolled"

    const-string v5, "false"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 417
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    sget-object v4, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    .line 418
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 419
    .local v3, "tmp":Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    move-object v4, v3

    .line 420
    check-cast v4, Landroid/text/Spannable;

    const/4 v5, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1
.end method

.method private isenrolledFingerprint()Z
    .locals 4

    .prologue
    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, "enrolledFingerprint":Z
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    .line 509
    .local v1, "fingerstatus":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xa

    if-gt v2, v3, :cond_1

    .line 510
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    .line 511
    const/4 v0, 0x1

    .line 509
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 514
    :cond_1
    return v0
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "next"    # Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    .prologue
    const/4 v3, 0x1

    .line 442
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 445
    .local v0, "mesg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 446
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 447
    return-void
.end method

.method private updateUi()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 464
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 466
    .local v1, "length":I
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v6, v7, :cond_2

    if-lez v1, :cond_2

    .line 467
    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v6, :cond_0

    .line 468
    const v6, 0x7f0901df

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {p0, v6, v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 485
    .end local v2    # "msg":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iget v5, v5, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 486
    return-void

    .line 472
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 474
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 477
    :cond_1
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f0901e1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 478
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 482
    .end local v0    # "error":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iget v7, v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->alphaHint:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 483
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    if-lez v1, :cond_3

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 309
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    if-ge v10, v11, :cond_0

    .line 310
    const v10, 0x7f0901df

    invoke-virtual {p0, v10}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 387
    :goto_0
    return-object v10

    .line 312
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    if-le v10, v11, :cond_1

    .line 313
    const v10, 0x7f0901e3

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 315
    :cond_1
    const/4 v4, 0x0

    .line 316
    .local v4, "letters":I
    const/4 v7, 0x0

    .line 317
    .local v7, "numbers":I
    const/4 v5, 0x0

    .line 318
    .local v5, "lowercase":I
    const/4 v8, 0x0

    .line 319
    .local v8, "symbols":I
    const/4 v9, 0x0

    .line 320
    .local v9, "uppercase":I
    const/4 v6, 0x0

    .line 321
    .local v6, "nonletter":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v3, v10, :cond_7

    .line 322
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 324
    .local v2, "c":C
    const/16 v10, 0x20

    if-lt v2, v10, :cond_2

    const/16 v10, 0x7f

    if-le v2, v10, :cond_3

    .line 325
    :cond_2
    const v10, 0x7f0901e7

    invoke-virtual {p0, v10}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 327
    :cond_3
    const/16 v10, 0x30

    if-lt v2, v10, :cond_4

    const/16 v10, 0x39

    if-gt v2, v10, :cond_4

    .line 328
    add-int/lit8 v7, v7, 0x1

    .line 329
    add-int/lit8 v6, v6, 0x1

    .line 321
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 330
    :cond_4
    const/16 v10, 0x41

    if-lt v2, v10, :cond_5

    const/16 v10, 0x5a

    if-gt v2, v10, :cond_5

    .line 331
    add-int/lit8 v4, v4, 0x1

    .line 332
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 333
    :cond_5
    const/16 v10, 0x61

    if-lt v2, v10, :cond_6

    const/16 v10, 0x7a

    if-gt v2, v10, :cond_6

    .line 334
    add-int/lit8 v4, v4, 0x1

    .line 335
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 337
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 338
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 341
    .end local v2    # "c":C
    :cond_7
    const/high16 v10, 0x20000

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_9

    if-gtz v4, :cond_8

    if-lez v8, :cond_9

    .line 345
    :cond_8
    const v10, 0x7f0901e5

    invoke-virtual {p0, v10}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 346
    :cond_9
    const/high16 v10, 0x60000

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_f

    .line 347
    iget v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    if-ge v4, v10, :cond_a

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f110001

    iget v12, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 351
    :cond_a
    iget v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    if-ge v7, v10, :cond_b

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f110004

    iget v12, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 355
    :cond_b
    iget v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v5, v10, :cond_c

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f110002

    iget v12, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 359
    :cond_c
    iget v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v9, v10, :cond_d

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f110003

    iget v12, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 363
    :cond_d
    iget v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    if-ge v8, v10, :cond_e

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f110005

    iget v12, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 367
    :cond_e
    iget v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v6, v10, :cond_14

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f110006

    iget v12, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 373
    :cond_f
    const/high16 v10, 0x40000

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_11

    const/4 v0, 0x1

    .line 375
    .local v0, "alphabetic":Z
    :goto_3
    const/high16 v10, 0x50000

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_12

    const/4 v1, 0x1

    .line 377
    .local v1, "alphanumeric":Z
    :goto_4
    if-nez v0, :cond_10

    if-eqz v1, :cond_13

    :cond_10
    if-nez v4, :cond_13

    .line 378
    const v10, 0x7f0901e8

    invoke-virtual {p0, v10}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 373
    .end local v0    # "alphabetic":Z
    .end local v1    # "alphanumeric":Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_3

    .line 375
    .restart local v0    # "alphabetic":Z
    :cond_12
    const/4 v1, 0x0

    goto :goto_4

    .line 380
    .restart local v1    # "alphanumeric":Z
    :cond_13
    if-eqz v1, :cond_14

    if-nez v7, :cond_14

    .line 381
    const v10, 0x7f0901e9

    invoke-virtual {p0, v10}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 384
    .end local v0    # "alphabetic":Z
    .end local v1    # "alphanumeric":Z
    :cond_14
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 385
    const v10, 0x7f0901ec

    invoke-virtual {p0, v10}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 387
    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 491
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    .line 493
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateUi()V

    .line 494
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 498
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 279
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 280
    const-string v0, "ChooseLockAdditionalPin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    packed-switch p1, :pswitch_data_0

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 283
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 430
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 439
    :goto_0
    return-void

    .line 432
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->handleNext()V

    goto :goto_0

    .line 436
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x7f0b0056
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 159
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "previousStage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFingerprintPreviousStage:Ljava/lang/String;

    .line 164
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    .line 166
    const-string v1, "lockscreen.password_min"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    .line 169
    const-string v1, "lockscreen.password_max"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    .line 170
    const-string v1, "lockscreen.password_min_letters"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    .line 172
    const-string v1, "lockscreen.password_min_uppercase"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    .line 174
    const-string v1, "lockscreen.password_min_lowercase"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    .line 176
    const-string v1, "lockscreen.password_min_numeric"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    .line 178
    const-string v1, "lockscreen.password_min_symbols"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    .line 180
    const-string v1, "lockscreen.password_min_nonletter"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 186
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 192
    const v8, 0x7f04002d

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 194
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f0b0056

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 195
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const v8, 0x7f0b0057

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 197
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v8, 0x7f0b006f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 203
    const v8, 0x7f0b006d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 204
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 205
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 206
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v9, 0x2000000

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 209
    .local v0, "activity":Landroid/app/Activity;
    new-instance v8, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v8, v0, v9, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 211
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 213
    const v8, 0x7f0b0054

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 214
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v8}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 216
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    .line 217
    .local v1, "currentType":I
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 220
    .local v3, "intent":Landroid/content/Intent;
    if-nez p3, :cond_2

    .line 221
    sget-object v8, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    .line 232
    :cond_0
    :goto_0
    instance-of v8, v0, Landroid/preference/PreferenceActivity;

    if-eqz v8, :cond_1

    move-object v4, v0

    .line 233
    check-cast v4, Landroid/preference/PreferenceActivity;

    .line 234
    .local v4, "preferenceActivity":Landroid/preference/PreferenceActivity;
    const v2, 0x7f09134d

    .line 235
    .local v2, "id":I
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 236
    .local v6, "title":Ljava/lang/CharSequence;
    invoke-virtual {v4, v6, v6}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 239
    .end local v2    # "id":I
    .end local v4    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_1
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v9, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$2;

    invoke-direct {v9, p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$2;-><init>(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 252
    return-object v7

    .line 223
    :cond_2
    const-string v8, "first_pin"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 224
    const-string v8, "ui_stage"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 225
    .local v5, "state":Ljava/lang/String;
    const-string v8, "ChooseLockAdditionalPin"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreateView : [mFirstPin] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " [state] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    if-eqz v5, :cond_0

    .line 227
    invoke-static {v5}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    .line 228
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 451
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 454
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->handleNext()V

    .line 455
    const/4 v0, 0x1

    .line 457
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 266
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 267
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 258
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 260
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 271
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 272
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 502
    return-void
.end method

.method protected updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    .line 293
    .local v0, "previousStage":Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    .line 294
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateUi()V

    .line 298
    if-eq v0, p1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 301
    :cond_0
    return-void
.end method
