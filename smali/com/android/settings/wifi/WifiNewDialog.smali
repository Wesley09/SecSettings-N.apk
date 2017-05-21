.class Lcom/android/settings/wifi/WifiNewDialog;
.super Landroid/app/AlertDialog;
.source "WifiNewDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field public static ConnectedCorrectPassword:Ljava/lang/String;

.field public static ConnectedPassword:Ljava/lang/String;

.field private static final DBG:Z

.field public static Remembered:I

.field public static bEdit:I

.field public static changedssid:Ljava/lang/String;

.field public static previousssid:Ljava/lang/String;


# instance fields
.field final details:Z

.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field public mAccessPointSecurity:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAutoGenFirstTime:Z

.field private mConnectedAPEdit:I

.field mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field final mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mIsCheckedCckm:Z

.field private mIsCheckedFt:Z

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field public mPasswordView:Landroid/widget/EditText;

.field private mPhase1Spinner:Landroid/widget/Spinner;

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field public mSsidView:Landroid/widget/EditText;

.field mTempPassworld:Ljava/lang/String;

.field mTempSsid:Ljava/lang/String;

.field private mTextViewChangedHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field final manageNetwork:Z

.field passwordWatcher:Landroid/text/TextWatcher;

.field ssidWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 154
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiNewDialog;->DBG:Z

    .line 156
    const-string v0, " "

    sput-object v0, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 158
    const-string v0, " "

    sput-object v0, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedCorrectPassword:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;
    .param p4, "edit"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 219
    const v1, 0x7f100034

    invoke-direct {p0, p1, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 119
    iput v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 171
    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 172
    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 173
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    .line 175
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAutoGenFirstTime:Z

    .line 177
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIsCheckedFt:Z

    .line 178
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIsCheckedCckm:Z

    .line 181
    iput-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mTempSsid:Ljava/lang/String;

    .line 182
    iput-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mTempPassworld:Ljava/lang/String;

    .line 183
    iput-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 195
    iput-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 885
    new-instance v1, Lcom/android/settings/wifi/WifiNewDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiNewDialog$2;-><init>(Lcom/android/settings/wifi/WifiNewDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 919
    new-instance v1, Lcom/android/settings/wifi/WifiNewDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiNewDialog$3;-><init>(Lcom/android/settings/wifi/WifiNewDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 220
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    .line 221
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->details:Z

    .line 222
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->manageNetwork:Z

    .line 223
    iput-object p2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 224
    iput-object p3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 225
    iput v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 227
    if-nez p3, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    .line 228
    const-string v0, "WifiNewDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiNewDialog: edit ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void

    .line 227
    :cond_0
    iget v0, p3, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "details"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 234
    const v1, 0x7f100034

    invoke-direct {p0, p1, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 119
    iput v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 171
    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 172
    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 173
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    .line 175
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAutoGenFirstTime:Z

    .line 177
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIsCheckedFt:Z

    .line 178
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIsCheckedCckm:Z

    .line 181
    iput-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mTempSsid:Ljava/lang/String;

    .line 182
    iput-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mTempPassworld:Ljava/lang/String;

    .line 183
    iput-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 195
    iput-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 885
    new-instance v1, Lcom/android/settings/wifi/WifiNewDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiNewDialog$2;-><init>(Lcom/android/settings/wifi/WifiNewDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 919
    new-instance v1, Lcom/android/settings/wifi/WifiNewDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiNewDialog$3;-><init>(Lcom/android/settings/wifi/WifiNewDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 235
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    .line 236
    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiNewDialog;->details:Z

    .line 237
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->manageNetwork:Z

    .line 238
    iput-object p2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 239
    iput-object p3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 240
    iput v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 241
    if-nez p3, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    .line 242
    const-string v0, "WifiNewDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiNewDialog: edit ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )  details ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void

    .line 241
    :cond_0
    iget v0, p3, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiNewDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiNewDialog;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiNewDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiNewDialog;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040199

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 533
    .local v0, "row":Landroid/view/View;
    const v1, 0x7f0b0100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 534
    const v1, 0x7f0b0232

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 536
    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 721
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 722
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 726
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v0, v3, :cond_1

    .line 727
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiNewDialog;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v0

    .line 728
    if-eqz v0, :cond_1

    move v0, v1

    .line 756
    :goto_1
    return v0

    .line 722
    :cond_0
    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 733
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_3

    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 737
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 738
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 739
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 740
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 744
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 745
    :try_start_1
    invoke-static {v4, v3, v5}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v6, v3

    move v3, v0

    move v0, v6

    .line 749
    :goto_3
    if-nez v0, :cond_4

    .line 750
    new-instance v0, Landroid/net/ProxyProperties;

    invoke-direct {v0, v4, v3, v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 751
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    :cond_2
    move v0, v2

    .line 756
    goto :goto_1

    .line 733
    :cond_3
    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 746
    :catch_0
    move-exception v0

    move v0, v1

    .line 747
    :goto_4
    const v3, 0x7f090101

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_3

    :cond_4
    move v0, v1

    .line 753
    goto :goto_1

    .line 746
    :catch_1
    move-exception v3

    goto :goto_4
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 1339
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1340
    const v0, 0x7f0902f4

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1342
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1343
    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_1

    .line 1344
    :cond_0
    new-array v0, v10, [Ljava/lang/String;

    aput-object v5, v0, v1

    .line 1369
    :goto_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, v4, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1371
    const v0, 0x1090009

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1372
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1373
    return-void

    .line 1347
    :cond_1
    const-string v0, "USRPKEY_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1348
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1349
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v2, "USRCERT_"

    invoke-virtual {v0, v2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1350
    if-eqz v7, :cond_4

    move v0, v1

    .line 1351
    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_4

    move v2, v1

    .line 1352
    :goto_2
    array-length v8, v7

    if-ge v2, v8, :cond_3

    .line 1353
    aget-object v8, v3, v0

    aget-object v9, v7, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1354
    aget-object v8, v3, v0

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1352
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1351
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1360
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1363
    :goto_3
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 1364
    aput-object v5, v2, v1

    .line 1365
    array-length v3, v0

    invoke-static {v0, v1, v2, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 1366
    goto :goto_0

    :cond_5
    move-object v0, v3

    goto :goto_3
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "cert"    # Ljava/lang/String;

    .prologue
    .line 1377
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1380
    :cond_0
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1383
    if-eqz p2, :cond_0

    .line 1385
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1386
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1387
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1388
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1393
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1386
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private showIpConfigFields()V
    .locals 6

    .prologue
    const v3, 0x7f0b0507

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1219
    const/4 v0, 0x0

    .line 1221
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0505

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v5, :cond_e

    .line 1224
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1227
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    .line 1228
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1229
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0508

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    .line 1231
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1232
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0509

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    .line 1233
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1234
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b050a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1236
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1237
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b050b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    .line 1238
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1239
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b050c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    .line 1240
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1242
    :cond_0
    if-eqz v1, :cond_5

    .line 1243
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1244
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1245
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1246
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 1247
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1248
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1252
    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 1253
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1254
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1259
    :cond_3
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1260
    const-string v0, ""

    .line 1261
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1262
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 1263
    const-string v2, "::"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1264
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1268
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1269
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 1270
    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1271
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1280
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v5, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1285
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_6

    .line 1286
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1287
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 1288
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1289
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 1290
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1291
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 1292
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1293
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 1294
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1295
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 1296
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1300
    :cond_a
    return-void

    .line 1266
    :cond_b
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1273
    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1277
    :cond_d
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_e
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showProxyFields()V
    .locals 7

    .prologue
    const v6, 0x7f0b0501

    const v5, 0x7f0b0500

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1303
    const/4 v0, 0x0

    .line 1305
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b04fd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1307
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1308
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1311
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1312
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1313
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1314
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0502

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    .line 1316
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1317
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0503

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    .line 1318
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1319
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0504

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1320
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1322
    :cond_0
    if-eqz v1, :cond_1

    .line 1323
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    .line 1324
    if-eqz v0, :cond_1

    .line 1325
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1326
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1327
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1334
    :cond_1
    :goto_1
    return-void

    .line 1331
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1332
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showSecurityFields()V
    .locals 10

    .prologue
    const v9, 0x7f0b050e

    const v8, 0x7f0b0512

    const v7, 0x7f0b0511

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 989
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 990
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 993
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-nez v0, :cond_3

    .line 994
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 996
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 997
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 998
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 999
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1000
    if-eqz v0, :cond_1

    .line 1001
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1003
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1157
    :cond_2
    :goto_0
    return-void

    .line 1007
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 1008
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1009
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1010
    if-eqz v0, :cond_4

    .line 1011
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1015
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1017
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    if-nez v0, :cond_5

    .line 1018
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b046f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    .line 1019
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1020
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1022
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1023
    if-eqz v0, :cond_5

    .line 1024
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1025
    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 1026
    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1036
    :cond_5
    :goto_1
    iget v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    .line 1037
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1038
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0517

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1039
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0518

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1028
    :cond_6
    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto :goto_1

    .line 1042
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1044
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_c

    .line 1045
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 1046
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1047
    const-string v1, "PEAP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    const-string v1, "TLS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1049
    const-string v1, "TTLS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    const-string v1, "PWD"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    const-string v1, "SIM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    const-string v1, "AKA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    const-string v1, "FAST"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1062
    const v0, 0x1090009

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1063
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1064
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1066
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b050f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    .line 1067
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 1068
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 1069
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 1070
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapIdentityView:Landroid/widget/TextView;

    .line 1071
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapAnonymousView:Landroid/widget/TextView;

    .line 1073
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1074
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 1077
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1078
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1080
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    .line 1081
    if-eqz v1, :cond_8

    .line 1082
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v3, "fast_provisioning="

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1085
    :cond_8
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    .line 1086
    if-eqz v1, :cond_e

    const-string v2, "auth="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1087
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    const-string v3, "auth="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1092
    :goto_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v2, "keystore://CACERT_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapIdentityView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapAnonymousView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1105
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1109
    const-string v0, "WifiPolicy"

    const-string v1, "Enterprise Wifi settings not editable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_9

    .line 1111
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1112
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_a

    .line 1113
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1114
    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_b

    .line 1115
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1116
    :cond_b
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_c

    .line 1117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1122
    :cond_c
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b050d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1123
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0513

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1125
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1126
    const-string v0, "AKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1127
    :cond_d
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1128
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0510

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1129
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1130
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1131
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0513

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1132
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0514

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1133
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0517

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1134
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0518

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1144
    :goto_4
    const-string v0, "FAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1145
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1146
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1147
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1151
    :goto_5
    const-string v0, "PWD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1152
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0510

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1153
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1155
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0514

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1089
    :cond_e
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1100
    :cond_f
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    const-string v1, "MSCHAPV2"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1136
    :cond_10
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0510

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1137
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1138
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1139
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0513

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1140
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0514

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1141
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0517

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1142
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0518

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 1149
    :cond_11
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 7

    .prologue
    const v2, 0x7f090344

    const v3, 0x7f090343

    const v0, 0x7f090341

    const/4 v1, 0x0

    .line 760
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    if-nez v4, :cond_1

    move v0, v1

    .line 836
    :cond_0
    :goto_0
    return v0

    .line 762
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 763
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 767
    :try_start_0
    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    .line 772
    const/4 v0, -0x1

    .line 774
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 775
    if-ltz v0, :cond_2

    const/16 v5, 0x20

    if-le v0, v5, :cond_3

    :cond_2
    move v0, v2

    .line 776
    goto :goto_0

    .line 778
    :cond_3
    new-instance v5, Landroid/net/LinkAddress;

    invoke-direct {v5, v4, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v5}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 789
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 790
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 793
    :try_start_2
    invoke-static {v4, v0}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 794
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 795
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    const/4 v4, 0x1

    aput-byte v4, v0, v2

    .line 796
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_5

    .line 810
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 813
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAutoGenFirstTime:Z

    if-eqz v2, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 815
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f090346

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    :goto_3
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAutoGenFirstTime:Z

    .line 826
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 827
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 829
    :try_start_3
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 833
    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    :cond_4
    move v0, v1

    .line 836
    goto/16 :goto_0

    .line 779
    :catch_0
    move-exception v5

    .line 781
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAutoGenFirstTime:Z

    if-eqz v5, :cond_5

    .line 782
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09034c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 785
    goto/16 :goto_0

    .line 803
    :cond_6
    :try_start_4
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    .line 807
    new-instance v2, Landroid/net/RouteInfo;

    invoke-direct {v2, v0}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_2

    .line 804
    :catch_1
    move-exception v0

    .line 805
    const v0, 0x7f090342

    goto/16 :goto_0

    .line 818
    :cond_7
    :try_start_5
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v0

    .line 822
    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_3

    .line 819
    :catch_2
    move-exception v0

    move v0, v3

    .line 820
    goto/16 :goto_0

    .line 830
    :catch_3
    move-exception v0

    move v0, v3

    .line 831
    goto/16 :goto_0

    .line 768
    :catch_4
    move-exception v1

    goto/16 :goto_0

    .line 798
    :catch_5
    move-exception v0

    goto/16 :goto_2

    .line 797
    :catch_6
    move-exception v0

    goto/16 :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/WifiNewDialog$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiNewDialog$4;-><init>(Lcom/android/settings/wifi/WifiNewDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 964
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 956
    return-void
.end method

.method public enableSubmitIfAppropriate()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x2

    const/4 v9, -0x1

    .line 540
    sget-boolean v6, Lcom/android/settings/wifi/WifiNewDialog;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiNewDialog"

    const-string v7, "enableSubmitIfAppropriate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    const/4 v6, -0x3

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    .line 543
    .local v4, "submit":Landroid/widget/Button;
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 544
    .local v0, "connect":Landroid/widget/Button;
    if-nez v4, :cond_2

    if-nez v0, :cond_2

    .line 545
    const-string v6, "WifiNewDialog"

    const-string v7, "submit button is not set"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_1
    :goto_0
    return-void

    .line 550
    :cond_2
    const/4 v5, 0x0

    .line 551
    .local v5, "trimedSsidLength":I
    const/4 v1, 0x1

    .line 552
    .local v1, "enabled":Z
    const/4 v3, 0x0

    .line 554
    .local v3, "passwordInvalid":Z
    iget-object v6, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v6, :cond_13

    .line 555
    iget-object v6, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 556
    .local v2, "passLen":I
    iget v6, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    iget v6, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-ne v6, v8, :cond_10

    if-ge v2, v10, :cond_10

    .line 558
    :cond_4
    sget-boolean v6, Lcom/android/settings/wifi/WifiNewDialog;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "WifiNewDialog"

    const-string v7, "password invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_5
    const/4 v3, 0x1

    .line 570
    .end local v2    # "passLen":I
    :cond_6
    :goto_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v6, :cond_8

    .line 571
    iget-object v6, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    if-nez v6, :cond_7

    .line 572
    const/4 v1, 0x0

    .line 574
    :cond_7
    iget-object v6, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 577
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNewDialog;->ipAndProxyFieldsAreValid()Z

    move-result v6

    if-nez v6, :cond_9

    .line 578
    const/4 v1, 0x0

    .line 581
    :cond_9
    sget-boolean v6, Lcom/android/settings/wifi/WifiNewDialog;->DBG:Z

    if-eqz v6, :cond_a

    const-string v6, "WifiNewDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "password invalid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_a
    iget-object v6, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v6, v9, :cond_c

    :cond_b
    if-eqz v3, :cond_c

    .line 583
    const/4 v1, 0x0

    .line 586
    :cond_c
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v6, :cond_d

    if-nez v5, :cond_d

    .line 587
    const/4 v1, 0x0

    .line 589
    :cond_d
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-eqz v6, :cond_e

    if-eqz v3, :cond_e

    .line 590
    const/4 v1, 0x0

    .line 592
    :cond_e
    if-eqz v4, :cond_f

    .line 593
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 594
    :cond_f
    if-eqz v0, :cond_1

    .line 595
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 560
    .restart local v2    # "passLen":I
    :cond_10
    iget-object v6, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v6, v9, :cond_6

    iget v6, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-ne v6, v8, :cond_6

    if-eqz v2, :cond_11

    if-lez v2, :cond_6

    if-ge v2, v10, :cond_6

    .line 563
    :cond_11
    sget-boolean v6, Lcom/android/settings/wifi/WifiNewDialog;->DBG:Z

    if-eqz v6, :cond_12

    const-string v6, "WifiNewDialog"

    const-string v7, "password invalid (saved ap)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_12
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 567
    .end local v2    # "passLen":I
    :cond_13
    const-string v6, "WifiNewDialog"

    const-string v7, "mPasswordView is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/16 v8, 0x22

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 600
    const-string v4, "WifiNewDialog"

    const-string v7, "getConfig()"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v9, :cond_0

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v4, :cond_0

    .line 602
    const/4 v0, 0x0

    .line 717
    :goto_0
    return-object v0

    .line 605
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 607
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v4, :cond_4

    .line 608
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 611
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 622
    :goto_1
    iget v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    packed-switch v4, :pswitch_data_0

    .line 704
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_3

    .line 705
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->secFlags:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 706
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 708
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->secFlags:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 709
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 713
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 714
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 715
    new-instance v4, Landroid/net/LinkProperties;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 612
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v4, v9, :cond_5

    .line 613
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 616
    :cond_5
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-eqz v4, :cond_6

    .line 617
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 619
    :cond_6
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 624
    :pswitch_0
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 628
    :pswitch_1
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 629
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 630
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 631
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 632
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 633
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 634
    .local v2, "length":I
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 636
    .local v3, "password":Ljava/lang/String;
    const/16 v4, 0xa

    if-eq v2, v4, :cond_7

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_7

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_8

    :cond_7
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 638
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v3, v4, v6

    goto/16 :goto_2

    .line 640
    :cond_8
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    goto/16 :goto_2

    .line 646
    .end local v2    # "length":I
    .end local v3    # "password":Ljava/lang/String;
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIsCheckedFt:Z

    if-eqz v4, :cond_9

    .line 647
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 651
    :goto_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 652
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 653
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 654
    .restart local v3    # "password":Ljava/lang/String;
    const-string v4, "[0-9A-Fa-f]{64}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 655
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 649
    .end local v3    # "password":Ljava/lang/String;
    :cond_9
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_3

    .line 657
    .restart local v3    # "password":Ljava/lang/String;
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 663
    .end local v3    # "password":Ljava/lang/String;
    :pswitch_3
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIsCheckedFt:Z

    if-eqz v4, :cond_c

    .line 664
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 671
    :goto_4
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 672
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v4

    const-string v7, "FAST"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 673
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fast_provisioning="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 674
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->pac_file:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v7, "/data/misc/wifi/wpa_supplicant.pac"

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 677
    :cond_b
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_e

    const-string v4, ""

    :goto_5
    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 679
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_f

    const-string v4, ""

    :goto_6
    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 682
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_10

    const-string v4, ""

    :goto_7
    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 686
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_11

    move v1, v5

    .line 687
    .local v1, "isEmptyKeyId":Z
    :goto_8
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_12

    const-string v4, ""

    :goto_9
    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 689
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->engine:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_13

    const-string v4, "0"

    :goto_a
    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 691
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->engine_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_14

    const-string v4, ""

    :goto_b
    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 693
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_15

    const-string v4, ""

    :goto_c
    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 695
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_16

    const-string v4, ""

    :goto_d
    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 697
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 698
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 699
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 665
    .end local v1    # "isEmptyKeyId":Z
    :cond_c
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIsCheckedCckm:Z

    if-eqz v4, :cond_d

    .line 666
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x7

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4

    .line 668
    :cond_d
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 669
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4

    .line 677
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "auth="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 679
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keystore://CACERT_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 682
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keystore://USRCERT_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    :cond_11
    move v1, v6

    .line 686
    goto/16 :goto_8

    .line 687
    .restart local v1    # "isEmptyKeyId":Z
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRPKEY_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_9

    .line 689
    :cond_13
    const-string v4, "1"

    goto/16 :goto_a

    .line 691
    :cond_14
    const-string v4, "keystore"

    goto/16 :goto_b

    .line 693
    :cond_15
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_c

    .line 695
    :cond_16
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_d

    .line 622
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1413
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "on back pressed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1414
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    .line 1415
    invoke-super {p0}, Landroid/app/AlertDialog;->onBackPressed()V

    .line 1416
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const v5, 0x7f0b0523

    const v4, 0x7f0b0522

    const v3, 0x7f0b051e

    const/4 v2, 0x0

    .line 841
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b04c3

    if-ne v0, v1, :cond_4

    .line 843
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 844
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 847
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 849
    :cond_0
    const-string v0, "WifiNewDialog"

    const-string v1, "onClick: EDM is called when the user clicks the show password"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_1
    :goto_0
    return-void

    .line 853
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 854
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x90

    :goto_1
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 858
    if-ltz v1, :cond_1

    .line 859
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 854
    :cond_3
    const/16 v0, 0x80

    goto :goto_1

    .line 861
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b051d

    if-ne v0, v1, :cond_6

    .line 862
    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 863
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 865
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 867
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 868
    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIsCheckedFt:Z

    .line 870
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIsCheckedFt:Z

    if-eqz v0, :cond_1

    .line 871
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIsCheckedCckm:Z

    .line 872
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 874
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 875
    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIsCheckedCckm:Z

    .line 877
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIsCheckedCckm:Z

    if-eqz v0, :cond_1

    .line 878
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIsCheckedFt:Z

    .line 879
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 261
    const-string v13, "WifiNewDialog"

    const-string v14, "onCreate()"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 264
    .local v3, "context":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 265
    .local v8, "resources":Landroid/content/res/Resources;
    const-string v13, "enterprise_policy"

    invoke-virtual {v3, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f040197

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    .line 267
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/WifiNewDialog;->setView(Landroid/view/View;)V

    .line 268
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/WifiNewDialog;->setInverseBackgroundForced(Z)V

    .line 270
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b04bf

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b0506

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 280
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b04ff

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 282
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b004f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 287
    .local v6, "infoMsg":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v13, :cond_6

    .line 288
    const-string v13, "WifiNewDialog"

    const-string v14, "onCreate: mAccessPoint == null"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const v13, 0x7f0902ae

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/WifiNewDialog;->setTitle(I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b02aa

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b04bd

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    .line 293
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiNewDialog;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->showIpConfigFields()V

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->showProxyFields()V

    .line 301
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b051c

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b051d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    const/4 v13, -0x1

    const v14, 0x7f0903e5

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 305
    const/4 v13, -0x3

    const v14, 0x7f0903e7

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x14

    invoke-virtual {v13, v14}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 440
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_17

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v13, :cond_17

    .line 441
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->details:Z

    if-eqz v13, :cond_16

    .line 442
    const/4 v13, -0x3

    const v14, 0x7f0902cc

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 451
    :goto_1
    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 466
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 467
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 468
    sget v13, Lcom/android/settings/wifi/WifiNewDialog;->Remembered:I

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_1

    .line 469
    const/4 v13, -0x1

    const v14, 0x7f0902cc

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 472
    :cond_1
    const/4 v13, 0x1

    sput v13, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    .line 473
    sget v13, Lcom/android/settings/wifi/WifiSettings;->mManageNetworkConnected:I

    if-nez v13, :cond_1a

    .line 474
    const/4 v13, -0x2

    const v14, 0x7f0902cf

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 475
    const/4 v13, 0x1

    sput v13, Lcom/android/settings/wifi/WifiSettings;->cancel_network:I

    .line 480
    :goto_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 483
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v13, :cond_4

    .line 484
    sget v13, Lcom/android/settings/wifi/WifiNewDialog;->Remembered:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 485
    const/4 v13, -0x1

    const v14, 0x7f0903e5

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 488
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/WifiNewDialog;->setInverseBackgroundForced(Z)V

    .line 489
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v13, :cond_1b

    .line 490
    const v13, 0x7f0903ed

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v3, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    :cond_3
    :goto_4
    const/4 v13, -0x3

    const v14, 0x7f0902cc

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 498
    const/4 v13, -0x2

    const v14, 0x7f0902cd

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 500
    :cond_4
    invoke-super/range {p0 .. p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 502
    const/4 v13, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v13

    if-eqz v13, :cond_5

    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->enableSubmitIfAppropriate()V

    .line 507
    :cond_5
    new-instance v13, Lcom/android/settings/wifi/WifiNewDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings/wifi/WifiNewDialog$1;-><init>(Lcom/android/settings/wifi/WifiNewDialog;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 514
    return-void

    .line 310
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v13, :cond_e

    .line 311
    const v13, 0x7f0903ee

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v3, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/WifiNewDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 316
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b04bc

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 317
    .local v4, "group":Landroid/view/ViewGroup;
    const-string v13, "WifiNewDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onCreate: details "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->details:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    .line 319
    .local v11, "state":Landroid/net/NetworkInfo$DetailedState;
    if-eqz v11, :cond_7

    .line 320
    const v13, 0x7f0902e1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v11}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 322
    :cond_7
    const v13, 0x7f0a0025

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 323
    .local v12, "type":[Ljava/lang/String;
    const v13, 0x7f0902df

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v7

    .line 326
    .local v7, "level":I
    const/4 v13, -0x1

    if-eq v7, v13, :cond_9

    .line 327
    const v13, 0x7f0a0034

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 328
    .local v10, "signal":[Ljava/lang/String;
    array-length v13, v10

    if-le v7, v13, :cond_8

    .line 329
    const-string v13, "WifiNewDialog"

    const-string v14, "Force level of wifi signal"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    array-length v13, v10

    add-int/lit8 v7, v13, -0x1

    .line 332
    :cond_8
    const v13, 0x7f0902e0

    aget-object v14, v10, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 335
    .end local v10    # "signal":[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 337
    .local v5, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v5, :cond_a

    .line 338
    const v13, 0x7f0902e2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Mbps"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 340
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    .line 341
    .local v1, "address":I
    if-eqz v1, :cond_a

    .line 342
    const v13, 0x7f0902e3

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 360
    .end local v1    # "address":I
    :cond_a
    const/4 v9, 0x0

    .line 361
    .local v9, "showAdvancedFields":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_b

    .line 362
    const-string v13, "WifiNewDialog"

    const-string v14, "network id is valid"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 364
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v13, v2, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v14, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v13, v14, :cond_f

    .line 365
    const-string v13, "WifiNewDialog"

    const-string v14, "ip assignment static"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    .line 367
    const/4 v9, 0x1

    .line 373
    :goto_6
    iget-object v13, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v14, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v13, v14, :cond_10

    .line 374
    const-string v13, "WifiNewDialog"

    const-string v14, "proxy static"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    .line 376
    const/4 v9, 0x1

    .line 382
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->details:Z

    if-eqz v13, :cond_11

    .line 383
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 388
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_c

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-eqz v13, :cond_d

    .line 389
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->showSecurityFields()V

    .line 390
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->showIpConfigFields()V

    .line 391
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->showProxyFields()V

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b051c

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b051d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    if-eqz v9, :cond_d

    .line 399
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b051d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 400
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b051e

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 404
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-eqz v13, :cond_12

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b02aa

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 406
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b04bd

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    .line 407
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v14, v14, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b04bf

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    .line 410
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b04bf

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 411
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/settings/wifi/WifiSettings;->vzwViewFlag:Z

    .line 412
    const-string v13, "WifiNewDialog"

    const-string v14, "vzwViewFlag sets to false - onCreate, mEdit is true"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v13, -0x1

    const v14, 0x7f0903e5

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 414
    const/4 v13, -0x3

    const v14, 0x7f0903e7

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 415
    const-string v13, "WifiNewDialog"

    const-string v14, "EDIT true connect and submit btn set "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v13, v13, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    sput-object v13, Lcom/android/settings/wifi/WifiNewDialog;->previousssid:Ljava/lang/String;

    .line 417
    const/4 v13, 0x1

    sput v13, Lcom/android/settings/wifi/WifiNewDialog;->bEdit:I

    goto/16 :goto_0

    .line 313
    .end local v4    # "group":Landroid/view/ViewGroup;
    .end local v5    # "info":Landroid/net/wifi/WifiInfo;
    .end local v7    # "level":I
    .end local v9    # "showAdvancedFields":Z
    .end local v11    # "state":Landroid/net/NetworkInfo$DetailedState;
    .end local v12    # "type":[Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v13, v13, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/WifiNewDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 369
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "group":Landroid/view/ViewGroup;
    .restart local v5    # "info":Landroid/net/wifi/WifiInfo;
    .restart local v7    # "level":I
    .restart local v9    # "showAdvancedFields":Z
    .restart local v11    # "state":Landroid/net/NetworkInfo$DetailedState;
    .restart local v12    # "type":[Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_6

    .line 378
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_7

    .line 385
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_11
    const/16 v13, 0x8

    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_8

    .line 419
    :cond_12
    if-nez v11, :cond_15

    const/4 v13, -0x1

    if-eq v7, v13, :cond_15

    .line 420
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v13, :cond_14

    .line 421
    const v13, 0x7f0903ed

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v3, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    :cond_13
    :goto_9
    const/4 v13, -0x1

    const v14, 0x7f0903e5

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 428
    const-string v13, "WifiNewDialog"

    const-string v14, "EDIT false state null set connect button "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :goto_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    .line 433
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->manageNetwork:Z

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->details:Z

    const/4 v14, 0x1

    if-eq v13, v14, :cond_0

    .line 434
    const/4 v13, -0x1

    const v14, 0x7f0903e6

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 423
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_13

    .line 424
    const v13, 0x7f0902ce

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v3, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 430
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b0505

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 444
    .end local v4    # "group":Landroid/view/ViewGroup;
    .end local v5    # "info":Landroid/net/wifi/WifiInfo;
    .end local v7    # "level":I
    .end local v9    # "showAdvancedFields":Z
    .end local v11    # "state":Landroid/net/NetworkInfo$DetailedState;
    .end local v12    # "type":[Ljava/lang/String;
    :cond_16
    const/4 v13, -0x3

    const v14, 0x7f0902cb

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 445
    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/settings/wifi/WifiSettings;->vzwViewFlag:Z

    .line 446
    const-string v13, "WifiNewDialog"

    const-string v14, "vzwViewFlag sets to true"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v13, -0x2

    const v14, 0x7f0902cc

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 448
    const/4 v13, 0x0

    sput v13, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    goto/16 :goto_1

    .line 453
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v13, :cond_19

    .line 454
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    .line 455
    .restart local v11    # "state":Landroid/net/NetworkInfo$DetailedState;
    if-eqz v11, :cond_19

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v11, v13, :cond_18

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v11, v13, :cond_18

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v11, v13, :cond_19

    .line 458
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b04bc

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 459
    .restart local v4    # "group":Landroid/view/ViewGroup;
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 462
    .end local v4    # "group":Landroid/view/ViewGroup;
    .end local v11    # "state":Landroid/net/NetworkInfo$DetailedState;
    :cond_19
    const/4 v13, -0x2

    const v14, 0x7f0903e8

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 477
    :cond_1a
    const/4 v13, -0x2

    const v14, 0x7f0902cd

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 478
    const/4 v13, 0x1

    sput v13, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    goto/16 :goto_3

    .line 493
    :cond_1b
    const v13, 0x7f0902ce

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v3, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 968
    iput p3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    .line 969
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNewDialog;->showSecurityFields()V

    .line 981
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->enableSubmitIfAppropriate()V

    .line 982
    return-void

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 975
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNewDialog;->showSecurityFields()V

    goto :goto_0

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 977
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNewDialog;->showProxyFields()V

    goto :goto_0

    .line 979
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNewDialog;->showIpConfigFields()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 985
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 953
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, -0x3

    const/4 v3, -0x1

    const/high16 v2, 0x41600000    # 14.0f

    .line 1396
    const-string v0, "WifiNewDialog"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 1399
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1400
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    .line 1401
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1403
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1404
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1406
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1407
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1409
    :cond_2
    return-void
.end method
