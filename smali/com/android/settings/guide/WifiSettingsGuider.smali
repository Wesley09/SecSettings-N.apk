.class public final Lcom/android/settings/guide/WifiSettingsGuider;
.super Lcom/android/settings/guide/GuiderBase;
.source "WifiSettingsGuider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Lcom/android/settings/guide/GuiderLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/guide/WifiSettingsGuider$8;,
        Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;,
        Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;
    }
.end annotation


# static fields
.field private static mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;


# instance fields
.field private builderstartDialog:Landroid/app/AlertDialog;

.field private mClosed:Z

.field private mConnectSuccess:Z

.field private mConnecting:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mEmptyScanResultAttempts:I

.field private mEnableScanMenuItem:Z

.field private mFirstStart:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private mScreenOnCheck:I

.field private mSecurityDialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mStateContainerRestored:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private mStateContainerShowed:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private final mWiFiIntentFilter:Landroid/content/IntentFilter;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sput-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0, p1}, Lcom/android/settings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 83
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 84
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 85
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mStateContainerRestored:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 87
    iput-boolean v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    .line 90
    iput-boolean v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 91
    iput-boolean v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectSuccess:Z

    .line 92
    iput-boolean v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    .line 93
    iput v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 95
    iput-object v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    .line 96
    iput-object v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 104
    iput-boolean v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    .line 109
    iput-object v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 112
    iput v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    .line 124
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$1;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/WifiSettingsGuider$1;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    .line 133
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 140
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/guide/WifiSettingsGuider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/guide/WifiSettingsGuider;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectSuccess:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/guide/WifiSettingsGuider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/guide/WifiSettingsGuider;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/guide/WifiSettingsGuider;)Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/guide/WifiSettingsGuider;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method public static checkSecurityPopup()Z
    .locals 2

    .prologue
    .line 1036
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 1037
    const/4 v0, 0x1

    .line 1039
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initHelpDialogContent(II)V
    .locals 9
    .param p1, "resID"    # I
    .param p2, "layout"    # I

    .prologue
    const/4 v8, 0x0

    .line 519
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 524
    .local v1, "bubbleView":Landroid/view/View;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.samsung.helphub"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 525
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 526
    const v5, 0x7f04009f

    if-eq p2, v5, :cond_0

    .line 527
    const v5, 0x7f0b01e1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 529
    .local v4, "summary":Landroid/widget/TextView;
    if-eqz v4, :cond_0

    .line 530
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "summary":Landroid/widget/TextView;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v5, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 551
    const v5, 0x7f0b0002

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 554
    .local v0, "btnClose":Landroid/widget/ImageButton;
    if-eqz v0, :cond_1

    .line 555
    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 556
    new-instance v5, Lcom/android/settings/guide/WifiSettingsGuider$6;

    invoke-direct {v5, p0}, Lcom/android/settings/guide/WifiSettingsGuider$6;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    :cond_1
    return-void

    .line 535
    .end local v0    # "btnClose":Landroid/widget/ImageButton;
    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    const v5, 0x7f0b0006

    :try_start_1
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 537
    .restart local v4    # "summary":Landroid/widget/TextView;
    if-nez v4, :cond_3

    .line 538
    const v5, 0x7f0b01e1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "summary":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 541
    .restart local v4    # "summary":Landroid/widget/TextView;
    :cond_3
    if-eqz v4, :cond_0

    .line 542
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 545
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "summary":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 546
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private invalidateHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 6
    .param p1, "type"    # Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .prologue
    .line 447
    const/4 v0, -0x1

    .line 448
    .local v0, "layout":I
    const/4 v1, -0x1

    .line 450
    .local v1, "resID":I
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v2, :cond_0

    .line 510
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/guide/WifiSettingsGuider;->setFocus(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 456
    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider$8;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 509
    :cond_1
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    goto :goto_0

    .line 458
    :pswitch_0
    const v1, 0x7f09106c

    .line 459
    const v0, 0x7f0400a0

    .line 460
    goto :goto_1

    .line 462
    :pswitch_1
    const v1, 0x7f09106f

    .line 463
    const v0, 0x7f0400a4

    .line 464
    goto :goto_1

    .line 466
    :pswitch_2
    const v1, 0x7f09106e

    .line 467
    const v0, 0x7f0400a4

    .line 468
    goto :goto_1

    .line 470
    :pswitch_3
    const v1, 0x7f09106d

    .line 471
    const v0, 0x7f0400a4

    .line 472
    goto :goto_1

    .line 474
    :pswitch_4
    const v1, 0x7f091071

    .line 475
    const v0, 0x7f0400a1

    .line 476
    goto :goto_1

    .line 478
    :pswitch_5
    const v1, 0x7f091070

    .line 479
    const v0, 0x7f0400a4

    .line 480
    goto :goto_1

    .line 482
    :pswitch_6
    const v1, 0x7f09106b

    .line 483
    const v0, 0x7f04009f

    .line 487
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 491
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings/guide/WifiSettingsGuider$5;

    invoke-direct {v3, p0}, Lcom/android/settings/guide/WifiSettingsGuider$5;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 456
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private restoreSecurityDialogFocus()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 847
    iget-object v8, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlertDialog;

    move-object v6, v8

    .line 849
    .local v6, "securityDialog":Landroid/app/AlertDialog;
    :goto_0
    if-eqz v6, :cond_4

    .line 850
    const v8, 0x7f0b04fb

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 851
    .local v0, "identity":Landroid/view/View;
    const v8, 0x7f0b0513

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 852
    .local v1, "identityContainer":Landroid/view/View;
    move-object v7, v0

    .line 853
    .local v7, "viewToFocus":Landroid/view/View;
    const/4 v4, 0x0

    .line 855
    .local v4, "isSingleEdit":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_1

    .line 858
    :cond_0
    const v8, 0x7f0b046f

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 859
    const/4 v4, 0x1

    .line 862
    :cond_1
    if-eqz v7, :cond_3

    .line 864
    if-eqz v4, :cond_2

    instance-of v8, v7, Landroid/widget/EditText;

    if-eqz v8, :cond_2

    move-object v8, v7

    .line 865
    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getImeOptions()I

    move-result v2

    .local v2, "imeOptions":I
    move-object v8, v7

    .line 867
    check-cast v8, Landroid/widget/EditText;

    or-int/lit8 v10, v2, 0x6

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 870
    .end local v2    # "imeOptions":I
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 872
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    .line 874
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v10, "input_method"

    invoke-virtual {v8, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 875
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 880
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    const/4 v8, -0x2

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    .line 882
    .local v5, "negativeButton":Landroid/widget/Button;
    if-eqz v5, :cond_4

    .line 883
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 887
    .end local v0    # "identity":Landroid/view/View;
    .end local v1    # "identityContainer":Landroid/view/View;
    .end local v4    # "isSingleEdit":Z
    .end local v5    # "negativeButton":Landroid/widget/Button;
    .end local v7    # "viewToFocus":Landroid/view/View;
    :cond_4
    iput-object v9, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 888
    return-void

    .end local v6    # "securityDialog":Landroid/app/AlertDialog;
    :cond_5
    move-object v6, v9

    .line 847
    goto :goto_0
.end method

.method private setFocus(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 5
    .param p1, "state"    # Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1009
    .local v1, "activity":Landroid/app/Activity;
    sget-object v3, Lcom/android/settings/guide/WifiSettingsGuider$8;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1033
    :cond_0
    :goto_0
    return-void

    .line 1011
    :pswitch_0
    if-eqz v1, :cond_0

    .line 1012
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1014
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 1015
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 1017
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1018
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1009
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private setGuidedActionBarClickable(Z)V
    .locals 4
    .param p1, "clickable"    # Z

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 706
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 708
    .local v0, "ab":Landroid/app/ActionBar;
    :goto_0
    if-eqz v0, :cond_1

    .line 709
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 711
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 712
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_0

    .line 713
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 714
    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 717
    :cond_0
    if-eqz p1, :cond_1

    .line 718
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 722
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void

    .line 706
    .end local v0    # "ab":Landroid/app/ActionBar;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScanOptionEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 732
    iput-boolean p1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    .line 734
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 736
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 739
    :cond_0
    return-void
.end method

.method private showHelpDialog(IILcom/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V
    .locals 2
    .param p1, "resID"    # I
    .param p2, "layout"    # I
    .param p3, "touchTransparency"    # Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;
    .param p4, "type"    # Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;
    .param p5, "needShowWrongToast"    # Z

    .prologue
    .line 435
    new-instance v0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 436
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, p3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 437
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, p5}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 438
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 440
    invoke-direct {p0, p1, p2}, Lcom/android/settings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    .line 442
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 443
    sput-object p4, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 444
    return-void
.end method


# virtual methods
.method protected dismissAndRestorePreviousHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 2
    .param p1, "type"    # Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .prologue
    .line 416
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_2

    .line 419
    :cond_0
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_1

    .line 420
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 428
    :cond_2
    return-void
.end method

.method public dismissCompleteDialog()V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 687
    :cond_0
    return-void
.end method

.method public dismissHelpDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 355
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 357
    iput-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 359
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$8;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 376
    :goto_0
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sput-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 377
    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    .line 379
    :cond_0
    return-void

    .line 362
    :sswitch_0
    invoke-direct {p0, v3}, Lcom/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_0

    .line 365
    :sswitch_1
    invoke-direct {p0, v3}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    goto :goto_0

    .line 368
    :sswitch_2
    invoke-direct {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->restoreSecurityDialogFocus()V

    .line 369
    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 359
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public dismissHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 3
    .param p1, "type"    # Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .prologue
    const/4 v2, 0x0

    .line 387
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_0

    .line 388
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$8;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 405
    :goto_0
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sput-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 408
    :cond_0
    return-void

    .line 391
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_0

    .line 394
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    goto :goto_0

    .line 388
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic finish()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/settings/guide/GuiderBase;->finish()V

    return-void
.end method

.method protected handleEvent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 570
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 576
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v4, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 581
    :cond_0
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 584
    .local v2, "network":Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_4

    .line 588
    iget v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    if-lt v4, v7, :cond_3

    .line 589
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NO_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 655
    .end local v2    # "network":Landroid/net/NetworkInfo;
    :cond_2
    :goto_0
    return-void

    .line 591
    .restart local v2    # "network":Landroid/net/NetworkInfo;
    :cond_3
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 594
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_5

    .line 595
    iput v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 596
    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    if-nez v4, :cond_2

    .line 597
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 600
    :cond_5
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    if-eqz v4, :cond_6

    .line 601
    iput v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 602
    iput-boolean v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 603
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 605
    :cond_6
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 606
    iput v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    goto :goto_0

    .line 610
    .end local v2    # "network":Landroid/net/NetworkInfo;
    :cond_7
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 611
    const-string v4, "networkInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 614
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    if-eqz v4, :cond_8

    .line 615
    iput-boolean v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 616
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 617
    :cond_8
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectSuccess:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    if-nez v4, :cond_9

    .line 618
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 619
    :cond_9
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 620
    iput-boolean v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 621
    iput-boolean v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    .line 624
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_2

    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v5, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v4, v5, :cond_a

    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v5, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v4, v5, :cond_2

    .line 628
    :cond_a
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 630
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0

    .line 632
    :cond_b
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0

    .line 637
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_c
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 641
    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 646
    .local v3, "state":I
    const/4 v4, 0x3

    if-eq v3, v4, :cond_d

    if-eq v3, v7, :cond_d

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_d

    .line 649
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissCompleteDialog()V

    .line 650
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0

    .line 652
    :cond_d
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0
.end method

.method public isWifiDialogSecured(Landroid/app/AlertDialog;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 748
    const/4 v0, 0x0

    .line 749
    .local v0, "result":Z
    const v2, 0x7f0b04f1

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 751
    .local v1, "view":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 752
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 755
    :cond_0
    :goto_0
    return v0

    .line 752
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 199
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 814
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 816
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 818
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 232
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_0

    .line 233
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->invalidateHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 235
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 145
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 150
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 151
    iput-boolean v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectSuccess:Z

    .line 152
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    .line 154
    iput v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 155
    iput-boolean v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    .line 156
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->finish()V

    .line 163
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 806
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p0, p1}, Lcom/android/settings/guide/WifiSettingsGuider;->isWifiDialogSecured(Landroid/app/AlertDialog;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 807
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissAndRestorePreviousHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 810
    :cond_0
    return-void
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x6f

    const/16 v5, 0x42

    .line 902
    const/4 v1, 0x0

    .line 903
    .local v1, "isHandled":Z
    const/4 v2, 0x1

    .line 907
    .local v2, "passToView":Z
    sget-object v3, Lcom/android/settings/guide/WifiSettingsGuider$8;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v4}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 984
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 985
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 987
    .local v0, "focus":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 988
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    .line 989
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 996
    .end local v0    # "focus":Landroid/view/View;
    :cond_1
    :goto_1
    return v1

    .line 910
    :pswitch_0
    if-eq p1, v6, :cond_2

    if-eq p1, v5, :cond_2

    const/16 v3, 0x17

    if-eq p1, v3, :cond_2

    const/16 v3, 0x14

    if-eq p1, v3, :cond_2

    const/16 v3, 0x15

    if-eq p1, v3, :cond_2

    const/16 v3, 0x16

    if-eq p1, v3, :cond_2

    const/16 v3, 0x13

    if-eq p1, v3, :cond_2

    const/16 v3, 0x75

    if-eq p1, v3, :cond_2

    const/16 v3, 0x76

    if-eq p1, v3, :cond_2

    const/16 v3, 0x3d

    if-eq p1, v3, :cond_2

    const/16 v3, 0x5c

    if-eq p1, v3, :cond_2

    const/16 v3, 0x5d

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7b

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7a

    if-eq p1, v3, :cond_2

    .line 925
    const/4 v1, 0x1

    goto :goto_0

    .line 926
    :cond_2
    if-ne p1, v5, :cond_0

    .line 927
    const/4 v2, 0x0

    .line 928
    const/4 v1, 0x1

    .line 930
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/android/settings/helpdialog/TwHelpDialog;)V

    goto :goto_0

    .line 936
    :pswitch_1
    if-ne p1, v6, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 938
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 939
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 941
    :cond_3
    const/4 v2, 0x0

    .line 942
    const/4 v1, 0x1

    .line 943
    goto :goto_0

    .line 946
    :pswitch_2
    const/4 v2, 0x0

    .line 947
    const/4 v1, 0x1

    .line 948
    goto :goto_0

    .line 953
    :pswitch_3
    if-ne p1, v6, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 955
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 956
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 957
    const/4 v2, 0x0

    .line 958
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 960
    :cond_4
    if-ne p1, v5, :cond_0

    .line 961
    const/4 v2, 0x0

    .line 962
    const/4 v1, 0x1

    .line 964
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/android/settings/helpdialog/TwHelpDialog;)V

    goto/16 :goto_0

    .line 971
    :pswitch_4
    if-ne p1, v5, :cond_0

    .line 972
    const/4 v2, 0x0

    .line 973
    const/4 v1, 0x1

    .line 975
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/android/settings/helpdialog/TwHelpDialog;)V

    goto/16 :goto_0

    .line 991
    .restart local v0    # "focus":Landroid/view/View;
    :cond_5
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_1

    .line 907
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 826
    const/4 v0, 0x0

    .line 828
    .local v0, "retval":Z
    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v1, v2, :cond_2

    .line 830
    const/16 v1, 0x6f

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 833
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 836
    :cond_1
    const/4 v0, 0x1

    .line 839
    :cond_2
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 893
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 895
    iget v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 896
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 898
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 213
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 217
    .local v0, "isScreenOn":Z
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 219
    iget-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mStateContainerRestored:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 224
    if-nez v0, :cond_1

    .line 225
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    .line 227
    :cond_1
    const-string v2, "WifiSettingsGuider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPause :: mScreenOnCheck"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 203
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 205
    .local v0, "scan":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 206
    iget-boolean v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 208
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 169
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 174
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 182
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-boolean v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    if-nez v0, :cond_1

    .line 187
    const-string v0, "WifiSettingsGuider"

    const-string v1, "onResume :: showHelpDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 189
    iput v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    .line 194
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 168
    goto :goto_0

    :cond_3
    move v0, v2

    .line 169
    goto :goto_1

    .line 176
    :cond_4
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, v3, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 178
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 179
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mStateContainerRestored:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    goto :goto_2
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v4, 0x1

    .line 779
    instance-of v2, p1, Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->isWifiDialogSecured(Landroid/app/AlertDialog;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 781
    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 783
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v2, p1

    check-cast v2, Landroid/app/AlertDialog;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 787
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const/4 v2, -0x2

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 789
    .local v1, "negativeButton":Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 790
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 791
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    .line 794
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 795
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/widget/Button;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 798
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "negativeButton":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public bridge synthetic onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 1
    .param p1, "x0"    # Landroid/widget/CompoundButton;
    .param p2, "x1"    # Z

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/settings/guide/GuiderBase;->onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z

    move-result v0

    return v0
.end method

.method public setEnabler(Lcom/android/settings/guide/GuideFragment$WrappedEnabler;)V
    .locals 1
    .param p1, "enabler"    # Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    .line 762
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v0, p0}, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->setOnEnablerSwitchListener(Lcom/android/settings/guide/OnInternalSwitcherListener;)V

    .line 765
    :cond_0
    return-void
.end method

.method public showCompleteDialog()V
    .locals 4

    .prologue
    .line 659
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 662
    .local v0, "builderstart":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f091073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f091072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09035d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/settings/guide/WifiSettingsGuider$7;

    invoke-direct {v3, p0}, Lcom/android/settings/guide/WifiSettingsGuider$7;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 679
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    .line 680
    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 681
    return-void
.end method

.method public showHelpDialog()V
    .locals 0

    .prologue
    .line 770
    return-void
.end method

.method public showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 8
    .param p1, "type"    # Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .prologue
    const v2, 0x7f0400a4

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 244
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_0

    move v0, v7

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_1

    .line 351
    :goto_1
    return-void

    :cond_0
    move v0, v5

    .line 244
    goto :goto_0

    .line 250
    :cond_1
    sget-object v6, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 252
    .local v6, "showedType":Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 253
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 255
    invoke-direct {p0, p1}, Lcom/android/settings/guide/WifiSettingsGuider;->setFocus(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 257
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$8;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 303
    :goto_2
    iput-boolean v5, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    .line 307
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_2

    move v0, v7

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 309
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$8;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 311
    :pswitch_0
    const v1, 0x7f09106c

    const v2, 0x7f0400a0

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_1

    .line 259
    :pswitch_1
    iput-object v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    goto :goto_2

    .line 264
    :pswitch_2
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$2;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/WifiSettingsGuider$2;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_2

    .line 274
    :pswitch_3
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$3;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/WifiSettingsGuider$3;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_2

    .line 285
    :pswitch_4
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$4;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/WifiSettingsGuider$4;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_2

    .line 295
    :pswitch_5
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    goto :goto_2

    :cond_2
    move v0, v5

    .line 307
    goto :goto_3

    .line 316
    :pswitch_6
    const v1, 0x7f09106f

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_1

    .line 320
    :pswitch_7
    const v1, 0x7f09106e

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_1

    .line 324
    :pswitch_8
    const v1, 0x7f09106d

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto/16 :goto_1

    .line 328
    :pswitch_9
    const v1, 0x7f091071

    const v2, 0x7f0400a1

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto/16 :goto_1

    .line 332
    :pswitch_a
    const v1, 0x7f091070

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto/16 :goto_1

    .line 336
    :pswitch_b
    const v1, 0x7f09106b

    const v2, 0x7f04009f

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto/16 :goto_1

    .line 257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 309
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_9
    .end packed-switch
.end method

.method public bridge synthetic showHelpDialog(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/guide/GuiderBase;->showHelpDialog(Z)V

    return-void
.end method
