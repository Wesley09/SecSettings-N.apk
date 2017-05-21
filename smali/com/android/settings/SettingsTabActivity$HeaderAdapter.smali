.class Lcom/android/settings/SettingsTabActivity$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private final isDeviceDefault:Z

.field private final isTablet:Z

.field private final mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

.field private final mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

.field private mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mContext:Landroid/content/Context;

.field private final mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

.field private final mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

.field private final mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

.field private final mHeaderItemLayoutResID:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLaunchCameraEnabler:Lcom/android/settings/launchcamera/LaunchCameraEnabler;

.field private final mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

.field private final mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private final mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

.field private final mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

.field private mTetheredData:I

.field private final mTorchlightEnabler:Lcom/android/settings/torchlight/TorchlightEnabler;

.field private final mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

.field private final mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private final mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "authenticatorHelper"    # Lcom/android/settings/accounts/AuthenticatorHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settings/accounts/AuthenticatorHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 1160
    invoke-direct {p0, p1, v9, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1066
    iput v9, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mTetheredData:I

    .line 1161
    iput-object p1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    .line 1162
    iput-object p3, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 1163
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1167
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 1181
    iput-object v3, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .line 1184
    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    .line 1186
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 1187
    new-instance v0, Lcom/android/settings/dormantmode/DormantModeEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/dormantmode/DormantModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    .line 1188
    new-instance v0, Lcom/android/settings/DrivingModeEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/DrivingModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    .line 1189
    new-instance v0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/launchcamera/LaunchCameraEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mLaunchCameraEnabler:Lcom/android/settings/launchcamera/LaunchCameraEnabler;

    .line 1190
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    .line 1191
    new-instance v0, Lcom/android/settings/motion/MotionEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/motion/MotionEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    .line 1192
    new-instance v0, Lcom/android/settings/FingerAirViewEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/FingerAirViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    .line 1193
    new-instance v0, Lcom/android/settings/AirViewEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/AirViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    .line 1194
    new-instance v0, Lcom/android/settings/torchlight/TorchlightEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/torchlight/TorchlightEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mTorchlightEnabler:Lcom/android/settings/torchlight/TorchlightEnabler;

    .line 1196
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1197
    new-instance v0, Lcom/android/settings/nfc/NfcEnabler;

    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/PreferenceScreen;Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 1205
    :goto_0
    iput-object v3, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 1208
    new-instance v0, Lcom/android/settings/VoiceInputControlEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/VoiceInputControlEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    .line 1210
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    :goto_1
    invoke-static {v0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-ne v0, v8, :cond_0

    move-object v0, p1

    .line 1211
    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v0, v1, v2}, Lcom/android/settings/guide/GuideFragment;->setEnablersForGuide(Landroid/app/Activity;Lcom/android/settings/wifi/WifiEnabler;Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    .line 1214
    :cond_0
    sget-object v0, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1215
    .local v7, "a":Landroid/content/res/TypedArray;
    const/16 v0, 0x110

    const v1, 0x10900cd

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    .line 1216
    const/16 v0, 0x134

    invoke-virtual {v7, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    .line 1218
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_3

    move v0, v8

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isTablet:Z

    .line 1219
    return-void

    .line 1199
    .end local v7    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iput-object v3, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 1210
    goto :goto_1

    .restart local v7    # "a":Landroid/content/res/TypedArray;
    :cond_3
    move v0, v9

    .line 1218
    goto :goto_2
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 7
    .param p0, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const-wide/32 v5, 0x7f0b0587

    const/4 v4, 0x0

    .line 1104
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    .line 1105
    const/4 v0, 0x0

    .line 1125
    :goto_0
    return v0

    .line 1106
    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0584

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0586

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b059e

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b059f

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b059c

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05a3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05a4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05af

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05b0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05ac

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05cf

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0585

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b058f

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0590

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05b1

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 1123
    :cond_3
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 1125
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1138
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1132
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1133
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1224
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 1225
    .local v3, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v3}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v4

    .line 1226
    .local v4, "headerType":I
    const/4 v9, 0x0

    .line 1228
    .local v9, "view":Landroid/view/View;
    if-nez p2, :cond_7

    .line 1229
    new-instance v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;

    const/4 v10, 0x0

    invoke-direct {v5, v10}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/SettingsTabActivity$1;)V

    .line 1230
    .local v5, "holder":Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;
    packed-switch v4, :pswitch_data_0

    .line 1277
    :goto_0
    invoke-virtual {v9, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1284
    :goto_1
    packed-switch v4, :pswitch_data_1

    .line 1446
    :cond_0
    :goto_2
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b0585

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 1457
    :cond_1
    return-object v9

    .line 1232
    :pswitch_0
    iget-boolean v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isTablet:Z

    if-eqz v10, :cond_3

    .line 1233
    iget v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v11, 0x1090132

    if-ne v10, v11, :cond_2

    .line 1234
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x109012f

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    :goto_3
    move-object v10, v9

    .line 1240
    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 1236
    :cond_2
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x1090130

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    goto :goto_3

    .line 1238
    :cond_3
    new-instance v9, Landroid/widget/TextView;

    .end local v9    # "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const v12, 0x1010208

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v9    # "view":Landroid/view/View;
    goto :goto_3

    .line 1244
    :pswitch_1
    iget-boolean v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v10, :cond_5

    .line 1245
    iget v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v11, 0x1090132

    if-ne v10, v11, :cond_4

    .line 1246
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x1090134

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 1250
    :goto_4
    const v10, 0x1020006

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1251
    const v10, 0x1020016

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1252
    const v10, 0x1020010

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1253
    const v10, 0x102040c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Switch;

    iput-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    .line 1248
    :cond_4
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x1090135

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    goto :goto_4

    .line 1255
    :cond_5
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f040109

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 1256
    const v10, 0x7f0b0061

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1257
    const v10, 0x1020016

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1259
    const v10, 0x1020010

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1261
    const v10, 0x7f0b0279

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Switch;

    iput-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    .line 1266
    :pswitch_2
    iget-boolean v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v10, :cond_6

    .line 1267
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v11, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 1270
    :goto_5
    const v10, 0x1020006

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1271
    const v10, 0x1020016

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1273
    const v10, 0x1020010

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 1269
    :cond_6
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x10900cd

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    goto :goto_5

    .line 1279
    .end local v5    # "holder":Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;
    :cond_7
    move-object/from16 v9, p2

    .line 1280
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;

    .restart local v5    # "holder":Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 1286
    :pswitch_3
    iget-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1292
    :pswitch_4
    iget-boolean v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v10, :cond_e

    .line 1293
    iget v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v11, 0x1090132

    if-ne v10, v11, :cond_d

    .line 1294
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x1090134

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 1298
    :goto_6
    const v10, 0x1020006

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1299
    const v10, 0x1020016

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1300
    const v10, 0x1020010

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1301
    const v10, 0x102040c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Switch;

    iput-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 1302
    invoke-virtual {v9, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1313
    :goto_7
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b0584

    cmp-long v10, v10, v12

    if-nez v10, :cond_f

    .line 1314
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v11, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v10, v11}, Lcom/android/settings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 1359
    :cond_8
    :goto_8
    const v10, 0x10202e7

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1360
    .local v2, "dynamicDivider":Landroid/view/View;
    if-eqz v2, :cond_9

    iget-object v10, v3, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v10, :cond_9

    iget-object v10, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1361
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1365
    :cond_9
    iget-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    if-eqz v10, :cond_a

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1369
    iget-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/Switch;->setClickable(Z)V

    .line 1376
    .end local v2    # "dynamicDivider":Landroid/view/View;
    :cond_a
    :pswitch_5
    iget-object v10, v3, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v10, :cond_1e

    iget-object v10, v3, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v11, "account_type"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 1378
    iget-object v10, v3, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v11, "account_type"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1380
    .local v1, "accType":Ljava/lang/String;
    iget-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 1381
    .local v7, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f002b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1383
    iget v10, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v10, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1384
    iget-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1385
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1386
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1390
    .end local v1    # "accType":Ljava/lang/String;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_9
    iget-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1392
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b05a1

    cmp-long v10, v10, v12

    if-nez v10, :cond_b

    .line 1393
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1400
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1401
    .local v8, "summary":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_20

    .line 1402
    iget-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1425
    iget-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1427
    const-string v10, "VZW"

    # getter for: Lcom/android/settings/SettingsTabActivity;->sSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$200()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1f

    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b0584

    cmp-long v10, v10, v12

    if-eqz v10, :cond_c

    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b0586

    cmp-long v10, v10, v12

    if-nez v10, :cond_1f

    .line 1429
    :cond_c
    iget-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1296
    .end local v8    # "summary":Ljava/lang/CharSequence;
    :cond_d
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x1090135

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    goto/16 :goto_6

    .line 1304
    :cond_e
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f040109

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 1305
    const v10, 0x7f0b0061

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1306
    const v10, 0x1020016

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1307
    const v10, 0x1020010

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1308
    const v10, 0x7f0b0279

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Switch;

    iput-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 1309
    invoke-virtual {v9, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 1315
    :cond_f
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b0585

    cmp-long v10, v10, v12

    if-nez v10, :cond_10

    .line 1322
    :cond_10
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b0587

    cmp-long v10, v10, v12

    if-nez v10, :cond_11

    .line 1323
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    iget-object v11, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v10, v11}, Lcom/android/settings/AirplaneModeSwitchEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1325
    :cond_11
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b059e

    cmp-long v10, v10, v12

    if-nez v10, :cond_12

    .line 1326
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    iget-object v11, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v10, v11}, Lcom/android/settings/dormantmode/DormantModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1327
    :cond_12
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b059f

    cmp-long v10, v10, v12

    if-nez v10, :cond_13

    .line 1328
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    iget-object v11, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v10, v11}, Lcom/android/settings/DrivingModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1329
    :cond_13
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b059c

    cmp-long v10, v10, v12

    if-nez v10, :cond_14

    .line 1330
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mLaunchCameraEnabler:Lcom/android/settings/launchcamera/LaunchCameraEnabler;

    iget-object v11, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v10, v11}, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1331
    :cond_14
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b05a3

    cmp-long v10, v10, v12

    if-nez v10, :cond_15

    .line 1332
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mTorchlightEnabler:Lcom/android/settings/torchlight/TorchlightEnabler;

    iget-object v11, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v10, v11}, Lcom/android/settings/torchlight/TorchlightEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1333
    :cond_15
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b05a4

    cmp-long v10, v10, v12

    if-nez v10, :cond_16

    .line 1334
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    iget-object v11, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v10, v11}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1335
    :cond_16
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b05ac

    cmp-long v10, v10, v12

    if-nez v10, :cond_17

    .line 1336
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    iget-object v11, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v10, v11}, Lcom/android/settings/motion/MotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1337
    :cond_17
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b05af

    cmp-long v10, v10, v12

    if-nez v10, :cond_18

    .line 1338
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    iget-object v11, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v10, v11}, Lcom/android/settings/FingerAirViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1339
    :cond_18
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b05b0

    cmp-long v10, v10, v12

    if-nez v10, :cond_19

    .line 1340
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    iget-object v11, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v10, v11}, Lcom/android/settings/AirViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1341
    :cond_19
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b058f

    cmp-long v10, v10, v12

    if-nez v10, :cond_1a

    .line 1342
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    iget-object v11, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v10, v11}, Lcom/android/settings/nfc/NfcEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1343
    :cond_1a
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b0590

    cmp-long v10, v10, v12

    if-nez v10, :cond_1b

    .line 1344
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    iget-object v11, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v10, v11}, Lcom/android/settings/nfc/SBeamEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1345
    :cond_1b
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b0586

    cmp-long v10, v10, v12

    if-nez v10, :cond_1d

    .line 1348
    const-string v10, "VZW"

    # getter for: Lcom/android/settings/SettingsTabActivity;->sSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$200()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1350
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v11, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    iget-object v12, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v10, v11, v3, v12}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;Landroid/preference/PreferenceActivity$Header;Landroid/widget/TextView;)V

    goto/16 :goto_8

    .line 1352
    :cond_1c
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v11, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v10, v11}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1355
    :cond_1d
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b05b1

    cmp-long v10, v10, v12

    if-nez v10, :cond_8

    .line 1356
    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    iget-object v11, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v10, v11}, Lcom/android/settings/VoiceInputControlEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1388
    :cond_1e
    iget-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v11, v3, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 1434
    .restart local v8    # "summary":Ljava/lang/CharSequence;
    :cond_1f
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b0586

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    .line 1435
    iget-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    iget-object v11, v3, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1441
    :cond_20
    iget-object v10, v5, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1284
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1150
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1155
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 1143
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getCount()I

    move-result v1

    if-gt v1, p1, :cond_1

    .line 1145
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getItemViewType(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 1493
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 1499
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->pause()V

    .line 1501
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 1502
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->pause()V

    .line 1503
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->pause()V

    .line 1504
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeEnabler;->pause()V

    .line 1505
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion/MotionEnabler;->pause()V

    .line 1506
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewEnabler;->pause()V

    .line 1507
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirViewEnabler;->pause()V

    .line 1508
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 1509
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnPause()V

    .line 1510
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler;->pause()V

    .line 1511
    :cond_3
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 1469
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 1475
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->resume()V

    .line 1477
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 1478
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->resume()V

    .line 1479
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeEnabler;->resume()V

    .line 1480
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->resume()V

    .line 1481
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion/MotionEnabler;->resume()V

    .line 1482
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewEnabler;->resume()V

    .line 1483
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirViewEnabler;->resume()V

    .line 1484
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mTorchlightEnabler:Lcom/android/settings/torchlight/TorchlightEnabler;

    invoke-virtual {v0}, Lcom/android/settings/torchlight/TorchlightEnabler;->resume()V

    .line 1485
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mLaunchCameraEnabler:Lcom/android/settings/launchcamera/LaunchCameraEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mLaunchCameraEnabler:Lcom/android/settings/launchcamera/LaunchCameraEnabler;

    invoke-virtual {v0}, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->resume()V

    .line 1486
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 1487
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnResume()V

    .line 1488
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler;->resume()V

    .line 1489
    :cond_4
    return-void
.end method

.method public setEnablersForGuide(Lcom/android/settings/SettingsTabActivity;)V
    .locals 2
    .param p1, "settings"    # Lcom/android/settings/SettingsTabActivity;

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {p1, v0, v1}, Lcom/android/settings/guide/GuideFragment;->setEnablersForGuide(Landroid/app/Activity;Lcom/android/settings/wifi/WifiEnabler;Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    .line 1532
    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1514
    if-eqz p1, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    .line 1520
    :goto_0
    return-void

    .line 1517
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1518
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    goto :goto_0
.end method
