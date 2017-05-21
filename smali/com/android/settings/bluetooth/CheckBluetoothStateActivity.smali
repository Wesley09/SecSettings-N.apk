.class public final Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;
.super Landroid/app/Activity;
.source "CheckBluetoothStateActivity.java"


# instance fields
.field private isBtEnableDialog:Z

.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->isBtEnableDialog:Z

    .line 56
    new-instance v0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;-><init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->processEnableResult()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private launchDevicePicker()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 105
    const-string v7, "CheckBluetoothStateActivity"

    const-string v8, "launchDevicePicker"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 107
    .local v3, "in":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.android.settings.bluetooth.CheckBluetoothStateActivity"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "btIntent":Landroid/content/Intent;
    const-string v7, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 110
    .local v6, "needAuth":Z
    const-string v7, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    const-string v7, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 113
    .local v1, "filterType":I
    const-string v7, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    const-string v7, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 116
    .local v2, "fromHeadsetActivity":Z
    const-string v7, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    const-string v7, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "launchPackage":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 120
    const-string v7, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    :cond_0
    const-string v7, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "launchClass":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 125
    const-string v7, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    iget-object v7, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v7, :cond_2

    .line 130
    iget-object v7, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    .line 133
    return-void
.end method

.method private processEnableResult()V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->startActivity(Landroid/content/Intent;)V

    .line 102
    :cond_0
    return-void
.end method

.method private showEnableDialog()V
    .locals 7

    .prologue
    .line 136
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090d88

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 139
    const v5, 0x7f090d8c

    new-instance v6, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$2;

    invoke-direct {v6, p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$2;-><init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    const v5, 0x7f090d8b

    new-instance v6, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$3;

    invoke-direct {v6, p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$3;-><init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 157
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040033

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 158
    .local v3, "dialoglayout":Landroid/view/View;
    const v5, 0x7f0b0085

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 159
    .local v2, "contentView":Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f090d89

    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090d8a

    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 164
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 166
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$4;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$4;-><init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 176
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 177
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 178
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 75
    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_1

    .line 76
    const-string v1, "CheckBluetoothStateActivity"

    const-string v2, "Bluetooth is not supported on this device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    if-eqz p1, :cond_2

    .line 81
    const-string v1, "isBtEnableDialog"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->isBtEnableDialog:Z

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 85
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->isBtEnableDialog:Z

    if-nez v1, :cond_0

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 89
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->showEnableDialog()V

    goto :goto_0

    .line 91
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 183
    const-string v0, "isBtEnableDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    return-void
.end method
