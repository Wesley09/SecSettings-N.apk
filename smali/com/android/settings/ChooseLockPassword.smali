.class public Lcom/android/settings/ChooseLockPassword;
.super Landroid/preference/PreferenceActivity;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
    }
.end annotation


# static fields
.field public static isChangePwdRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 155
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 119
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->recreate()V

    .line 142
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    .line 132
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const v1, 0x7f090641

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 134
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/ChooseLockPassword;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 147
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 148
    :cond_0
    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v0, :cond_1

    .line 149
    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
