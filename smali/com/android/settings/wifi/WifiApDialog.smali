.class public Lcom/android/settings/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final DBG:Z

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private hideSsidDoNotShowAgain:Z

.field private isShowPassword:Z

.field private isTimeoutValueChanged:Z

.field private mChannel:Landroid/widget/Spinner;

.field private mChannel5g:Landroid/widget/Spinner;

.field private mChannel5genabled:Z

.field private mContext:Landroid/content/Context;

.field public mDismissIfOpen:Z

.field private mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mLast2gChannel:I

.field private mLast5gChannel:I

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMacaddrAcl:I

.field private mNumBasedOnCharger:I

.field private mNumBasedOnCountry:I

.field private mPassword:Landroid/widget/EditText;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurity:Landroid/widget/Spinner;

.field private mSecurityMsg:Landroid/widget/TextView;

.field private mSecurityTypeIndex:I

.field private mSelectedChannel:I

.field private mSelectedMaxClient:I

.field private mSelectedTimeoutValue:I

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSsid:Landroid/widget/EditText;

.field private mTempPassworld:Ljava/lang/String;

.field private mTempSecurityTypeIndex:I

.field private mTempSsid:Ljava/lang/String;

.field private mUserSelectOpenSecurity:Z

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private maxClientSpinner:Landroid/widget/Spinner;

.field passwordWatcher:Landroid/text/TextWatcher;

.field ssidWatcher:Landroid/text/TextWatcher;

.field private timeoutSettingsSpinner:Landroid/widget/Spinner;

.field private wifiAp5gDoNotShowAgain:Z

.field private wifiAp5gItem:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCountry:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 82
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiApDialog;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    const v0, 0x7f100034

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 98
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 99
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    .line 103
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    .line 118
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    .line 124
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast2gChannel:I

    .line 125
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast5gChannel:I

    .line 126
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    .line 127
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    .line 133
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->hideSsidDoNotShowAgain:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gDoNotShowAgain:Z

    .line 135
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5genabled:Z

    .line 136
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "36"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    .line 137
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "149"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    .line 139
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    .line 140
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    .line 147
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    .line 148
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    .line 151
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 152
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mDismissIfOpen:Z

    .line 154
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->isShowPassword:Z

    .line 357
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$1;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 701
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$2;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 725
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$3;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 160
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 161
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 162
    if-eqz p3, :cond_0

    .line 163
    invoke-static {p3}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 165
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->channel:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    .line 166
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 167
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast2gChannel:I

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    .line 177
    :cond_0
    return-void

    .line 169
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast5gChannel:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->getChgType()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiApDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiApDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiApDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiApDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast2gChannel:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settings/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/WifiApDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/settings/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/WifiApDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->restartFocusedViewInput()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApDialog;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/WifiApDialog;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiApDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApDialog;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiApDialog;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiApDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiApDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast5gChannel:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiApDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/wifi/WifiApDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    return p1
.end method

.method private getChgType()Z
    .locals 8

    .prologue
    .line 1082
    const-string v0, "/sys/class/sec/switch/chg_type"

    .line 1083
    .local v0, "CHG_TYPE_FILE":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1084
    .local v1, "buf":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 1086
    .local v3, "bufReadLine":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .local v2, "buf":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 1088
    const-string v5, "WifiApDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ChgType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1093
    if-eqz v2, :cond_0

    .line 1094
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 1100
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    const-string v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1101
    :cond_2
    const/4 v5, 0x1

    .line 1103
    :goto_1
    return v5

    .line 1095
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 1096
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 1098
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_0

    .line 1089
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 1090
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1093
    if-eqz v1, :cond_1

    .line 1094
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1095
    :catch_2
    move-exception v4

    .line 1096
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1092
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 1093
    :goto_3
    if-eqz v1, :cond_3

    .line 1094
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1097
    :cond_3
    :goto_4
    throw v5

    .line 1095
    :catch_3
    move-exception v4

    .line 1096
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1103
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 1092
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1089
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x1

    .line 216
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    :goto_0
    return v0

    .line 218
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    const/4 v0, 0x2

    goto :goto_0

    .line 221
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTimeoutValueFromIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    const/16 v0, 0x4b0

    .line 1140
    packed-switch p1, :pswitch_data_0

    .line 1154
    :goto_0
    :pswitch_0
    return v0

    .line 1142
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1144
    :pswitch_2
    const/16 v0, 0x12c

    goto :goto_0

    .line 1146
    :pswitch_3
    const/16 v0, 0x258

    goto :goto_0

    .line 1150
    :pswitch_4
    const/16 v0, 0x708

    goto :goto_0

    .line 1152
    :pswitch_5
    const/16 v0, 0xe10

    goto :goto_0

    .line 1140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private restartFocusedViewInput()V
    .locals 2

    .prologue
    .line 1009
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1010
    .local v0, "focusedView":Landroid/view/View;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 1011
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 1013
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 1014
    :cond_2
    if-eqz v0, :cond_0

    .line 1015
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1017
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApDialog;->restartViewInput(Landroid/view/View;)V

    goto :goto_0
.end method

.method private restartViewInput(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1023
    if-eqz p1, :cond_0

    .line 1024
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1025
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1026
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1029
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private setTimeout(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 1107
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 1108
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const-string v2, "SAMSUNG_HOTSPOT"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    .line 1109
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1111
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v1, "CONNECTION_TIMEOUT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1112
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1113
    return-void
.end method

.method private showSecurityFields()V
    .locals 6

    .prologue
    const v5, 0x7f0b04c2

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 919
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b04c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityMsg:Landroid/widget/TextView;

    .line 920
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v1, :cond_1

    .line 921
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 922
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 923
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 925
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 926
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 948
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 932
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 933
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 934
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 937
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 939
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b04c3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x90

    :goto_1
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 944
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 945
    .local v0, "password":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 946
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    goto :goto_0

    .line 939
    .end local v0    # "password":Ljava/lang/String;
    :cond_3
    const/16 v1, 0x80

    goto :goto_1
.end method

.method private validate()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 751
    const/4 v3, 0x0

    .line 752
    .local v3, "trimedSsidLength":I
    const/4 v2, 0x0

    .line 753
    .local v2, "trimedPasswordLength":I
    const/4 v1, 0x1

    .line 755
    .local v1, "enabled":Z
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    .line 756
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 758
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    .line 759
    :cond_0
    const/4 v1, 0x0

    .line 763
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v4, :cond_2

    .line 764
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 767
    :cond_2
    iget v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v4, v6, :cond_4

    :cond_3
    if-eqz v2, :cond_6

    :cond_4
    iget v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v4, v5, :cond_5

    iget v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v4, v6, :cond_7

    :cond_5
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    const/16 v5, 0x8

    if-ge v4, v5, :cond_7

    .line 769
    :cond_6
    const/4 v1, 0x0

    .line 772
    :cond_7
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 773
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_8

    .line 774
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 776
    :cond_8
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 845
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 846
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 842
    return-void
.end method

.method public dismissSpinnerPopup()V
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 954
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 956
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 957
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 958
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 959
    :cond_3
    return-void
.end method

.method public getCheckShowPassword()Z
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 226
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 234
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 239
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 240
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 241
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 246
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 269
    const/4 v0, 0x0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-object v0

    .line 248
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 252
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 253
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 254
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "password":Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 261
    .end local v1    # "password":Ljava/lang/String;
    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 262
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 263
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    .restart local v1    # "password":Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getOpenWarningFlag()Z
    .locals 1

    .prologue
    .line 1000
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    return v0
.end method

.method public getTimeoutValueChangedFlag()Z
    .locals 1

    .prologue
    .line 966
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 677
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v0, :pswitch_data_0

    .line 698
    :cond_2
    :goto_0
    return-void

    .line 679
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 682
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 683
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 691
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 692
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 677
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 780
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 836
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    :pswitch_0
    return-void

    .line 782
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x90

    :goto_1
    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 787
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 788
    .local v2, "password":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 789
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->invalidate()V

    goto :goto_0

    .line 782
    .end local v2    # "password":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x80

    goto :goto_1

    .line 792
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b04c5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_2

    .line 810
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    .line 818
    .local v0, "is2gChecked":Z
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    move v5, v3

    :goto_3
    invoke-virtual {v7, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 819
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 820
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-nez v0, :cond_2

    move v3, v6

    :cond_2
    invoke-virtual {v4, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v5, v4

    .line 818
    goto :goto_3

    :cond_4
    move v4, v3

    .line 819
    goto :goto_4

    .line 823
    .end local v0    # "is2gChecked":Z
    :pswitch_4
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    .line 831
    .local v1, "is5gChecked":Z
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    if-eqz v1, :cond_6

    move v5, v4

    :goto_5
    invoke-virtual {v7, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 832
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    if-eqz v1, :cond_5

    move v4, v3

    :cond_5
    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 833
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-nez v1, :cond_7

    :goto_6
    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_6
    move v5, v3

    .line 831
    goto :goto_5

    :cond_7
    move v6, v3

    .line 833
    goto :goto_6

    .line 780
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b04be
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f0b04c3

    const/16 v10, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v8, 0x7f04018a

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 418
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b04bf

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    .line 421
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    .line 422
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 425
    .local v1, "context":Landroid/content/Context;
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    .line 426
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/wifi/WifiApDialog;->sSalesCode:Ljava/lang/String;

    .line 428
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b02aa

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b04bd

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    .line 431
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b046f

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 432
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 435
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b04be

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 436
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 437
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v8, v8, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v5, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 438
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b04c4

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 441
    .local v0, "advanced":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 442
    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b04c8

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    .line 445
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 447
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b04c6

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 448
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b04c7

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 449
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b04c9

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    .line 450
    const/4 v4, 0x0

    .line 524
    .local v4, "getChinfo":I
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    iget v8, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    invoke-virtual {v5, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 528
    const/4 v5, -0x1

    const v8, 0x7f0903e7

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v8, v9}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 529
    const/4 v5, -0x2

    const v8, 0x7f0903e8

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v8, v9}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 532
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v5, :cond_1

    .line 533
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v8, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 535
    const v5, 0x7f0903d1

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiApDialog;->setTitle(I)V

    .line 540
    :goto_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v8, v8, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v5, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 553
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    iget v8, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v5, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 554
    iget v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_1

    .line 556
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v8, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 558
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 568
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 569
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 571
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 574
    .local v2, "cr":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 575
    .local v3, "defaultValue":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_Wifi_EnableShowPasswordAsDefault"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "USC"

    sget-object v8, Lcom/android/settings/wifi/WifiApDialog;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 577
    :cond_2
    const/4 v3, 0x1

    .line 579
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-string v8, "wifi_ap_show_passwd"

    invoke-static {v2, v8, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_6

    :goto_2
    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 583
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 585
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b04cb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    .line 635
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b04ca

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 636
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v10}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 639
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b04cd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    .line 644
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b04cc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 645
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v10}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 648
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 650
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 651
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 652
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 653
    return-void

    .line 537
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "defaultValue":I
    :cond_4
    const v5, 0x7f09047b

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiApDialog;->setTitle(I)V

    goto/16 :goto_0

    .line 560
    :cond_5
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v3    # "defaultValue":I
    :cond_6
    move v6, v7

    .line 579
    goto :goto_2
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 851
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 852
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 905
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 906
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    new-instance v2, Lcom/android/settings/wifi/WifiApDialog$4;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApDialog$4;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 912
    :cond_0
    return-void

    .line 854
    :sswitch_0
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    .line 855
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 864
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 873
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 874
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    goto :goto_0

    .line 878
    :sswitch_1
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 879
    const-string v1, "WifiApDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemSelected - mSecurityTypeIndex ?  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    if-ne p3, v4, :cond_1

    .line 881
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 882
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 883
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    goto :goto_0

    .line 887
    :sswitch_2
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast2gChannel:I

    .line 888
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    goto :goto_0

    .line 891
    :sswitch_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 892
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    .line 893
    :cond_2
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast5gChannel:I

    goto :goto_0

    .line 897
    :sswitch_4
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    goto :goto_0

    .line 900
    :sswitch_5
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    .line 901
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    .line 902
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiApDialog;->getTimeoutValueFromIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setTimeout(I)V

    goto :goto_0

    .line 852
    :sswitch_data_0
    .sparse-switch
        0x7f0b04bf -> :sswitch_0
        0x7f0b04c0 -> :sswitch_1
        0x7f0b04c8 -> :sswitch_2
        0x7f0b04c9 -> :sswitch_3
        0x7f0b04cb -> :sswitch_4
        0x7f0b04cd -> :sswitch_5
    .end sparse-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 916
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 839
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7
    .param p1, "hasFocus"    # Z

    .prologue
    const v6, 0x7f0b04c3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 976
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 978
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b04bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 979
    .local v1, "mSecurity":Landroid/widget/Spinner;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 980
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 981
    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 982
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 983
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 990
    :goto_0
    return-void

    .line 985
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 986
    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 987
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 988
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setCheckShowPassword(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 971
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApDialog;->isShowPassword:Z

    .line 972
    return-void
.end method

.method public setTimeoutValueChangedFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 962
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    .line 963
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 657
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 658
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 664
    :cond_0
    return-void
.end method
