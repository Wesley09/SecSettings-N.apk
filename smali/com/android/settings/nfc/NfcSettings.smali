.class public Lcom/android/settings/nfc/NfcSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NfcSettings.java"


# instance fields
.field private bTabStyle:Z

.field private mActivity:Landroid/app/Activity;

.field private mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

.field private mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mLastNFCpaymentObserver:Landroid/database/ContentObserver;

.field private mNFCpaymentObserver:Landroid/database/ContentObserver;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mNfcWallet:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 70
    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 72
    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcSettings;->bTabStyle:Z

    .line 83
    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    .line 238
    new-instance v0, Lcom/android/settings/nfc/NfcSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/nfc/NfcSettings$2;-><init>(Lcom/android/settings/nfc/NfcSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mNFCpaymentObserver:Landroid/database/ContentObserver;

    .line 245
    new-instance v0, Lcom/android/settings/nfc/NfcSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/nfc/NfcSettings$3;-><init>(Lcom/android/settings/nfc/NfcSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mLastNFCpaymentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcSettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSettings;->createHelpStep2Dialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcSettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSettings;->createHelpStep1Dialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/NfcSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/nfc/NfcSettings;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcSettings;
    .param p1, "x1"    # Lcom/android/settings/helpdialog/TwHelpDialog;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/nfc/NfcSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcWallet:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method private createHelpStep1Dialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 362
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 364
    iput-object v3, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_1

    .line 369
    const-string v1, "NfcSettings"

    const-string v2, "createHelpStep1Dialog() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 373
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040098

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 375
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 376
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 377
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 378
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 379
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 381
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private createHelpStep2Dialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 386
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 388
    iput-object v4, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 391
    :cond_0
    const-string v2, "NfcSettings"

    const-string v3, "createHelpStep2Dialog() "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v2, :cond_1

    .line 394
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040099

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 395
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0b00d9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 396
    .local v0, "closeBtn":Landroid/widget/ImageView;
    new-instance v2, Lcom/android/settings/nfc/NfcSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/NfcSettings$4;-><init>(Lcom/android/settings/nfc/NfcSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    new-instance v2, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 406
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 407
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 408
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 409
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 410
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 412
    .end local v0    # "closeBtn":Landroid/widget/ImageView;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public static getPackageLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 297
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "none"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 298
    :cond_0
    const-string v4, ""

    .line 314
    :goto_0
    return-object v4

    .line 301
    :cond_1
    const/4 v4, 0x0

    .line 303
    .local v4, "retVal":Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 304
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 305
    .local v2, "pI":Landroid/content/pm/PackageInfo;
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 306
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 311
    const-string v5, "NfcSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPackageLabel returning - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pI":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 308
    .local v0, "NNE":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 309
    const-string v4, "PackageNameNotFound"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    const-string v5, "NfcSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPackageLabel returning - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "NNE":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v5

    const-string v6, "NfcSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPackageLabel returning - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v5
.end method


# virtual methods
.method public isPackageExists(Ljava/lang/String;)Z
    .locals 5
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 422
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 423
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 424
    const/4 v2, 0x1

    .line 430
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 425
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public makeLastWalletSummary()Ljava/lang/String;
    .locals 5

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nfc_last_wallet_default"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "lastWalletPkg":Ljava/lang/String;
    const-string v0, ""

    .line 321
    .local v0, "lastWallet":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "none"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09027a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09027d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 325
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/settings/nfc/NfcSettings;->getPackageLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v1, 0x7f070060

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->addPreferencesFromResource(I)V

    .line 93
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->setHasOptionsMenu(Z)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    .line 96
    new-instance v3, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 98
    .local v3, "actionBarSwitch":Landroid/widget/Switch;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    check-cast v17, Landroid/preference/PreferenceActivity;

    .line 100
    .local v17, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 103
    .local v16, "padding":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v1, v2, v0, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x10

    const/16 v6, 0x10

    invoke-virtual {v1, v2, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 106
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x15

    invoke-direct {v2, v6, v7, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 114
    .end local v16    # "padding":I
    .end local v17    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 115
    .local v14, "intent":Landroid/content/Intent;
    const/4 v13, 0x0

    .line 116
    .local v13, "bHelpMode":Z
    if-eqz v14, :cond_2

    .line 117
    const-string v1, "fromHelp"

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 118
    if-eqz v13, :cond_2

    .line 119
    new-instance v1, Lcom/android/settings/nfc/NfcSettings$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/settings/nfc/NfcSettings$1;-><init>(Lcom/android/settings/nfc/NfcSettings;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    .line 144
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->setHasOptionsMenu(Z)V

    .line 148
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nfc/NfcSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/settings/nfc/NfcSettings;->bTabStyle:Z

    .line 150
    const-string v1, "nfc_wallet_manager_sub"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcWallet:Landroid/preference/PreferenceScreen;

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcWallet:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3

    .line 156
    const-string v1, "nfc_wallet"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceCategory;

    .line 157
    .local v15, "nfcCategory":Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcWallet:Landroid/preference/PreferenceScreen;

    invoke-virtual {v15, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 162
    .end local v15    # "nfcCategory":Landroid/preference/PreferenceCategory;
    :cond_3
    const-string v1, "toggle_android_beam"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    .line 163
    .local v4, "androidBeam":Landroid/preference/SwitchPreferenceScreen;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "CMCC"

    const-string v2, "OPEN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 164
    :cond_4
    const-string v1, "toggle_rw_p2p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    .line 169
    .local v5, "rwP2pSwitch":Landroid/preference/SwitchPreferenceScreen;
    new-instance v1, Lcom/android/settings/nfc/NfcEnabler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/nfc/NfcSettings;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/PreferenceScreen;Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 191
    .end local v5    # "rwP2pSwitch":Landroid/preference/SwitchPreferenceScreen;
    :goto_0
    return-void

    .line 178
    :cond_5
    const-string v1, "cat_rw_p2p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceGroup;

    .line 179
    .local v18, "rwP2pCat":Landroid/preference/PreferenceGroup;
    if-eqz v18, :cond_6

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 185
    :cond_6
    new-instance v6, Lcom/android/settings/nfc/NfcEnabler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/nfc/NfcSettings;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    move-object v8, v3

    move-object v9, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/PreferenceScreen;Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 337
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 339
    const-string v0, "com.samsung.helphub"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    const/4 v0, 0x1

    const v1, 0x7f090a3a

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200f8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 345
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 227
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 229
    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 234
    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 236
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 349
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 356
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 351
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "nfc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcSettings;->startActivity(Landroid/content/Intent;)V

    .line 354
    const/4 v1, 0x1

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 198
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 206
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 211
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 221
    :cond_0
    return-void
.end method

.method public updatePreference(Landroid/preference/PreferenceScreen;)V
    .locals 8
    .param p1, "pref"    # Landroid/preference/PreferenceScreen;

    .prologue
    const v7, 0x7f09027a

    const/4 v6, 0x3

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 269
    .local v1, "nfcAdapter":Landroid/nfc/NfcAdapter;
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 270
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getCurrentSeRouteInfo()I

    move-result v2

    .line 271
    .local v2, "routeType":I
    const-string v3, "NfcSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePreference : Type is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 274
    :cond_0
    const v3, 0x7f09027c

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 294
    .end local v2    # "routeType":I
    :cond_1
    :goto_0
    return-void

    .line 276
    .restart local v2    # "routeType":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nfc_wallet_default"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "defaultWalletPkg":Ljava/lang/String;
    if-ne v2, v6, :cond_6

    .line 278
    if-eqz v0, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "none"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 279
    :cond_3
    invoke-virtual {p1, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 280
    :cond_4
    const-string v3, "LastWalletUsed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcSettings;->makeLastWalletSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 284
    :cond_5
    iget-object v3, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings/nfc/NfcSettings;->getPackageLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 287
    :cond_6
    if-eqz v0, :cond_7

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "none"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 288
    :cond_7
    invoke-virtual {p1, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 290
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcSettings;->makeLastWalletSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
