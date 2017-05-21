.class public Lcom/android/settings/SettingsTabActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsTabActivity.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsTabActivity$HeaderAdapter;,
        Lcom/android/settings/SettingsTabActivity$SettingsTabListener;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mIsFromSearch:Z

.field private static mSearchHeaderID:J

.field private static mSearchSettingValue:I

.field private static mWifiSummaryId:I

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private final MHS_REQUEST:I

.field private SETTINGS_FOR_RESTRICTED:[I

.field filter:Landroid/content/IntentFilter;

.field mAccountTabView:Landroid/view/View;

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field mConnectionTabView:Landroid/view/View;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field mDeviceTabView:Landroid/view/View;

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListeningToAccountUpdates:Z

.field mMoreTabView:Landroid/view/View;

.field private mOpenSearchHierarchy:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchDepthCounter:I

.field private mSearchFragmentBundle:Landroid/os/Bundle;

.field private mSecondSearchFragmentBundle:Landroid/os/Bundle;

.field private mTetheredData:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 198
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    .line 206
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    .line 208
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J

    .line 209
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/SettingsTabActivity;->mSearchSettingValue:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 157
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->SETTINGS_FOR_RESTRICTED:[I

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->filter:Landroid/content/IntentFilter;

    .line 195
    iput v1, p0, Lcom/android/settings/SettingsTabActivity;->MHS_REQUEST:I

    .line 196
    iput v1, p0, Lcom/android/settings/SettingsTabActivity;->mTetheredData:I

    .line 207
    iput-boolean v1, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    .line 210
    iput-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 211
    iput-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 212
    iput v1, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    .line 1677
    new-instance v0, Lcom/android/settings/SettingsTabActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsTabActivity$3;-><init>(Lcom/android/settings/SettingsTabActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 157
    :array_0
    .array-data 4
        0x7f0b0583
        0x7f0b0584
        0x7f0b0586
        0x7f0b0588
        0x7f0b058d
        0x7f0b05d5
        0x7f0b059a
        0x7f0b0598
        0x7f0b05bd
        0x7f0b05ba
        0x7f0b05bb
        0x7f0b05d9
        0x7f0b05b7
        0x7f0b05b8
        0x7f0b05aa
        0x7f0b05d7
        0x7f0b057c
        0x7f0b057e
        0x7f0b05dd
        0x7f0b05be
        0x7f0b05c2
        0x7f0b05a6
    .end array-data
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/android/settings/SettingsTabActivity;->sSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 143
    sget v0, Lcom/android/settings/SettingsTabActivity;->mWifiSummaryId:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 143
    sput p0, Lcom/android/settings/SettingsTabActivity;->mWifiSummaryId:I

    return p0
.end method

.method public static callSearchMenu()V
    .locals 3

    .prologue
    .line 1711
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1712
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/search/SearchMain;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1713
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1714
    sget-object v1, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1716
    :cond_0
    return-void
.end method

.method private getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 6
    .param p1, "mHeader"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 908
    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 909
    .local v2, "voice_control_intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 910
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 911
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 912
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 916
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const v12, 0x7f0908b2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 947
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v5

    .line 948
    new-instance v6, Ljava/util/ArrayList;

    array-length v0, v5

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 949
    array-length v7, v5

    move v4, v2

    :goto_0
    if-ge v4, v7, :cond_5

    aget-object v8, v5, v4

    .line 950
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v8}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 953
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v9, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v3, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 954
    const-string v3, "com.android.tmo_myphonebook"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 955
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 960
    :goto_1
    if-nez v3, :cond_0

    .line 949
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 964
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 965
    array-length v0, v9

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, v8}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 979
    :goto_3
    new-instance v10, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 980
    iput-object v3, v10, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 981
    iget-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v11, :cond_1

    .line 982
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 984
    :cond_1
    if-eqz v0, :cond_4

    .line 985
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 986
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 987
    const-class v0, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 988
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 990
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v3, "account_type"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v3, "account"

    aget-object v8, v9, v2

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 992
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v3, "account"

    aget-object v8, v9, v2

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1007
    :cond_2
    :goto_4
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move v0, v2

    .line 965
    goto :goto_3

    .line 995
    :cond_4
    iput-object v3, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 996
    iput-object v3, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 997
    const-class v0, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 998
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 999
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->isMultiPane()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1003
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v8, "account_label"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1011
    :cond_5
    new-instance v0, Lcom/android/settings/SettingsTabActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsTabActivity$2;-><init>(Lcom/android/settings/SettingsTabActivity;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1018
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1019
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p2, v2

    goto :goto_5

    .line 1021
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/SettingsTabActivity;->mListeningToAccountUpdates:Z

    if-nez v0, :cond_7

    .line 1022
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 1023
    iput-boolean v1, p0, Lcom/android/settings/SettingsTabActivity;->mListeningToAccountUpdates:Z

    .line 1025
    :cond_7
    return p2

    :cond_8
    move-object v3, v0

    goto/16 :goto_1
.end method

.method private isDocomoSettingsDisabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 929
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 931
    if-eqz v1, :cond_1

    .line 932
    :try_start_0
    const-string v2, "com.nttdocomo.android.docomoset"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 934
    const-string v2, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const-string v2, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 943
    :cond_0
    :goto_0
    return v0

    .line 940
    :catch_0
    move-exception v0

    .line 943
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoiceControlEnabled()Z
    .locals 2

    .prologue
    .line 920
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    .line 921
    .local v0, "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v1, :cond_0

    .line 922
    const/4 v1, 0x1

    .line 924
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 1029
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 563
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v5, "eng"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 568
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    move v1, v2

    .line 569
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3b

    .line 570
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 572
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v6, v6

    .line 573
    const v3, 0x7f0b05a5

    if-ne v6, v3, :cond_3

    .line 574
    invoke-direct {p0}, Lcom/android/settings/SettingsTabActivity;->needsDockSettings()Z

    move-result v3

    if-nez v3, :cond_0

    .line 575
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 886
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/SettingsTabActivity;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v3, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 890
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 894
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3c

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3c

    .line 897
    iget-object v3, p0, Lcom/android/settings/SettingsTabActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v3, :cond_2

    invoke-static {v0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 899
    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 901
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_2
    move v1, v0

    .line 904
    goto :goto_0

    .line 576
    :cond_3
    const v3, 0x7f0b05d1

    if-eq v6, v3, :cond_4

    const v3, 0x7f0b05d8

    if-ne v6, v3, :cond_5

    .line 577
    :cond_4
    invoke-static {p0, p1, v0}, Lcom/android/settings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto :goto_1

    .line 578
    :cond_5
    const v3, 0x7f0b0584

    if-ne v6, v3, :cond_6

    .line 580
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "android.hardware.wifi"

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 581
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 583
    :cond_6
    const v3, 0x7f0b0585

    if-ne v6, v3, :cond_7

    .line 597
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 599
    :cond_7
    const v3, 0x7f0b0586

    if-ne v6, v3, :cond_8

    .line 601
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "android.hardware.bluetooth"

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 602
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 604
    :cond_8
    const v3, 0x7f0b0588

    if-ne v6, v3, :cond_9

    .line 606
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    .line 609
    :try_start_0
    invoke-interface {v3}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 610
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 612
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 615
    :cond_9
    const v3, 0x7f0b058a

    if-ne v6, v3, :cond_b

    .line 617
    const-string v3, "LGT"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 619
    :cond_a
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 621
    :cond_b
    const v3, 0x7f0b058b

    if-ne v6, v3, :cond_d

    .line 623
    const-string v3, "SKT"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 625
    :cond_c
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 627
    :cond_d
    const v3, 0x7f0b058c

    if-ne v6, v3, :cond_e

    .line 628
    const-string v3, "CTC"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 629
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 631
    :cond_e
    const v3, 0x7f0b05ac

    if-ne v6, v3, :cond_f

    .line 633
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 635
    :cond_f
    const v3, 0x7f0b05ad

    if-ne v6, v3, :cond_10

    .line 640
    const-string v3, "com.android.settings.motion2013.MotionSettings"

    iput-object v3, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_1

    .line 642
    :cond_10
    const v3, 0x7f0b05af

    if-ne v6, v3, :cond_11

    .line 644
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 646
    :cond_11
    const v3, 0x7f0b05b0

    if-ne v6, v3, :cond_12

    .line 648
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 650
    :cond_12
    const v3, 0x7f0b05ae

    if-eq v6, v3, :cond_0

    .line 655
    const v3, 0x7f0b0599

    if-ne v6, v3, :cond_13

    .line 657
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 659
    :cond_13
    const v3, 0x7f0b059b

    if-eq v6, v3, :cond_0

    .line 663
    const v3, 0x7f0b05a4

    if-ne v6, v3, :cond_14

    .line 665
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 667
    :cond_14
    const v3, 0x7f0b05bc

    if-ne v6, v3, :cond_15

    .line 669
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 671
    :cond_15
    const v3, 0x7f0b057d

    if-ne v6, v3, :cond_16

    .line 678
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 698
    :cond_16
    const v3, 0x7f0b057c

    if-ne v6, v3, :cond_17

    .line 700
    add-int/lit8 v1, v1, 0x1

    .line 701
    invoke-direct {p0, p1, v1}, Lcom/android/settings/SettingsTabActivity;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v1

    goto/16 :goto_1

    .line 703
    :cond_17
    const v3, 0x7f0b05b2

    if-ne v6, v3, :cond_18

    .line 705
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 707
    :cond_18
    const v3, 0x7f0b05a9

    if-ne v6, v3, :cond_19

    .line 709
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 711
    :cond_19
    const v3, 0x7f0b05d7

    if-ne v6, v3, :cond_1b

    .line 712
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 715
    :cond_1a
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 717
    :cond_1b
    const v3, 0x7f0b0581

    if-ne v6, v3, :cond_1d

    .line 718
    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 719
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 722
    :cond_1c
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "com.sec.android.cloudagent"

    const/4 v8, 0x5

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 723
    :catch_1
    move-exception v3

    .line 724
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 727
    :cond_1d
    const v3, 0x7f0b05bf

    if-ne v6, v3, :cond_1e

    .line 728
    if-nez v5, :cond_0

    .line 729
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 731
    :cond_1e
    const v3, 0x7f0b05c1

    if-ne v6, v3, :cond_1f

    .line 732
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 734
    const-string v7, "SPR"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "BST"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 736
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 738
    :cond_1f
    const v3, 0x7f0b05c0

    if-ne v6, v3, :cond_20

    .line 741
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "com.sprint.dsa"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move v3, v4

    .line 747
    :goto_3
    if-nez v3, :cond_0

    .line 748
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 742
    :catch_2
    move-exception v3

    move v3, v2

    .line 743
    goto :goto_3

    .line 750
    :cond_20
    const v3, 0x7f0b059e

    if-ne v6, v3, :cond_21

    .line 751
    const-string v3, "VZW"

    sget-object v7, Lcom/android/settings/SettingsTabActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 753
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 755
    :cond_21
    const v3, 0x7f0b059f

    if-ne v6, v3, :cond_22

    .line 756
    const-string v3, "DCM"

    sget-object v7, Lcom/android/settings/SettingsTabActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 759
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 761
    :cond_22
    const v3, 0x7f0b059c

    if-ne v6, v3, :cond_23

    .line 762
    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "mproject"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 763
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 765
    :cond_23
    const v3, 0x7f0b059d

    if-eq v6, v3, :cond_0

    .line 769
    const v3, 0x7f0b05a2

    if-ne v6, v3, :cond_24

    .line 771
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "com.sec.android.app.safetyassurance"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 772
    :catch_3
    move-exception v3

    .line 773
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 775
    :cond_24
    const v3, 0x7f0b058f

    if-ne v6, v3, :cond_27

    .line 778
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "android.hardware.nfc"

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v7, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v3, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 780
    :cond_25
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 784
    :cond_26
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "com.android.settings.nfcsummary"

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 785
    if-eqz v3, :cond_0

    .line 786
    iput-object v3, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 787
    const/4 v3, 0x0

    iput v3, v0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 789
    :catch_4
    move-exception v3

    .line 790
    const-string v3, "CSCAppRes"

    const-string v7, "No data for CSCAppResourceUri"

    invoke-static {v3, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 793
    :cond_27
    const v3, 0x7f0b0590

    if-ne v6, v3, :cond_29

    .line 795
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "android.hardware.nfc"

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v7, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v3, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 799
    :cond_28
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 801
    :cond_29
    const v3, 0x7f0b0592

    if-ne v6, v3, :cond_2a

    .line 804
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 806
    :cond_2a
    const v3, 0x7f0b0595

    if-ne v6, v3, :cond_2d

    .line 807
    const-string v3, "DCM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-direct {p0}, Lcom/android/settings/SettingsTabActivity;->isDocomoSettingsDisabled()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 808
    :cond_2b
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 812
    :cond_2c
    :try_start_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "com.nttdocomo.android.docomoset"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_1

    .line 813
    :catch_5
    move-exception v3

    .line 814
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 817
    :cond_2d
    const v3, 0x7f0b0580

    if-ne v6, v3, :cond_2f

    .line 818
    const-string v3, "DCM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 819
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 823
    :cond_2e
    :try_start_6
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "com.nttdocomo.android.cloudset"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_1

    .line 824
    :catch_6
    move-exception v3

    .line 825
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 830
    :cond_2f
    const v3, 0x7f0b0587

    if-ne v6, v3, :cond_30

    .line 831
    const-string v3, "VZW"

    sget-object v7, Lcom/android/settings/SettingsTabActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 832
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 835
    :cond_30
    const v3, 0x7f0b0596

    if-ne v6, v3, :cond_31

    .line 838
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 840
    :cond_31
    const v3, 0x7f0b05ce

    if-ne v6, v3, :cond_32

    .line 843
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 845
    :cond_32
    const v3, 0x7f0b05a3

    if-ne v6, v3, :cond_33

    .line 847
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 849
    :cond_33
    const v3, 0x7f0b0589

    if-ne v6, v3, :cond_34

    .line 852
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 854
    :cond_34
    const v3, 0x7f0b05a1

    if-ne v6, v3, :cond_35

    .line 855
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v7, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v3, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 857
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 859
    :cond_35
    const v3, 0x7f0b05a0

    if-eq v6, v3, :cond_0

    .line 864
    const v3, 0x7f0b05b1

    if-ne v6, v3, :cond_37

    .line 865
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsTabActivity;->getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-direct {p0}, Lcom/android/settings/SettingsTabActivity;->isVoiceControlEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 866
    :cond_36
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 868
    :cond_37
    const v3, 0x7f0b05d6

    if-ne v6, v3, :cond_38

    .line 870
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 872
    :cond_38
    const v3, 0x7f0b0591

    if-ne v6, v3, :cond_39

    .line 873
    const-string v3, "DMC_ONLY"

    const-string v7, "ALL"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 874
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 876
    :cond_39
    const v3, 0x7f0b05ab

    if-ne v6, v3, :cond_3a

    .line 877
    invoke-static {p0}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 878
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 880
    :cond_3a
    const v3, 0x7f0b05a7

    if-ne v6, v3, :cond_0

    .line 881
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v7, "CscFeature_Setting_EnableBrowserBar"

    invoke-virtual {v3, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eq v3, v4, :cond_0

    .line 882
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 905
    :cond_3b
    return-void

    :cond_3c
    move v0, v1

    goto/16 :goto_2
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1557
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1559
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "GuideFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/guide/GuideFragmentCallback;

    .line 1562
    if-eqz v0, :cond_2

    .line 1564
    invoke-interface {v0, p1}, Lcom/android/settings/guide/GuideFragmentCallback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1568
    :goto_0
    return v0

    .line 1564
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1568
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 1549
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 1550
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->invalidateHeaders()V

    .line 1551
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/16 v2, 0x1610

    .line 1612
    if-nez p1, :cond_2

    .line 1613
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1614
    instance-of v1, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 1615
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1616
    check-cast v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->setSoftapEnabled(Z)V

    .line 1631
    :cond_0
    :goto_0
    return-void

    .line 1618
    :cond_1
    check-cast v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 1623
    :cond_2
    const/16 v0, 0x160f

    if-ne p1, v0, :cond_0

    .line 1624
    if-ne p2, v2, :cond_0

    .line 1625
    const-string v0, "SettingsTapActivity"

    const-string v1, "Search direct back!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsTabActivity;->setResult(I)V

    .line 1627
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->finish()V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 1590
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 1592
    instance-of v0, p1, Lcom/android/settings/guide/GuideFragment;

    if-eqz v0, :cond_0

    .line 1593
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->setEnablerForGuide()V

    .line 1595
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1636
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1637
    sget-boolean v0, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    if-eqz v0, :cond_0

    .line 1638
    const/16 v0, 0x1610

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsTabActivity;->setResult(I)V

    .line 1639
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.FINISH_SETTING_SEARCH_MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsTabActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1642
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 1643
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v3, 0x7f070020

    .line 516
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 530
    invoke-virtual {p0, v3, p1}, Lcom/android/settings/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 533
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsTabActivity;->updateHeaderList(Ljava/util/List;)V

    .line 537
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 538
    iget-boolean v2, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    if-eqz v2, :cond_1

    .line 539
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 540
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    iget-wide v2, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    sget-wide v4, Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 541
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 552
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsTabActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 556
    .end local v0    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    .line 560
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 518
    :pswitch_0
    invoke-virtual {p0, v3, p1}, Lcom/android/settings/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    .line 521
    :pswitch_1
    const v2, 0x7f07002a

    invoke-virtual {p0, v2, p1}, Lcom/android/settings/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    .line 524
    :pswitch_2
    const v2, 0x7f070008

    invoke-virtual {p0, v2, p1}, Lcom/android/settings/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    .line 527
    :pswitch_3
    const v2, 0x7f070050

    invoke-virtual {p0, v2, p1}, Lcom/android/settings/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    .line 539
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 516
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 463
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v1

    .line 467
    const-class v0, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/SoundSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    :cond_0
    const-string v0, "settings:remove_ui_options"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 484
    :cond_1
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 486
    const-class v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 487
    const-class v0, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 489
    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    .line 490
    :cond_2
    const-string v0, "settings:guide_is_on"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 493
    :cond_3
    const/4 v0, 0x0

    .line 495
    if-eqz v2, :cond_6

    .line 496
    const-string v0, "wifi"

    .line 504
    :cond_4
    :goto_0
    const-string v2, "settings:guide_mode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    :cond_5
    const-class v0, Lcom/android/settings/SubSettings;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 508
    return-object v1

    .line 498
    :cond_6
    if-nez v3, :cond_7

    const-class v2, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 500
    :cond_7
    const-string v0, "bt"

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v3, 0x7f0b001e

    .line 386
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 387
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v2, -0x3

    .line 388
    .local v1, "mTextSize":I
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 389
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 390
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 391
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 393
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 394
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f0b001d

    const v10, 0x7f040008

    const/4 v9, 0x0

    const v8, 0x7f0b001e

    const/4 v7, 0x0

    .line 219
    sput-object p0, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    .line 221
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/SettingsTabActivity;->sSalesCode:Ljava/lang/String;

    .line 222
    new-instance v5, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v5}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 223
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v5, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 224
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v5, p0, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 226
    const-string v5, "development"

    invoke-virtual {p0, v5, v9}, Lcom/android/settings/SettingsTabActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 239
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/settings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 246
    .local v0, "bar":Landroid/app/ActionBar;
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 247
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 248
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 250
    const-string v5, "window"

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 251
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    add-int/lit8 v3, v5, -0x3

    .line 253
    .local v3, "mTextSize":I
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v10, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    .line 254
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f020238

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090aab

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 256
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 257
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    new-instance v6, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;

    invoke-direct {v6, p0, v7}, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsTabActivity;Lcom/android/settings/SettingsTabActivity$1;)V

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v10, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    .line 262
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f020239

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0901fa

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 264
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 265
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    new-instance v6, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;

    invoke-direct {v6, p0, v7}, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsTabActivity;Lcom/android/settings/SettingsTabActivity$1;)V

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v10, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    .line 270
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f020236

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0904de

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 272
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 273
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    new-instance v6, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;

    invoke-direct {v6, p0, v7}, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsTabActivity;Lcom/android/settings/SettingsTabActivity$1;)V

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v10, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    .line 278
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f02023b

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0902bf

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 280
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 281
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    new-instance v6, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;

    invoke-direct {v6, p0, v7}, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsTabActivity;Lcom/android/settings/SettingsTabActivity$1;)V

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 286
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 288
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "extra_from_search"

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    .line 289
    sget-boolean v5, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    if-eqz v5, :cond_1

    .line 290
    sget-boolean v5, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    iput-boolean v5, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    .line 291
    const-string v5, "extra_header_id"

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    sput-wide v5, Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J

    .line 292
    const-string v5, "extra_setting_value"

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/settings/SettingsTabActivity;->mSearchSettingValue:I

    .line 293
    const-string v5, "extra_fragment_bundle_key"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 294
    const-string v5, "extra_second_fragment_bundle_key"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 295
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 296
    const-string v5, "SettingsSearch"

    iget-object v6, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    const-string v7, "extra_parent_preference_key"

    const-string v8, "None"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    const-string v5, "extra_depth_counter_key"

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    .line 299
    iget v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    .line 300
    const-string v5, "extra_tab_id"

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 301
    .local v4, "tap_index":I
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 306
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "tap_index":I
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 362
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 364
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const v0, 0x7f0904e0

    invoke-interface {p1, v2, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201ae

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 369
    :cond_0
    return v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 442
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 443
    iget-boolean v0, p0, Lcom/android/settings/SettingsTabActivity;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 444
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 446
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1574
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1577
    .local v0, "retval":Z
    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x6f

    if-ne p1, v1, :cond_0

    .line 1581
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->finish()V

    .line 1582
    const/4 v0, 0x1

    .line 1585
    :cond_0
    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 450
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 452
    invoke-static {p0, p1}, Lcom/android/settings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 454
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->setEnablerForGuide()V

    .line 458
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 375
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 380
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 377
    :pswitch_0
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->callSearchMenu()V

    .line 378
    const/4 v0, 0x1

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 424
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 427
    .local v0, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 428
    check-cast v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->pause()V

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 433
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 438
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 398
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 400
    new-instance v1, Lcom/android/settings/SettingsTabActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsTabActivity$1;-><init>(Lcom/android/settings/SettingsTabActivity;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 406
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 410
    .local v0, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 411
    check-cast v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->resume()V

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->invalidateHeaders()V

    .line 420
    return-void
.end method

.method public setEnablerForGuide()V
    .locals 1

    .prologue
    .line 1603
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    if-eqz v0, :cond_0

    .line 1605
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->setEnablersForGuide(Lcom/android/settings/SettingsTabActivity;)V

    .line 1607
    :cond_0
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1538
    if-nez p1, :cond_0

    .line 1539
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1543
    :goto_0
    return-void

    .line 1541
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getHeaders()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setSearchHierarchyOpen(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1646
    iput-boolean p1, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    .line 1647
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleRes"    # I
    .param p6, "shortTitleRes"    # I

    .prologue
    const/4 v4, 0x1

    .line 311
    const-string v1, "SettingsSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SettingsTapActivity , mSearchDepthCounter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-boolean v1, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    if-eqz v1, :cond_3

    .line 313
    if-nez p2, :cond_0

    .line 314
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "args":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 316
    .restart local p2    # "args":Landroid/os/Bundle;
    :cond_0
    const-string v1, "extra_from_search"

    invoke-virtual {p2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 318
    iget v1, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    if-le v1, v4, :cond_2

    .line 319
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 328
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/settings/SettingsTabActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 329
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 330
    const-string v1, "extra_depth_counter_key"

    iget v2, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    const-string v1, "extra_second_fragment_bundle_key"

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 332
    const/16 v1, 0x160f

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 333
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    .line 337
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 324
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    .line 335
    :cond_3
    invoke-super/range {p0 .. p6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    goto :goto_1
.end method
