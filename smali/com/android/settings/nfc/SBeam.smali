.class public Lcom/android/settings/nfc/SBeam;
.super Landroid/app/Fragment;
.source "SBeam.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

.field private mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

.field private mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mbShowingHelp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 70
    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    .line 72
    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 74
    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nfc/SBeam;->mbShowingHelp:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/SBeam;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/SBeam;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeam;->mbShowingHelp:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/nfc/SBeam;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/SBeam;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/settings/nfc/SBeam;->mbShowingHelp:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/SBeam;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/SBeam;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeam;->createHelpDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/SBeam;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/SBeam;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/nfc/SBeam;Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/SBeam;
    .param p1, "x1"    # Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object p1
.end method

.method private createHelpDialog()V
    .locals 4

    .prologue
    .line 226
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040098

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 231
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 232
    iget-object v1, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 233
    iget-object v1, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 234
    iget-object v1, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 235
    return-void
.end method


# virtual methods
.method public isHelp()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 240
    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 241
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_switch"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    move v3, v5

    .line 243
    .local v3, "mState":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 257
    :cond_0
    :goto_1
    return v4

    .end local v3    # "mState":Z
    :cond_1
    move v3, v4

    .line 241
    goto :goto_0

    .line 249
    .restart local v3    # "mState":Z
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.samsung.helphub"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 250
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    move v4, v5

    .line 251
    goto :goto_1

    .line 253
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 177
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x10

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    .line 85
    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 87
    .local v2, "context":Landroid/content/Context;
    new-instance v0, Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v6}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, "actionSwitch":Landroid/widget/Switch;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->isHelp()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 92
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/nfc/SBeam;->setHasOptionsMenu(Z)V

    .line 96
    :cond_0
    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    instance-of v6, v6, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_2

    .line 97
    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    check-cast v5, Landroid/preference/PreferenceActivity;

    .line 99
    .local v5, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_2

    .line 101
    :cond_1
    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 103
    .local v4, "padding":I
    invoke-virtual {v0, v9, v9, v4, v9}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 104
    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 106
    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v10, v10, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v0, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 111
    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    const v7, 0x7f09026f

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setTitle(I)V

    .line 115
    .end local v4    # "padding":I
    .end local v5    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 116
    .local v3, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 118
    .local v1, "bHelpMode":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 120
    if-eqz v3, :cond_3

    .line 121
    const-string v6, "fromHelp"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 122
    if-eqz v1, :cond_3

    .line 123
    new-instance v6, Lcom/android/settings/nfc/SBeam$1;

    invoke-direct {v6, p0}, Lcom/android/settings/nfc/SBeam$1;-><init>(Lcom/android/settings/nfc/SBeam;)V

    iput-object v6, p0, Lcom/android/settings/nfc/SBeam;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    .line 140
    invoke-virtual {p0, v9}, Lcom/android/settings/nfc/SBeam;->setHasOptionsMenu(Z)V

    .line 145
    :cond_3
    new-instance v6, Lcom/android/settings/nfc/SBeamEnabler;

    iget-object v7, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/android/settings/nfc/SBeam;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    invoke-direct {v6, v7, v0, v8}, Lcom/android/settings/nfc/SBeamEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;)V

    iput-object v6, p0, Lcom/android/settings/nfc/SBeam;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 146
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->isHelp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x1

    const v1, 0x7f090a3a

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200f8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 210
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 150
    const v4, 0x7f040139

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 152
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.snotebook"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 154
    .local v1, "i":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 155
    const v4, 0x7f0b03cc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090275

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 159
    :cond_0
    const v4, 0x7f0b03cd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 160
    .local v2, "imgView":Landroid/widget/ImageView;
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    const v4, 0x7f050009

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 163
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 164
    .local v0, "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 166
    return-object v3
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 199
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 214
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 221
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 216
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "nfc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/SBeam;->startActivity(Landroid/content/Intent;)V

    .line 219
    const/4 v1, 0x1

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 188
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnPause()V

    .line 189
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 182
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnResume()V

    .line 183
    return-void
.end method
