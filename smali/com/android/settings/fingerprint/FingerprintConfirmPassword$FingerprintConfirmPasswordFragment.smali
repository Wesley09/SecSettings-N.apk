.class public Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;
.super Landroid/app/Fragment;
.source "FingerprintConfirmPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintConfirmPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintConfirmPasswordFragment"
.end annotation


# instance fields
.field private mContinueButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEntry:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleNext()V
    .locals 4

    .prologue
    .line 148
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "pin":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkFingerprintPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 160
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 158
    :cond_0
    const v2, 0x7f090652

    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->showError(I)V

    goto :goto_0
.end method

.method private showError(I)V
    .locals 4
    .param p1, "msg"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment$1;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 206
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 207
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 200
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 165
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->handleNext()V

    goto :goto_0

    .line 169
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x7f0b0056
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 95
    const v6, 0x7f040035

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 98
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f0b0056

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v6, 0x7f0b0057

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mContinueButton:Landroid/widget/Button;

    .line 100
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 103
    const v6, 0x7f0b006d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 104
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 105
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    const v6, 0x7f0b006f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 108
    const v6, 0x7f0b0054

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 112
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v7, 0x7f090644

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 115
    .local v0, "activity":Landroid/app/Activity;
    new-instance v6, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v6, v0, v7, v8}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 117
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    invoke-virtual {v6, v9}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 118
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v6}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 120
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    .line 121
    .local v1, "currentType":I
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 124
    instance-of v6, v0, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_0

    move-object v3, v0

    .line 125
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 126
    .local v3, "preferenceActivity":Landroid/preference/PreferenceActivity;
    const v2, 0x7f090644

    .line 127
    .local v2, "id":I
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 128
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-virtual {v3, v4, v4}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 131
    .end local v2    # "id":I
    .end local v3    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_0
    return-object v5
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 189
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->handleNext()V

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 138
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 144
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 145
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 203
    return-void
.end method
