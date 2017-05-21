.class public Lcom/android/settings/helpdialog/TwHelpDialog;
.super Landroid/app/Dialog;
.source "TwHelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/helpdialog/TwHelpDialog$1;,
        Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;
    }
.end annotation


# instance fields
.field private fPunchEvent:Z

.field private mShowWrongInputToast:Z

.field private mTouchTransparencyMode:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

.field private mWrongInputToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    const v0, 0x7f10003b

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    sget-object v0, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    iput-object v0, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    .line 39
    iput-boolean v3, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    .line 40
    iput-boolean v2, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/helpdialog/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 59
    sget-object v0, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    iput-object v0, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 61
    const v0, 0x7f09107a

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    .line 64
    iput-boolean v3, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    .line 65
    iput-boolean v2, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setCancelable(Z)V

    .line 46
    invoke-virtual {p0, p3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 47
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const v6, 0x7f0b01e0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 155
    :goto_0
    return v2

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 91
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_1

    .line 92
    iput-boolean v2, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    .line 97
    :cond_1
    sget-object v4, Lcom/android/settings/helpdialog/TwHelpDialog$1;->$SwitchMap$com$android$settings$helpdialog$TwHelpDialog$TouchMode:[I

    iget-object v5, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v5}, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 147
    :cond_2
    :goto_1
    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    if-eqz v0, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    if-eq v0, v7, :cond_4

    .line 153
    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    :cond_4
    move v2, v3

    .line 155
    goto :goto_0

    .line 99
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    if-eqz v4, :cond_6

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 101
    if-nez v0, :cond_5

    .line 103
    invoke-virtual {p0, v6}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 104
    .local v1, "containerView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 105
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 107
    .end local v1    # "containerView":Landroid/view/View;
    :cond_5
    if-ne v0, v2, :cond_2

    .line 108
    invoke-virtual {p0, v6}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 109
    .restart local v1    # "containerView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 114
    .end local v1    # "containerView":Landroid/view/View;
    :cond_6
    iget-boolean v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v4, :cond_2

    .line 115
    iget-object v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 121
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    if-eqz v4, :cond_8

    if-eq v0, v7, :cond_8

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 123
    if-nez v0, :cond_7

    .line 125
    invoke-virtual {p0, v6}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 126
    .restart local v1    # "containerView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 127
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 129
    .end local v1    # "containerView":Landroid/view/View;
    :cond_7
    if-ne v0, v2, :cond_2

    .line 130
    invoke-virtual {p0, v6}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 131
    .restart local v1    # "containerView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 132
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 136
    .end local v1    # "containerView":Landroid/view/View;
    :cond_8
    iget-boolean v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v4, :cond_2

    if-eq v0, v7, :cond_2

    .line 137
    iget-object v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setShowWrongInputToast(Z)V
    .locals 0
    .param p1, "pShowWrongInputToast"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    .line 78
    return-void
.end method

.method public setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V
    .locals 0
    .param p1, "touchTransparencyMode"    # Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 70
    return-void
.end method
