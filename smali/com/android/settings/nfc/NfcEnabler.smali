.class public Lcom/android/settings/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;
    }
.end annotation


# instance fields
.field private final mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

.field private final mContext:Landroid/content/Context;

.field private mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private final mNfcPayment:Landroid/preference/PreferenceScreen;

.field private mNfcSwitch:Landroid/widget/Switch;

.field private final mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

.field private mPolicyEnabled:Z

.field private final mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private final mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

.field private final mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nfcSwitch"    # Landroid/preference/SwitchPreferenceScreen;
    .param p3, "sBeam"    # Landroid/preference/SwitchPreferenceScreen;
    .param p4, "nfcPayment"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    .line 113
    new-instance v2, Lcom/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    iput-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 168
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 169
    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 170
    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    .line 171
    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 172
    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 173
    iput-object p4, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    .line 175
    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 176
    iput-object p3, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 178
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 179
    if-nez p3, :cond_1

    :goto_0
    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 181
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 182
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 189
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 190
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPolicyEnabled:Z

    .line 192
    return-void

    .line 179
    .end local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_1
    new-instance v1, Lcom/android/settings/nfc/SBeamEnabler;

    invoke-direct {v1, p1, p3}, Lcom/android/settings/nfc/SBeamEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/PreferenceScreen;Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nfcSwitch"    # Landroid/widget/Switch;
    .param p3, "androidBeam"    # Landroid/preference/SwitchPreferenceScreen;
    .param p4, "readerSwitch"    # Landroid/preference/SwitchPreferenceScreen;
    .param p5, "nfcPayment"    # Landroid/preference/PreferenceScreen;
    .param p6, "helpCtrl"    # Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    .line 113
    new-instance v1, Lcom/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    iput-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 138
    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    .line 139
    iput-object p6, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    .line 140
    iput-object p4, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 141
    iput-object p3, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 142
    iput-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 143
    iput-object p5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    .line 145
    iput-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 146
    iput-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 148
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 149
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 151
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 152
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 160
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 161
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPolicyEnabled:Z

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcEnabler;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/NfcEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->forceGrayOut(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/NfcEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcReaderStateChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/nfc/NfcEnabler;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcEnabler;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcEnabler;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/nfc/NfcEnabler;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcEnabler;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSBeamSwitch(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/nfc/NfcEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcEnabler;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private forceGrayOut(I)V
    .locals 7
    .param p1, "nfcState"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 845
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 847
    const/4 v0, 0x0

    .line 848
    .local v0, "is3lmRestricted":Z
    const/4 v1, 0x0

    .line 850
    .local v1, "isCenLocked":Z
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->getLockStateFromDevice()I

    move-result v2

    .line 851
    .local v2, "val":I
    if-nez v2, :cond_8

    move v1, v3

    .line 853
    :goto_0
    const-string v5, "persist.security.nfc.lockout"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    .line 854
    const/4 v0, 0x1

    .line 857
    :cond_0
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_2

    .line 858
    if-nez v0, :cond_1

    if-eqz v1, :cond_9

    .line 859
    :cond_1
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 863
    :goto_1
    if-eqz v0, :cond_2

    .line 864
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 868
    :cond_2
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_4

    .line 869
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    const/4 v5, 0x3

    if-eq p1, v5, :cond_a

    .line 870
    :cond_3
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v5

    invoke-direct {p0, v4, v5, v4}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 876
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_6

    .line 877
    if-nez v0, :cond_5

    if-eqz v1, :cond_b

    .line 878
    :cond_5
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSBeamSwitch(ZZ)V

    .line 883
    :cond_6
    :goto_3
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_7

    .line 884
    if-eqz v1, :cond_c

    .line 885
    iget-object v4, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 892
    .end local v0    # "is3lmRestricted":Z
    .end local v1    # "isCenLocked":Z
    .end local v2    # "val":I
    :cond_7
    :goto_4
    return-void

    .restart local v0    # "is3lmRestricted":Z
    .restart local v1    # "isCenLocked":Z
    .restart local v2    # "val":I
    :cond_8
    move v1, v4

    .line 851
    goto :goto_0

    .line 861
    :cond_9
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .line 872
    :cond_a
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v5

    iget-object v6, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    goto :goto_2

    .line 880
    :cond_b
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v5

    invoke-direct {p0, v3, v5}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSBeamSwitch(ZZ)V

    goto :goto_3

    .line 887
    :cond_c
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_4
.end method

.method private getLockStateFromDevice()I
    .locals 7

    .prologue
    .line 812
    const/4 v3, -0x1

    .line 813
    .local v3, "ret":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 814
    const/4 v4, 0x1

    .line 840
    :goto_0
    return v4

    .line 817
    :cond_0
    const-string v4, "NfcEnabler"

    const-string v5, "[S]getLockStateFromDevice"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/4 v1, 0x0

    .line 820
    .local v1, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v4, "/dev/felica_cen"

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 830
    if-eqz v2, :cond_1

    .line 831
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v1, v2

    .line 838
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    const-string v4, "NfcEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[E]getLockStateFromDevice ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 840
    goto :goto_0

    .line 833
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 834
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 836
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 822
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 823
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v3, -0x1

    .line 824
    :try_start_3
    const-string v4, "NfcEnabler"

    const-string v5, "[Ex]FileNotFoundException"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 830
    if-eqz v1, :cond_2

    .line 831
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 833
    :catch_2
    move-exception v0

    .line 834
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 825
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 826
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    const/4 v3, -0x1

    .line 827
    :try_start_5
    const-string v4, "NfcEnabler"

    const-string v5, "[Ex]IOException"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 830
    if-eqz v1, :cond_2

    .line 831
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 833
    :catch_4
    move-exception v0

    .line 834
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 829
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 830
    :goto_4
    if-eqz v1, :cond_3

    .line 831
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 835
    :cond_3
    :goto_5
    throw v4

    .line 833
    :catch_5
    move-exception v0

    .line 834
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 829
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 825
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 822
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static getPackageLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 700
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "none"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 701
    :cond_0
    const-string v4, ""

    .line 717
    :goto_0
    return-object v4

    .line 704
    :cond_1
    const/4 v4, 0x0

    .line 706
    .local v4, "retVal":Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 707
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 708
    .local v2, "pI":Landroid/content/pm/PackageInfo;
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 709
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 714
    const-string v5, "NfcEnabler"

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

    .line 710
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pI":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 711
    .local v0, "NNE":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 712
    const-string v4, "PackageNameNotFound"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 714
    const-string v5, "NfcEnabler"

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

    const-string v6, "NfcEnabler"

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

.method private handleNfcReaderStateChanged(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 592
    packed-switch p1, :pswitch_data_0

    .line 609
    :goto_0
    :pswitch_0
    return-void

    .line 594
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 595
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 598
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 599
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 602
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 603
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 592
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private handleNfcStateChanged(I)V
    .locals 5
    .param p1, "newState"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 523
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_0

    .line 524
    const-string v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNfcStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 589
    :cond_1
    :goto_0
    return-void

    .line 528
    :pswitch_0
    invoke-direct {p0, v4, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 529
    invoke-direct {p0, v4, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 530
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    invoke-direct {p0, v3, v0, v3}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 533
    :cond_2
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setReaderSwitch(ZZ)V

    .line 534
    invoke-direct {p0, v4, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcPaymentPref(ZZ)V

    .line 537
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    const-string v0, "GATE"

    const-string v1, "<GATE-M>NFC_OFF</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 544
    :pswitch_1
    invoke-direct {p0, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 545
    invoke-direct {p0, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 546
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 547
    invoke-direct {p0, v4, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 551
    :goto_1
    invoke-direct {p0, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->setReaderSwitch(ZZ)V

    .line 552
    invoke-direct {p0, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcPaymentPref(ZZ)V

    .line 555
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    const-string v0, "GATE"

    const-string v1, "<GATE-M>NFC_ON</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 549
    :cond_3
    invoke-direct {p0, v4, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    goto :goto_1

    .line 562
    :pswitch_2
    invoke-direct {p0, v3, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 563
    invoke-direct {p0, v3, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 564
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_4

    .line 565
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v1

    invoke-direct {p0, v3, v0, v1}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 567
    :cond_4
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setReaderSwitch(ZZ)V

    .line 568
    invoke-direct {p0, v3, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcPaymentPref(ZZ)V

    goto :goto_0

    .line 571
    :pswitch_3
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 572
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 573
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_5

    .line 574
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v1

    invoke-direct {p0, v3, v0, v1}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 576
    :cond_5
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setReaderSwitch(ZZ)V

    .line 577
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcPaymentPref(ZZ)V

    goto/16 :goto_0

    .line 580
    :pswitch_4
    invoke-direct {p0, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 581
    invoke-direct {p0, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 582
    invoke-direct {p0, v3, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 583
    invoke-direct {p0, v4, v3}, Lcom/android/settings/nfc/NfcEnabler;->setReaderSwitch(ZZ)V

    goto/16 :goto_0

    .line 526
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private procHelpCtrl(Z)V
    .locals 3
    .param p1, "bOn"    # Z

    .prologue
    .line 787
    const-string v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "procHelpCtrl("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    if-nez v0, :cond_0

    .line 792
    :goto_0
    return-void

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    invoke-interface {v0, p1}, Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;->show(Z)V

    goto :goto_0
.end method

.method private setAndroidBeamSwitch(ZZZ)V
    .locals 3
    .param p1, "bEnable"    # Z
    .param p2, "bCheck"    # Z
    .param p3, "bSummary"    # Z

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isAndroidBeamAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    const/4 p1, 0x0

    .line 745
    const/4 p2, 0x0

    .line 746
    const/4 p3, 0x0

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-nez v0, :cond_1

    .line 766
    :goto_0
    return-void

    .line 751
    :cond_1
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_2

    .line 752
    const-string v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAndroidBeamSwitch : Enable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]=>["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] summary["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 756
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    if-eqz v0, :cond_3

    .line 757
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 760
    :cond_3
    if-eqz p3, :cond_4

    .line 761
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    const v1, 0x7f090266

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 763
    :cond_4
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f090267

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_5
    const v0, 0x7f090268

    goto :goto_1
.end method

.method private setNfcPaymentPref(ZZ)V
    .locals 7
    .param p1, "bEnable"    # Z
    .param p2, "bCheck"    # Z

    .prologue
    const v6, 0x7f09027a

    const/4 v5, 0x1

    .line 655
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    if-nez v2, :cond_0

    .line 656
    const-string v2, "NfcEnabler"

    const-string v3, "mNfcPayment is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :goto_0
    return-void

    .line 659
    :cond_0
    sget-boolean v2, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v2, :cond_1

    .line 660
    const-string v2, "NfcEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNfcPayment : Enable["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_1
    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    .line 662
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 666
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getCurrentSeRouteInfo()I

    move-result v1

    .line 667
    .local v1, "routeType":I
    const-string v2, "NfcEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNfcPaymentPref SecureElement is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    if-eq v1, v5, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 669
    :cond_2
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    const v3, 0x7f09027c

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 671
    :cond_3
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nfc_wallet_default"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "defaultWalletPkg":Ljava/lang/String;
    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 674
    if-eqz v0, :cond_4

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 675
    :cond_4
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    .line 676
    :cond_5
    const-string v2, "LastWalletUsed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 677
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcEnabler;->makeLastWalletSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 680
    :cond_6
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/settings/nfc/NfcEnabler;->getPackageLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 684
    :cond_7
    if-eqz v0, :cond_8

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 685
    :cond_8
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    .line 687
    :cond_9
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcEnabler;->makeLastWalletSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 693
    .end local v0    # "defaultWalletPkg":Ljava/lang/String;
    .end local v1    # "routeType":I
    :cond_a
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 694
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    const v3, 0x7f09027b

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_0
.end method

.method private setNfcSBeamSwitch(ZZ)V
    .locals 3
    .param p1, "bEnable"    # Z
    .param p2, "bCheck"    # Z

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-nez v0, :cond_1

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSBeamSwitch : Enable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]=>["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 801
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0
.end method

.method private setNfcSwitch(ZZ)V
    .locals 3
    .param p1, "bEnable"    # Z
    .param p2, "bCheck"    # Z

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_0

    .line 634
    :goto_0
    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 620
    const/4 p1, 0x0

    .line 621
    const/4 p2, 0x0

    .line 625
    :cond_1
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_2

    .line 626
    const-string v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNfcSwitch : Enable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]=>["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 629
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    if-eqz v0, :cond_3

    .line 630
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 633
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/settings/nfc/NfcEnabler;->procHelpCtrl(Z)V

    goto :goto_0
.end method

.method private setNfcSwitchPref(ZZ)V
    .locals 3
    .param p1, "bEnable"    # Z
    .param p2, "bCheck"    # Z

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-nez v0, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_2

    .line 643
    const-string v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNfcSwitchPref : Enable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]=>["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 646
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0
.end method

.method private setReaderSwitch(ZZ)V
    .locals 3
    .param p1, "state"    # Z
    .param p2, "check"    # Z

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-nez v0, :cond_1

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_2

    .line 778
    const-string v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReaderSwitch : Enable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]=>["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 781
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public makeLastWalletSummary()Ljava/lang/String;
    .locals 5

    .prologue
    .line 721
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nfc_last_wallet_default"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, "lastWalletPkg":Ljava/lang/String;
    const-string v0, ""

    .line 724
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

    .line 725
    :cond_0
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09027a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 730
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 731
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09027d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 728
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/settings/nfc/NfcEnabler;->getPackageLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 463
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isAllEnabled()Z

    move-result v1

    if-ne p2, v1, :cond_1

    .line 465
    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_0

    .line 466
    const-string v1, "NfcEnabler"

    const-string v2, "NFC switch state changed, but is not triggered by user action"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_2

    .line 470
    const-string v1, "NfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_2
    if-eqz p2, :cond_3

    .line 472
    invoke-direct {p0, v4, v5}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 473
    invoke-direct {p0, v4, v5}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 474
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 475
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 477
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    goto :goto_0

    .line 480
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 481
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 482
    .local v0, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0912bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 483
    const v1, 0x7f0912bd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 484
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/nfc/NfcEnabler$5;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/NfcEnabler$5;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 490
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/nfc/NfcEnabler$6;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/NfcEnabler$6;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 496
    new-instance v1, Lcom/android/settings/nfc/NfcEnabler$7;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/NfcEnabler$7;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 501
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 503
    .end local v0    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_4
    invoke-direct {p0, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 504
    invoke-direct {p0, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 505
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 339
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 340
    .local v0, "desiredState":Z
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_0

    .line 341
    const-string v5, "NfcEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceChange : desired state > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 343
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_2

    .line 344
    const-string v3, "NfcEnabler"

    const-string v5, "Nfc switch is already in desired state"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 459
    :cond_1
    :goto_0
    return v3

    .line 348
    :cond_2
    if-eqz v0, :cond_4

    .line 349
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 350
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 351
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 352
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_3
    :goto_1
    move v3, v4

    .line 358
    goto :goto_0

    .line 355
    :cond_4
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_1

    .line 360
    :cond_5
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 361
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_6

    .line 362
    const-string v3, "NfcEnabler"

    const-string v5, "RW/P2P switch is already in desired state"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 363
    goto :goto_0

    .line 366
    :cond_6
    if-eqz v0, :cond_8

    .line 367
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 368
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 369
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_7
    :goto_2
    move v3, v4

    .line 375
    goto :goto_0

    .line 372
    :cond_8
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    goto :goto_2

    .line 377
    :cond_9
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 378
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v5

    if-ne v5, v0, :cond_a

    .line 379
    const-string v3, "NfcEnabler"

    const-string v5, "Android Beam switch is already in desired state"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 380
    goto :goto_0

    .line 383
    :cond_a
    if-eqz v0, :cond_c

    .line 384
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 385
    invoke-direct {p0, v4, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 387
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 388
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_b

    .line 389
    invoke-direct {p0, v4, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSBeamSwitch(ZZ)V

    :cond_b
    :goto_3
    move v3, v4

    .line 444
    goto/16 :goto_0

    .line 394
    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 395
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 396
    .local v2, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0912bc

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 397
    const v3, 0x7f0912be

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 398
    const v3, 0x104000a

    new-instance v5, Lcom/android/settings/nfc/NfcEnabler$2;

    invoke-direct {v5, p0}, Lcom/android/settings/nfc/NfcEnabler$2;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 412
    const/high16 v3, 0x1040000

    new-instance v5, Lcom/android/settings/nfc/NfcEnabler$3;

    invoke-direct {v5, p0}, Lcom/android/settings/nfc/NfcEnabler$3;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 425
    new-instance v3, Lcom/android/settings/nfc/NfcEnabler$4;

    invoke-direct {v3, p0}, Lcom/android/settings/nfc/NfcEnabler$4;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 430
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 432
    .end local v2    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_d
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 433
    invoke-direct {p0, v4, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 435
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 436
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_b

    .line 437
    invoke-direct {p0, v4, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSBeamSwitch(ZZ)V

    goto :goto_3

    .line 446
    :cond_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 447
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 448
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_f

    .line 449
    const-string v3, "NfcEnabler"

    const-string v5, "NFC_Lock_switch call FeliCaLock:S"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 451
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "com.samsung.felicalock"

    const-string v5, "com.samsung.felicalock.FelicaLockActivity"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .end local v1    # "i":Landroid/content/Intent;
    :cond_f
    move v3, v4

    .line 454
    goto/16 :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 299
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPolicyEnabled:Z

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 304
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPolicyEnabled:Z

    if-eqz v0, :cond_3

    .line 305
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_4

    .line 310
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 313
    :cond_4
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_5

    .line 314
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 317
    :cond_5
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_6

    .line 318
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 321
    :cond_6
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_7

    .line 322
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 325
    :cond_7
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_8

    .line 326
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnPause()V

    .line 329
    :cond_8
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 231
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 234
    :cond_0
    const-string v0, "NfcEnabler"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 239
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 240
    invoke-direct {p0, v3, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 241
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setReaderSwitch(ZZ)V

    .line 242
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcPaymentPref(ZZ)V

    .line 243
    iput-boolean v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mPolicyEnabled:Z

    goto :goto_0

    .line 246
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPolicyEnabled:Z

    .line 253
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    .line 255
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnResume()V

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_4

    .line 263
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 266
    :cond_4
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_5

    .line 267
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 270
    :cond_5
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_6

    .line 271
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 274
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 275
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_7

    .line 276
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 281
    :cond_7
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    .line 282
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 284
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isAndroidBeamAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 285
    invoke-direct {p0, v3, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 289
    :cond_8
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcEnabler;->forceGrayOut(I)V

    goto/16 :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 511
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_0

    .line 512
    const-string v0, "NfcEnabler"

    const-string v1, "setSwitch !"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_2

    .line 520
    :cond_1
    :goto_0
    return-void

    .line 515
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 516
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    .line 517
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 518
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    goto :goto_0
.end method
