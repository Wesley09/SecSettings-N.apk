.class final Lcom/android/settings/guide/BtSettingsGuider;
.super Lcom/android/settings/guide/GuiderBase;
.source "BtSettingsGuider.java"

# interfaces
.implements Lcom/android/settings/guide/GuiderLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/guide/BtSettingsGuider$7;,
        Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;,
        Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;,
        Lcom/android/settings/guide/BtSettingsGuider$GuideStates;
    }
.end annotation


# static fields
.field private static isFinished:Z


# instance fields
.field private mBTEnabled:Z

.field private mBTReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mInitialBondedCount:I

.field private mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

.field private mShowedLayout:I

.field private mStateContainerShowed:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

.field private onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0, p1}, Lcom/android/settings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 117
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 118
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 122
    iput-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 124
    iput-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 125
    iput-boolean v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 127
    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 606
    new-instance v0, Lcom/android/settings/guide/BtSettingsGuider$6;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/BtSettingsGuider$6;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    invoke-static {v1, p1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 139
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 141
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->sFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/guide/BtSettingsGuider;)Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/guide/BtSettingsGuider;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 45
    sput-boolean p0, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/guide/BtSettingsGuider;Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/guide/BtSettingsGuider;
    .param p1, "x1"    # Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/guide/BtSettingsGuider;->onReceive(Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V

    return-void
.end method

.method private handleDialogChange()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 362
    :cond_0
    return-void
.end method

.method private initHelpDialogContent(I)V
    .locals 3
    .param p1, "resID"    # I

    .prologue
    .line 489
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 491
    .local v0, "bubbleView":Landroid/view/View;
    const v2, 0x7f09106b

    if-eq p1, v2, :cond_0

    .line 492
    const v2, 0x7f0b01e1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 494
    .local v1, "summary":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 508
    .end local v1    # "summary":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private initHelpDialogContent(II)V
    .locals 5
    .param p1, "resID"    # I
    .param p2, "layout"    # I

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 451
    .local v1, "bubbleView":Landroid/view/View;
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f04008e

    if-ne p2, v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f040090

    if-eq p2, v3, :cond_2

    .line 453
    :cond_1
    const v3, 0x7f0b01e1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 455
    .local v2, "summary":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 469
    .end local v2    # "summary":Landroid/widget/TextView;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 471
    const v3, 0x7f0b0002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 474
    .local v0, "btnClose":Landroid/widget/ImageButton;
    if-eqz v0, :cond_3

    .line 475
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 476
    new-instance v3, Lcom/android/settings/guide/BtSettingsGuider$3;

    invoke-direct {v3, p0}, Lcom/android/settings/guide/BtSettingsGuider$3;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    :cond_3
    return-void
.end method

.method private invalidateHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 6
    .param p1, "type"    # Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .prologue
    .line 391
    const/4 v1, -0x1

    .line 393
    .local v1, "resID":I
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v2, :cond_0

    .line 445
    :goto_0
    return-void

    .line 397
    :cond_0
    const v0, 0x7f040096

    .line 399
    .local v0, "layout":I
    invoke-direct {p0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->setFocus(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 401
    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 444
    :cond_1
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    goto :goto_0

    .line 403
    :pswitch_0
    const v1, 0x7f091079

    .line 404
    goto :goto_1

    .line 407
    :pswitch_1
    const v1, 0x7f091077

    .line 408
    goto :goto_1

    .line 410
    :pswitch_2
    const v1, 0x7f091076

    .line 411
    goto :goto_1

    .line 413
    :pswitch_3
    const v1, 0x7f09106b

    .line 414
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 415
    const v0, 0x7f040090

    .line 422
    :goto_2
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 426
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings/guide/BtSettingsGuider$2;

    invoke-direct {v3, p0}, Lcom/android/settings/guide/BtSettingsGuider$2;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 417
    :cond_2
    const v0, 0x7f04008e

    goto :goto_2

    .line 401
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private onBluetoothStateChanged()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 676
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 682
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 683
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    .line 684
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->onDestroy()V

    .line 692
    :cond_1
    :goto_0
    return-void

    .line 686
    :cond_2
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 687
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_0
.end method

.method private onDeviceBondStateChanged(II)V
    .locals 4
    .param p1, "bondState"    # I
    .param p2, "prevBondState"    # I

    .prologue
    const/16 v3, 0xc

    const/4 v1, 0x0

    .line 701
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->isResumed()Z

    move-result v2

    if-nez v2, :cond_0

    if-ne p1, v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 703
    .local v0, "bShowDialog":Z
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 734
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .end local v0    # "bShowDialog":Z
    :cond_2
    move v0, v1

    .line 701
    goto :goto_0

    .line 705
    .restart local v0    # "bShowDialog":Z
    :pswitch_1
    if-eqz v0, :cond_3

    .line 706
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 708
    :cond_3
    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    goto :goto_1

    .line 712
    :pswitch_2
    if-ne p2, v3, :cond_1

    .line 714
    iget v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-lez v2, :cond_5

    .line 715
    iget v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 717
    if-nez v0, :cond_4

    .line 719
    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 724
    :cond_4
    :goto_2
    if-eqz v0, :cond_1

    .line 725
    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_1

    .line 722
    :cond_5
    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    goto :goto_2

    .line 703
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onReceive(Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .locals 3
    .param p1, "action"    # Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v2, -0x80000000

    .line 626
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$BluetoothBroadcastActions:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 646
    :goto_0
    return-void

    .line 628
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/guide/BtSettingsGuider;->onBluetoothStateChanged()V

    goto :goto_0

    .line 632
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 636
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 640
    :pswitch_3
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->onDeviceBondStateChanged(II)V

    goto :goto_0

    .line 626
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onScanningStateChanged(Z)V
    .locals 1
    .param p1, "started"    # Z

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 662
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    .line 664
    :cond_1
    return-void
.end method

.method private setFocus(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 5
    .param p1, "state"    # Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 837
    .local v1, "activity":Landroid/app/Activity;
    sget-object v3, Lcom/android/settings/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 842
    :pswitch_0
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/app/ListActivity;

    if-eqz v3, :cond_0

    .line 843
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/app/ListActivity;

    invoke-virtual {v3}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_0

    .line 848
    :pswitch_1
    if-eqz v1, :cond_0

    .line 849
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 851
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 852
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 854
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 855
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 837
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 3
    .param p1, "resID"    # I
    .param p2, "layout"    # I
    .param p3, "type"    # Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 326
    .local v0, "created":Z
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_0

    .line 327
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 328
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 329
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 330
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 331
    const/4 v0, 0x1

    .line 334
    :cond_0
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne p3, v1, :cond_2

    sget-object v1, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 338
    invoke-direct {p0}, Lcom/android/settings/guide/BtSettingsGuider;->handleDialogChange()V

    .line 340
    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    if-eq v1, p2, :cond_3

    .line 341
    invoke-direct {p0, p1, p2}, Lcom/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    .line 346
    :goto_1
    if-eqz v0, :cond_1

    .line 347
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 350
    :cond_1
    iput-object p3, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 351
    iput p2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 352
    return-void

    .line 334
    :cond_2
    sget-object v1, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    goto :goto_0

    .line 343
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(I)V

    goto :goto_1
.end method


# virtual methods
.method protected changeHelpDialogState(Z)V
    .locals 3
    .param p1, "isScanning"    # Z

    .prologue
    .line 237
    iget-boolean v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    if-eqz v1, :cond_1

    .line 238
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    :cond_0
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->SCANNING:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 256
    :cond_1
    :goto_0
    return-void

    .line 241
    :cond_2
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 242
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 244
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getCachedDevicesNumber(Landroid/content/Context;)I

    move-result v0

    .line 248
    .local v0, "cachedDevices":I
    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-le v0, v1, :cond_4

    .line 249
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->FOUND:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 251
    :cond_4
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0
.end method

.method public dismissHelpDialog()V
    .locals 4

    .prologue
    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 376
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 378
    invoke-direct {p0}, Lcom/android/settings/guide/BtSettingsGuider;->handleDialogChange()V

    .line 380
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 381
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 382
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "BtSettingsGuider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->invalidateHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 369
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 150
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    .line 151
    const-string v0, "BtSettingsGuider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate is called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->finish()V

    .line 227
    return-void
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v7, 0x6f

    const/16 v6, 0x42

    const/4 v5, 0x1

    .line 743
    const/4 v1, 0x0

    .line 744
    .local v1, "isHandled":Z
    const/4 v2, 0x1

    .line 748
    .local v2, "passToView":Z
    sget-object v3, Lcom/android/settings/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    iget-object v4, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v4}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 812
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 813
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 815
    .local v0, "focus":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 816
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 817
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 824
    .end local v0    # "focus":Landroid/view/View;
    :cond_1
    :goto_1
    return v1

    .line 751
    :pswitch_0
    if-eq p1, v7, :cond_2

    if-eq p1, v6, :cond_2

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

    .line 766
    const/4 v1, 0x1

    goto :goto_0

    .line 767
    :cond_2
    if-ne p1, v6, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 769
    const/4 v2, 0x0

    .line 770
    const/4 v1, 0x1

    .line 772
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/android/settings/helpdialog/TwHelpDialog;)V

    goto :goto_0

    .line 778
    :pswitch_1
    if-ne p1, v7, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 780
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 781
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->showCompleteDialog()V

    .line 782
    const/4 v2, 0x0

    .line 783
    const/4 v1, 0x1

    goto :goto_0

    .line 785
    :cond_3
    if-ne p1, v6, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 787
    const/4 v2, 0x0

    .line 788
    const/4 v1, 0x1

    .line 790
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/android/settings/helpdialog/TwHelpDialog;)V

    goto/16 :goto_0

    .line 797
    :pswitch_2
    if-ne p1, v6, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 799
    const/4 v2, 0x0

    .line 800
    const/4 v1, 0x1

    .line 802
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/android/settings/helpdialog/TwHelpDialog;)V

    goto/16 :goto_0

    .line 819
    .restart local v0    # "focus":Landroid/view/View;
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_1

    .line 748
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 739
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 211
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 577
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 582
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/guide/BtSettingsGuider$5;

    invoke-direct {v1, p0}, Lcom/android/settings/guide/BtSettingsGuider$5;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 593
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 162
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 171
    sput-boolean v3, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->onDestroy()V

    .line 175
    :cond_1
    const-string v0, "BtSettingsGuider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume is called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-boolean v0, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    if-eqz v0, :cond_2

    .line 196
    :goto_0
    return-void

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 182
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 194
    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/settings/guide/BtSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_0

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_5

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_1

    .line 185
    :cond_5
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_3

    .line 186
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v0, v1}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_6

    .line 187
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 191
    :goto_2
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    goto :goto_1

    .line 189
    :cond_6
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_2
.end method

.method public setEnabler(Lcom/android/settings/guide/GuideFragment$WrappedEnabler;)V
    .locals 0
    .param p1, "enabler"    # Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    .prologue
    .line 598
    return-void
.end method

.method protected setGuidedActionBarClickable(Z)V
    .locals 4
    .param p1, "clickable"    # Z

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 519
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 521
    .local v0, "ab":Landroid/app/ActionBar;
    :goto_0
    if-eqz v0, :cond_1

    .line 523
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 525
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 526
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_0

    .line 527
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 528
    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 532
    :cond_0
    if-eqz p1, :cond_1

    .line 533
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 537
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void

    .line 519
    .end local v0    # "ab":Landroid/app/ActionBar;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showCompleteDialog()V
    .locals 5

    .prologue
    .line 541
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 542
    .local v0, "builderstart":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 544
    .local v1, "res":Landroid/content/res/Resources;
    :goto_0
    if-eqz v1, :cond_0

    .line 545
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    .line 546
    const-string v2, "BtSettingsGuider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showCompleteDialog is called "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const v2, 0x7f091073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f091072

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09035d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/android/settings/guide/BtSettingsGuider$4;

    invoke-direct {v4, p0}, Lcom/android/settings/guide/BtSettingsGuider$4;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 568
    :cond_0
    return-void

    .line 542
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showHelpDialog()V
    .locals 0

    .prologue
    .line 603
    return-void
.end method

.method public showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 5
    .param p1, "type"    # Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .prologue
    const v4, 0x7f091077

    const v3, 0x7f09106b

    const v2, 0x7f040096

    .line 259
    invoke-direct {p0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->setFocus(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 261
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_0

    .line 317
    :goto_0
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 267
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 269
    :pswitch_0
    const v0, 0x7f091079

    invoke-direct {p0, v0, v2, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 272
    :pswitch_1
    invoke-direct {p0, v4, v2, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 276
    :pswitch_2
    new-instance v0, Lcom/android/settings/guide/BtSettingsGuider$1;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/BtSettingsGuider$1;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 281
    const v0, 0x7f091076

    invoke-direct {p0, v0, v2, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 285
    :pswitch_3
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 286
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    const v0, 0x7f040090

    invoke-direct {p0, v3, v0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 289
    :cond_1
    const v0, 0x7f04008e

    invoke-direct {p0, v3, v0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 304
    :pswitch_4
    invoke-direct {p0, v4, v2, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
