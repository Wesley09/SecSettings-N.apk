.class public Lcom/android/settings/NetworkManagement;
.super Landroid/preference/PreferenceActivity;
.source "NetworkManagement.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final RAW_HOOK_OEM_CMD_BPM_DISABLE:[B

.field private static final RAW_HOOK_OEM_CMD_BPM_ENABLE:[B


# instance fields
.field private SimState:Ljava/lang/String;

.field private SimState2:Ljava/lang/String;

.field private currentPhoneState1:I

.field private currentPhoneState2:I

.field private dataNetworkState:Z

.field editor:Landroid/content/SharedPreferences$Editor;

.field private filter:Landroid/content/IntentFilter;

.field isSim1Active:Z

.field isSim2Active:Z

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mButtonDSA:Landroid/preference/Preference;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataEnabledObserver:Landroid/database/ContentObserver;

.field private mDataServiceNetwork:Landroid/preference/ListPreference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mIsChangedImsi:Z

.field public mIsChecked:Z

.field public mIsReseted:Z

.field private mPagingMode:Landroid/preference/CheckBoxPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSimStatePreference:Lcom/android/settings/SimStatePreference;

.field private mVideoCall:Landroid/preference/ListPreference;

.field private mVoiceCall:Landroid/preference/ListPreference;

.field private multiSimSlot1:Lcom/android/settings/MultiSimCardManagerPreference;

.field private multiSimSlot2:Lcom/android/settings/MultiSimCardManagerPreference;

.field private pagingState:Z

.field pref:Landroid/content/SharedPreferences;

.field private tm1:Landroid/telephony/TelephonyManager;

.field private tm2:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 117
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/NetworkManagement;->RAW_HOOK_OEM_CMD_BPM_DISABLE:[B

    .line 118
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/NetworkManagement;->RAW_HOOK_OEM_CMD_BPM_ENABLE:[B

    return-void

    .line 117
    :array_0
    .array-data 1
        0x42t
        0x52t
        0x43t
        0x4dt
        0x3t
        0x0t
    .end array-data

    .line 118
    nop

    :array_1
    .array-data 1
        0x42t
        0x52t
        0x43t
        0x4dt
        0x3t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 123
    iput-boolean v0, p0, Lcom/android/settings/NetworkManagement;->isSim1Active:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/settings/NetworkManagement;->isSim2Active:Z

    .line 125
    iput-object v1, p0, Lcom/android/settings/NetworkManagement;->pref:Landroid/content/SharedPreferences;

    .line 126
    iput-object v1, p0, Lcom/android/settings/NetworkManagement;->editor:Landroid/content/SharedPreferences$Editor;

    .line 134
    iput-object v1, p0, Lcom/android/settings/NetworkManagement;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    iput-boolean v0, p0, Lcom/android/settings/NetworkManagement;->mIsChecked:Z

    .line 138
    iput-boolean v0, p0, Lcom/android/settings/NetworkManagement;->mIsReseted:Z

    .line 141
    iput-boolean v0, p0, Lcom/android/settings/NetworkManagement;->mIsChangedImsi:Z

    .line 143
    new-instance v0, Lcom/android/settings/NetworkManagement$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/NetworkManagement$1;-><init>(Lcom/android/settings/NetworkManagement;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/NetworkManagement;->mDataEnabledObserver:Landroid/database/ContentObserver;

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NetworkManagement;->filter:Landroid/content/IntentFilter;

    .line 715
    new-instance v0, Lcom/android/settings/NetworkManagement$10;

    invoke-direct {v0, p0}, Lcom/android/settings/NetworkManagement$10;-><init>(Lcom/android/settings/NetworkManagement;)V

    iput-object v0, p0, Lcom/android/settings/NetworkManagement;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/NetworkManagement;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/NetworkManagement;->updateState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/NetworkManagement;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/NetworkManagement;->setInitDialog(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/NetworkManagement;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings/NetworkManagement;->dataNetworkState:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/NetworkManagement;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings/NetworkManagement;->pagingState:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/NetworkManagement;)Lcom/android/settings/SimStatePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/NetworkManagement;->mSimStatePreference:Lcom/android/settings/SimStatePreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/NetworkManagement;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/NetworkManagement;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/NetworkManagement;->setPreferenceEnableState(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/NetworkManagement;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/NetworkManagement;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;
    .param p1, "x1"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    return-object p1
.end method

.method static synthetic access$300()[B
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/settings/NetworkManagement;->RAW_HOOK_OEM_CMD_BPM_ENABLE:[B

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/NetworkManagement;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/NetworkManagement;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/NetworkManagement;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/NetworkManagement;->setInitDialogBPM(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/NetworkManagement;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/NetworkManagement;->checkDualSimMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/NetworkManagement;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;

    .prologue
    .line 76
    iget v0, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState1:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/NetworkManagement;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState1:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/NetworkManagement;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/NetworkManagement;->convertCallState(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/NetworkManagement;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;

    .prologue
    .line 76
    iget v0, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState2:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/NetworkManagement;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState2:I

    return p1
.end method

.method private addButtonLayout()V
    .locals 9

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020002

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 248
    .local v1, "content":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 249
    .local v4, "lv":Landroid/widget/ListView;
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 251
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 252
    .local v2, "ll":Landroid/widget/LinearLayout;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 254
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 257
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 258
    .local v5, "parent":Landroid/view/ViewGroup;
    if-eqz v5, :cond_0

    .line 259
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 261
    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 262
    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04006e

    invoke-virtual {v7, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 267
    .local v6, "v":Landroid/view/View;
    const v7, 0x7f0b0126

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 268
    .local v0, "b":Landroid/widget/Button;
    new-instance v7, Lcom/android/settings/NetworkManagement$2;

    invoke-direct {v7, p0}, Lcom/android/settings/NetworkManagement$2;-><init>(Lcom/android/settings/NetworkManagement;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    invoke-virtual {p0, v2}, Lcom/android/settings/NetworkManagement;->setContentView(Landroid/view/View;)V

    .line 274
    return-void
.end method

.method private checkDualSimMode(Landroid/content/Context;)Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 882
    .line 883
    const-string v4, "ril.ICC_TYPE"

    .line 884
    const-string v5, "ril.ICC_TYPE_1"

    .line 885
    const-string v6, "ril.MSIMM"

    .line 887
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "phone1_on"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 888
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "phone2_on"

    invoke-static {v3, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v3, v1

    .line 889
    :goto_1
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 890
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 891
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 893
    const-string v7, "NetworkManagement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PhoneOnMode1 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " PhoneOnMode2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " SimState_1 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " SimState_2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " SimMaster : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    :goto_2
    move v1, v2

    .line 930
    :goto_3
    return v1

    :cond_1
    move v0, v2

    .line 887
    goto :goto_0

    :cond_2
    move v3, v2

    .line 888
    goto :goto_1

    .line 900
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 902
    const-string v0, "0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 911
    :cond_4
    if-nez v0, :cond_0

    .line 914
    if-eqz v3, :cond_0

    .line 916
    const-string v0, "0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 240
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 241
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 243
    const v1, 0x7f02021d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 245
    :cond_0
    return-void
.end method

.method private convertCallState(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 850
    const-string v0, "IDLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    const/4 v0, 0x0

    .line 857
    :goto_0
    return v0

    .line 852
    :cond_0
    const-string v0, "RINGING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    const/4 v0, 0x1

    goto :goto_0

    .line 854
    :cond_1
    const-string v0, "OFFHOOK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 855
    const/4 v0, 0x2

    goto :goto_0

    .line 857
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private onHomeSelected()V
    .locals 0

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->finish()V

    .line 237
    return-void
.end method

.method private setInitDialog(Z)V
    .locals 3

    .prologue
    .line 864
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dsa_init_dialog_is_checked"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 865
    const-string v0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void

    .line 864
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setInitDialogBPM(Z)V
    .locals 3

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "paging_mode_dialog_is_checked"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 871
    const-string v0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    return-void

    .line 870
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPreferenceEnableState(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 801
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->multiSimSlot1:Lcom/android/settings/MultiSimCardManagerPreference;

    if-eqz v2, :cond_0

    .line 803
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->multiSimSlot1:Lcom/android/settings/MultiSimCardManagerPreference;

    invoke-virtual {v2, p1}, Lcom/android/settings/MultiSimCardManagerPreference;->setEnabled(Z)V

    .line 808
    :cond_0
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->multiSimSlot2:Lcom/android/settings/MultiSimCardManagerPreference;

    if-eqz v2, :cond_1

    .line 809
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->multiSimSlot2:Lcom/android/settings/MultiSimCardManagerPreference;

    invoke-virtual {v2, p1}, Lcom/android/settings/MultiSimCardManagerPreference;->setEnabled(Z)V

    .line 815
    :cond_1
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 816
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 818
    :cond_2
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    if-eqz v2, :cond_3

    .line 819
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v2, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 821
    :cond_3
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mVoiceCall:Landroid/preference/ListPreference;

    if-eqz v2, :cond_4

    .line 822
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mVoiceCall:Landroid/preference/ListPreference;

    invoke-virtual {v2, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 823
    :cond_4
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mVideoCall:Landroid/preference/ListPreference;

    if-eqz v2, :cond_5

    .line 824
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mVideoCall:Landroid/preference/ListPreference;

    invoke-virtual {v2, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 825
    :cond_5
    const/4 v0, 0x0

    .line 827
    .local v0, "enable":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 832
    :goto_0
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mButtonDSA:Landroid/preference/Preference;

    if-eqz v2, :cond_7

    .line 833
    invoke-direct {p0, p0}, Lcom/android/settings/NetworkManagement;->checkDualSimMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    .line 834
    :cond_6
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mButtonDSA:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 840
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->SimState:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->SimState2:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 841
    :cond_8
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 842
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mVoiceCall:Landroid/preference/ListPreference;

    if-eqz v2, :cond_9

    .line 843
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mVoiceCall:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 844
    :cond_9
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mVideoCall:Landroid/preference/ListPreference;

    if-eqz v2, :cond_a

    .line 845
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mVideoCall:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 847
    :cond_a
    return-void

    .line 828
    :catch_0
    move-exception v1

    .line 829
    .local v1, "se":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 837
    .end local v1    # "se":Landroid/provider/Settings$SettingNotFoundException;
    :cond_b
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mButtonDSA:Landroid/preference/Preference;

    invoke-virtual {v2, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateState()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 418
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const-string v3, "persist.sys.dataprefer.simid"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "dataPrefered":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 421
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 422
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_name_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, "summary":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 431
    .end local v2    # "summary":Ljava/lang/String;
    :goto_1
    const-string v3, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Back ground paging mode property = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "persist.sys.bpmsetting.enable"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v3, "persist.sys.bpmsetting.enable"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 435
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 436
    const-string v3, "NetworkManagement"

    const-string v4, "setChecked false"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_2
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->mVoiceCall:Landroid/preference/ListPreference;

    check-cast v3, Lcom/android/settings/SimListPreference;

    invoke-virtual {v3}, Lcom/android/settings/SimListPreference;->loadSetValue()V

    .line 446
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->mVideoCall:Landroid/preference/ListPreference;

    check-cast v3, Lcom/android/settings/SimListPreference;

    invoke-virtual {v3}, Lcom/android/settings/SimListPreference;->loadSetValue()V

    .line 448
    const-string v3, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default List DataServiceNetwork = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_name_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 427
    :cond_1
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 428
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    const v4, 0x7f0912af

    invoke-virtual {p0, v4}, Lcom/android/settings/NetworkManagement;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 440
    :cond_2
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 441
    const-string v3, "NetworkManagement"

    const-string v4, "setChecked True"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public ChangeSimStateSendIntent(ZZ)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 696
    const-string v0, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMasterSIM = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Activate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 698
    const-string v0, "android.com.contact.simactivechanged"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    const-string v4, "simcard_sim_id"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 702
    const-string v0, "simcard_sim_activate"

    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 704
    const-string v0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display for Broadcating Intent ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 699
    goto :goto_0

    :cond_1
    move v2, v1

    .line 702
    goto :goto_1

    .line 708
    :catch_0
    move-exception v0

    .line 709
    const-string v1, "NetworkManagement"

    const-string v2, "not found ACTION_SIM_MGT_CHANGED"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 157
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->filter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->filter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->filter:Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.DATA_CONNECTION_CHANGE_SUCCESS"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->filter:Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.DATA_CONNECTION_CHANGE_FAIL"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->filter:Landroid/content/IntentFilter;

    const-string v3, "com.android.settings.dsasimpowerchange"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    invoke-static {v5}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/NetworkManagement;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 168
    const-string v2, "ril.ICC_TYPE"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/NetworkManagement;->SimState:Ljava/lang/String;

    .line 169
    const-string v2, "ril.ICC_TYPE_1"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/NetworkManagement;->SimState2:Ljava/lang/String;

    .line 172
    const-string v2, "Smart dual SIM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_ReplaceLabel4DualSim"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 173
    const v2, 0x7f07005f

    invoke-virtual {p0, v2}, Lcom/android/settings/NetworkManagement;->addPreferencesFromResource(I)V

    .line 177
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 179
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 181
    const-string v2, "state_preference"

    invoke-virtual {p0, v2}, Lcom/android/settings/NetworkManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SimStatePreference;

    iput-object v2, p0, Lcom/android/settings/NetworkManagement;->mSimStatePreference:Lcom/android/settings/SimStatePreference;

    .line 182
    const-string v2, "data_service_network"

    invoke-virtual {p0, v2}, Lcom/android/settings/NetworkManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    .line 183
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    const-string v2, "paging_mode"

    invoke-virtual {p0, v2}, Lcom/android/settings/NetworkManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    .line 185
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 187
    const-string v2, "sim1"

    invoke-virtual {p0, v2}, Lcom/android/settings/NetworkManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/MultiSimCardManagerPreference;

    iput-object v2, p0, Lcom/android/settings/NetworkManagement;->multiSimSlot1:Lcom/android/settings/MultiSimCardManagerPreference;

    .line 188
    const-string v2, "sim2"

    invoke-virtual {p0, v2}, Lcom/android/settings/NetworkManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/MultiSimCardManagerPreference;

    iput-object v2, p0, Lcom/android/settings/NetworkManagement;->multiSimSlot2:Lcom/android/settings/MultiSimCardManagerPreference;

    .line 191
    const-string v2, "voice_call"

    invoke-virtual {p0, v2}, Lcom/android/settings/NetworkManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/NetworkManagement;->mVoiceCall:Landroid/preference/ListPreference;

    .line 192
    const-string v2, "video_call"

    invoke-virtual {p0, v2}, Lcom/android/settings/NetworkManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/NetworkManagement;->mVideoCall:Landroid/preference/ListPreference;

    .line 198
    const-string v2, "button_dsa_key"

    invoke-virtual {p0, v2}, Lcom/android/settings/NetworkManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/NetworkManagement;->mButtonDSA:Landroid/preference/Preference;

    .line 199
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->SimState:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->SimState2:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mButtonDSA:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "extra_changed_imsi"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/NetworkManagement;->mIsChangedImsi:Z

    .line 206
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->SimState:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->SimState2:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 210
    :cond_2
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->SimState:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->SimState2:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 211
    :cond_3
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 213
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mVoiceCall:Landroid/preference/ListPreference;

    if-eqz v2, :cond_4

    .line 214
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mVoiceCall:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 215
    :cond_4
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mVideoCall:Landroid/preference/ListPreference;

    if-eqz v2, :cond_5

    .line 216
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mVideoCall:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 219
    :cond_5
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->isEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/NetworkManagement;->dataNetworkState:Z

    .line 220
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/NetworkManagement;->pagingState:Z

    .line 222
    iput-object v1, p0, Lcom/android/settings/NetworkManagement;->mContentResolver:Landroid/content/ContentResolver;

    .line 224
    const-string v2, "com.android.settings.networkmanagement"

    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 225
    invoke-direct {p0}, Lcom/android/settings/NetworkManagement;->addButtonLayout()V

    .line 227
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/NetworkManagement;->updateState()V

    .line 229
    invoke-direct {p0}, Lcom/android/settings/NetworkManagement;->configureActionBar()V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->onResume()V

    .line 232
    return-void

    .line 175
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_7
    const v2, 0x7f07005e

    invoke-virtual {p0, v2}, Lcom/android/settings/NetworkManagement;->addPreferencesFromResource(I)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const v3, 0x7f0906b3

    .line 611
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getListView()Landroid/widget/ListView;

    const v0, 0x7f040019

    invoke-static {p0, v0, v1}, Landroid/widget/ListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 615
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 679
    :goto_0
    return-object v0

    .line 619
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f091168

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09118b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/NetworkManagement$8;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/NetworkManagement$8;-><init>(Lcom/android/settings/NetworkManagement;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0906b4

    new-instance v2, Lcom/android/settings/NetworkManagement$7;

    invoke-direct {v2, p0}, Lcom/android/settings/NetworkManagement$7;-><init>(Lcom/android/settings/NetworkManagement;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 666
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09117d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f091171

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/NetworkManagement$9;

    invoke-direct {v1, p0}, Lcom/android/settings/NetworkManagement$9;-><init>(Lcom/android/settings/NetworkManagement;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 615
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 588
    const v0, 0x7f091178

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02019a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 589
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/settings/NetworkManagement;->mSimStatePreference:Lcom/android/settings/SimStatePreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/NetworkManagement;->mSimStatePreference:Lcom/android/settings/SimStatePreference;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/SimStatePreference;->doKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    const/4 v0, 0x1

    .line 686
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 593
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 604
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 595
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 596
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.DualHelpActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    invoke-virtual {p0, v1}, Lcom/android/settings/NetworkManagement;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 601
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/NetworkManagement;->onHomeSelected()V

    goto :goto_0

    .line 593
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 370
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 371
    iget-object v4, p0, Lcom/android/settings/NetworkManagement;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/android/settings/NetworkManagement;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 372
    iget-object v4, p0, Lcom/android/settings/NetworkManagement;->mSimStatePreference:Lcom/android/settings/SimStatePreference;

    if-eqz v4, :cond_0

    .line 373
    iget-object v4, p0, Lcom/android/settings/NetworkManagement;->mSimStatePreference:Lcom/android/settings/SimStatePreference;

    invoke-virtual {v4}, Lcom/android/settings/SimStatePreference;->doPause()V

    .line 375
    :cond_0
    iget-object v4, p0, Lcom/android/settings/NetworkManagement;->multiSimSlot1:Lcom/android/settings/MultiSimCardManagerPreference;

    invoke-virtual {v4}, Lcom/android/settings/MultiSimCardManagerPreference;->pause()V

    .line 376
    iget-object v4, p0, Lcom/android/settings/NetworkManagement;->multiSimSlot2:Lcom/android/settings/MultiSimCardManagerPreference;

    invoke-virtual {v4}, Lcom/android/settings/MultiSimCardManagerPreference;->pause()V

    .line 378
    iget-object v4, p0, Lcom/android/settings/NetworkManagement;->pref:Landroid/content/SharedPreferences;

    const-string v5, "sim_1_active_change"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/NetworkManagement;->isSim1Active:Z

    .line 379
    iget-object v4, p0, Lcom/android/settings/NetworkManagement;->pref:Landroid/content/SharedPreferences;

    const-string v5, "sim_2_active_change"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/NetworkManagement;->isSim2Active:Z

    .line 381
    const-string v4, "NetworkManagement"

    const-string v5, "onPause "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPause isSim1Active = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/NetworkManagement;->isSim1Active:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPause isSim2Active = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/NetworkManagement;->isSim2Active:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone1_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    move v0, v2

    .line 387
    .local v0, "sim_1_active":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone2_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v1, v2

    .line 390
    .local v1, "sim_2_active":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/NetworkManagement;->isSim1Active:Z

    if-eqz v4, :cond_1

    .line 393
    const-string v4, "NetworkManagement"

    const-string v5, "onPause SIM 1 changing sim active state"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/NetworkManagement;->ChangeSimStateSendIntent(ZZ)V

    .line 399
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/NetworkManagement;->isSim2Active:Z

    if-eqz v2, :cond_2

    .line 402
    const-string v2, "NetworkManagement"

    const-string v4, "onPause SIM2 changing sim active state"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {p0, v3, v1}, Lcom/android/settings/NetworkManagement;->ChangeSimStateSendIntent(ZZ)V

    .line 408
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 409
    return-void

    .end local v0    # "sim_1_active":Z
    .end local v1    # "sim_2_active":Z
    :cond_3
    move v0, v3

    .line 385
    goto :goto_0

    .restart local v0    # "sim_1_active":Z
    :cond_4
    move v1, v3

    .line 387
    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 458
    iget-object v8, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v8, :cond_5

    iget-object v8, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-nez v8, :cond_5

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "paging_mode_dialog_is_checked"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    const/4 v4, 0x1

    .line 463
    .local v4, "mBpmIsChecked":Z
    :goto_0
    const-string v8, "NetworkManagement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BPM is checked button = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    if-eqz v4, :cond_3

    .line 467
    iget-object v8, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "paging_mode"

    iget-object v8, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 472
    iget-object v8, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v6, 0x1

    .line 473
    .local v6, "pagingMode":I
    :goto_2
    const-string v8, "persist.sys.bpmsetting.enable"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v8, p0, Lcom/android/settings/NetworkManagement;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v9, Lcom/android/settings/NetworkManagement;->RAW_HOOK_OEM_CMD_BPM_ENABLE:[B

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 477
    const/4 v8, 0x1

    .line 582
    .end local v4    # "mBpmIsChecked":Z
    .end local v6    # "pagingMode":I
    :goto_3
    return v8

    .line 460
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 468
    .restart local v4    # "mBpmIsChecked":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 472
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 480
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/settings/NetworkManagement;->showDialog(I)V

    .line 582
    .end local v4    # "mBpmIsChecked":Z
    :cond_4
    :goto_4
    const/4 v8, 0x0

    goto :goto_3

    .line 482
    :cond_5
    iget-object v8, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v8, :cond_7

    iget-object v8, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 483
    iget-object v8, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 484
    iget-object v8, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v6, 0x1

    .line 485
    .restart local v6    # "pagingMode":I
    :goto_5
    const-string v8, "persist.sys.bpmsetting.enable"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v8, "NetworkManagement"

    const-string v9, "Receive BPM_Enable Un-CheckEvent"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v8, p0, Lcom/android/settings/NetworkManagement;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v9, Lcom/android/settings/NetworkManagement;->RAW_HOOK_OEM_CMD_BPM_DISABLE:[B

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_4

    .line 484
    .end local v6    # "pagingMode":I
    :cond_6
    const/4 v6, 0x0

    goto :goto_5

    .line 493
    :cond_7
    iget-object v8, p0, Lcom/android/settings/NetworkManagement;->mButtonDSA:Landroid/preference/Preference;

    if-ne p2, v8, :cond_4

    .line 494
    iget-boolean v8, p0, Lcom/android/settings/NetworkManagement;->mIsChecked:Z

    if-eqz v8, :cond_9

    .line 496
    const-string v8, "NetworkManagement"

    const-string v9, "DSA_INIT_IS_CHECKED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 499
    .local v5, "myIntent":Landroid/content/Intent;
    const-string v8, "com.android.phone"

    const-string v9, "com.android.phone.DsaMainParser"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 501
    iget-boolean v8, p0, Lcom/android/settings/NetworkManagement;->mIsReseted:Z

    if-eqz v8, :cond_8

    .line 503
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings/NetworkManagement;->mIsChangedImsi:Z

    .line 504
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dsa_reset"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 505
    const-string v8, "extra_changed_imsi"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 507
    :cond_8
    invoke-virtual {p0, v5}, Lcom/android/settings/NetworkManagement;->startActivity(Landroid/content/Intent;)V

    .line 509
    const/4 v8, 0x0

    goto :goto_3

    .line 512
    .end local v5    # "myIntent":Landroid/content/Intent;
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getListView()Landroid/widget/ListView;

    const v8, 0x7f040076

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/ListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 514
    .local v3, "linear":Landroid/view/View;
    const v8, 0x7f091190

    invoke-virtual {p0, v8}, Lcom/android/settings/NetworkManagement;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, "initDialogInform":Ljava/lang/String;
    const-string v8, "Smart dual SIM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_ReplaceLabel4DualSim"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 516
    const v8, 0x7f091191

    invoke-virtual {p0, v8}, Lcom/android/settings/NetworkManagement;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 517
    :cond_a
    const v8, 0x7f0b0133

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 518
    .local v7, "successTextView":Landroid/widget/TextView;
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    const v8, 0x7f0b004b

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 521
    .local v1, "doNotShowSound":Landroid/widget/CheckBox;
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    .line 523
    new-instance v8, Lcom/android/settings/NetworkManagement$3;

    invoke-direct {v8, p0, v1}, Lcom/android/settings/NetworkManagement$3;-><init>(Lcom/android/settings/NetworkManagement;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    const v8, 0x7f091193

    invoke-virtual {p0, v8}, Lcom/android/settings/NetworkManagement;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "dialogTitle":Ljava/lang/String;
    const-string v8, "Smart dual SIM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_ReplaceLabel4DualSim"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 540
    const v8, 0x7f091194

    invoke-virtual {p0, v8}, Lcom/android/settings/NetworkManagement;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 541
    :cond_b
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0906b3

    invoke-virtual {p0, v9}, Lcom/android/settings/NetworkManagement;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/settings/NetworkManagement$6;

    invoke-direct {v10, p0, v3}, Lcom/android/settings/NetworkManagement$6;-><init>(Lcom/android/settings/NetworkManagement;Landroid/view/View;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f090143

    invoke-virtual {p0, v9}, Lcom/android/settings/NetworkManagement;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/settings/NetworkManagement$5;

    invoke-direct {v10, p0}, Lcom/android/settings/NetworkManagement$5;-><init>(Lcom/android/settings/NetworkManagement;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/settings/NetworkManagement$4;

    invoke-direct {v9, p0}, Lcom/android/settings/NetworkManagement$4;-><init>(Lcom/android/settings/NetworkManagement;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 579
    const/4 v8, 0x1

    goto/16 :goto_3
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 278
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 281
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/settings/NetworkManagement;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v6, v7, v7}, Lcom/android/settings/NetworkManagement;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "mobile_data"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/NetworkManagement;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 287
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/settings/NetworkManagement;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/settings/NetworkManagement;->tm1:Landroid/telephony/TelephonyManager;

    .line 288
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->tm1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    iput v3, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState1:I

    .line 290
    const-string v3, "phone"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/NetworkManagement;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/settings/NetworkManagement;->tm2:Landroid/telephony/TelephonyManager;

    .line 291
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->tm2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    iput v3, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState2:I

    .line 292
    const-string v3, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentPhoneState1 ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", currentPhoneState2 ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->mSimStatePreference:Lcom/android/settings/SimStatePreference;

    if-eqz v3, :cond_0

    .line 297
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->mSimStatePreference:Lcom/android/settings/SimStatePreference;

    invoke-virtual {v3}, Lcom/android/settings/SimStatePreference;->doResume()V

    .line 299
    :cond_0
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->multiSimSlot1:Lcom/android/settings/MultiSimCardManagerPreference;

    invoke-virtual {v3}, Lcom/android/settings/MultiSimCardManagerPreference;->resume()V

    .line 300
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->multiSimSlot2:Lcom/android/settings/MultiSimCardManagerPreference;

    invoke-virtual {v3}, Lcom/android/settings/MultiSimCardManagerPreference;->resume()V

    .line 302
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    check-cast v3, Lcom/android/settings/SimListPreference;

    iget-object v6, p0, Lcom/android/settings/NetworkManagement;->multiSimSlot1:Lcom/android/settings/MultiSimCardManagerPreference;

    invoke-virtual {v6, v5}, Lcom/android/settings/MultiSimCardManagerPreference;->getPhonePLMNName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Lcom/android/settings/SimListPreference;->setPLMNName(Ljava/lang/String;I)V

    .line 303
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    check-cast v3, Lcom/android/settings/SimListPreference;

    iget-object v6, p0, Lcom/android/settings/NetworkManagement;->multiSimSlot2:Lcom/android/settings/MultiSimCardManagerPreference;

    invoke-virtual {v6, v4}, Lcom/android/settings/MultiSimCardManagerPreference;->getPhonePLMNName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Lcom/android/settings/SimListPreference;->setPLMNName(Ljava/lang/String;I)V

    .line 305
    invoke-direct {p0}, Lcom/android/settings/NetworkManagement;->updateState()V

    .line 310
    const/4 v1, 0x0

    .line 312
    .local v1, "enable":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "airplane_mode_on"

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 317
    :goto_0
    invoke-direct {p0, p0}, Lcom/android/settings/NetworkManagement;->checkDualSimMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v1, v4, :cond_9

    .line 319
    :cond_1
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->mButtonDSA:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 326
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/NetworkManagement;->dataNetworkState:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/NetworkManagement;->pagingState:Z

    if-eqz v3, :cond_6

    .line 328
    :cond_2
    if-eq v1, v4, :cond_3

    iget v3, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState1:I

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState1:I

    if-eq v3, v8, :cond_3

    iget v3, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState2:I

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState2:I

    if-ne v3, v8, :cond_a

    .line 330
    :cond_3
    const/4 v0, 0x0

    .line 334
    .local v0, "bool":Z
    :goto_2
    const-string v3, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " OnResume the Call State "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->mSimStatePreference:Lcom/android/settings/SimStatePreference;

    if-eqz v3, :cond_4

    .line 336
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->mSimStatePreference:Lcom/android/settings/SimStatePreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/SimStatePreference;->stateEnable(Z)V

    .line 337
    :cond_4
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    if-eqz v3, :cond_5

    .line 338
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 340
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/settings/NetworkManagement;->setPreferenceEnableState(Z)V

    .line 345
    .end local v0    # "bool":Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "sim_pref"

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/NetworkManagement;->pref:Landroid/content/SharedPreferences;

    .line 346
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/NetworkManagement;->editor:Landroid/content/SharedPreferences$Editor;

    .line 347
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "sim_1_active_change"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 348
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "sim_2_active_change"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 349
    const-string v3, "NetworkManagement"

    const-string v6, "simDeactivate : setSharedPref SIM 1 & 2 change false"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 353
    iget-boolean v3, p0, Lcom/android/settings/NetworkManagement;->mIsChangedImsi:Z

    if-eqz v3, :cond_7

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "dsa_init_dialog_is_checked"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "dsa_reset"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "dsa_init_dialog_is_checked"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_b

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/settings/NetworkManagement;->mIsChecked:Z

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "dsa_reset"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_8

    move v5, v4

    :cond_8
    iput-boolean v5, p0, Lcom/android/settings/NetworkManagement;->mIsReseted:Z

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "dsa_check_started_networkmanagement"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 368
    return-void

    .line 313
    :catch_0
    move-exception v2

    .line 314
    .local v2, "se":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 323
    .end local v2    # "se":Landroid/provider/Settings$SettingNotFoundException;
    :cond_9
    iget-object v3, p0, Lcom/android/settings/NetworkManagement;->mButtonDSA:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 332
    :cond_a
    const/4 v0, 0x1

    .restart local v0    # "bool":Z
    goto/16 :goto_2

    .end local v0    # "bool":Z
    :cond_b
    move v3, v5

    .line 359
    goto :goto_3
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 413
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 414
    return-void
.end method
